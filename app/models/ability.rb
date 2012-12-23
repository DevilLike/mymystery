class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role? :administrator
      can :manage, :all
    elsif user.role? :manager
      can :manage, Car
      can :manage, Deal
    else
      can :read, :all
    end
  end

end