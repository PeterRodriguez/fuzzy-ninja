class User < ActiveRecord::Base

  scope :admins, lambda{ where("role", "admin") }
  scope :clients, lambda{ where("role", "client") }

  has_many :number_ranges, :dependent => :destroy


  devise :database_authenticatable, :recoverable,:rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role


  ROLES = %w[admin client reseller]

  def role?(base_role)
    return false unless role # A user have a role attribute. If not set, the user does not have any roles.
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

  def ability
    @ability ||= Ability.new(self)
  end
  delegate :can?, :cannot?, :to => :ability

end

