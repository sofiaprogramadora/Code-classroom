class User < ApplicationRecord
  rolify
  has_many :user_tutorials

	attr_accessor :roles_mask

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %i[admin normal guest]

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
    has_role?(:admin)
  end

  def roles_mask=()
  end
end