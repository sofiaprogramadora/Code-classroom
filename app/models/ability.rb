class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new(roles: 'guest') # guest user (not logged in)
    if user.role == "admin"
      can :manage, :all
    elsif user.role == "normal"
        can :read, UserTutorial
        can :update, UserTutorial, user_id: user.id
        can :destroy, UserTutorial, user_id: user.id
        can :create, UserTutorial
    else
        cannot :manage, :all
        can :read, :all
    end

    # can :read, :all

    # case user.current_role

    #     when 'admin'
    #         can :manage, :all
    #         can :create, UserTutorial


    #     when 'normal'
    #         can :read, UserTutorial
    #         cannot :update, UserTutorial unless UserTutorial.creator == current_user
    #         cannot :destroy, UserTutorial unless UserTutorial.creator == current_user
    #         can :create, UserTutorial

    #     when 'guest'
    #         cannot [:update, :destroy, :create], UserTutorial
    #         can :read
    #     # ... other roles and abilities ...
    # end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
