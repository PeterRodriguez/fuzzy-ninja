class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable,:rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me
  ROLES = %w[admin moderator author banned]

  def role?(base_role)
    return false unless role # A user have a role attribute. If not set, the user does not have any roles.
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
  
end

