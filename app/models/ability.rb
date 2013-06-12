class AdminAbility
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new
 
    if user.role?('admin')
      can :create, User
    end
 
    if user.role?('client')
      can :view, User
    end
  end
end