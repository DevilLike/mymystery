class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role? :administrator
      can :manage, :all
    elsif user.role? :manager
      can :manage, Car
      can :manage, Deal
      can :manage, Request
      can :manage, Request
    else
      can :read, Car
      can :manage, Request
    end
  end

end