class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.kind == 'company'
        can :access, :rails_admin
        can :dashboard
        can :read, Category
        can :read, User
        can :manage, Office, user_id: user.id
      elsif user.kind == 'manager'
        can :manage, :all
      end
    end
  end
end
