class User < ApplicationRecord
  rolify
  has_many :user_tutorials

	attr_accessor :roles_mask

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  ROLES = %i[admin normal guest]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(name: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
  end

  def roles=(roles)
    roles = [*roles].map { |r| r.to_sym }
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def has_role?(role)
    roles.include?(role)
  end

  def current_role
  	:admin if has_role?("admin")
  	:normal if has_role?("normal")
  	:guest if has_role?("guest")
  end

  def admin?
    self.role == "admin"
  end

  def roles_mask=(a)
  end

  def self.find_for_google_oauth(auth)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    # The User was found in our database
    return user if user
    # Check if the User is already registered without Google
    user = User.where(email: auth.info.email).first
    return user if user
    User.create(
    name: auth.extra.raw_info.name,
    provider: auth.provider, uid: auth.uid,
    email: auth.info.email,
    password: Devise.friendly_token[0,20])
  end
end