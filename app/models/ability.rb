class Ability
  include CanCan::Ability

  def initialize(user)
    return if user.nil?
    if user.admin?
      admin_permissions
    elsif user.staff?
      staff_permissions
    else
      custumer_permissions
    end
  end

  private

  def admin_permissions
    can :manage, User
    can :manage, Address
  end

  def staff_permissions
    can :read, User
    can :manage, Address
  end

  def custumer_permissions
    can :read, Address
  end
end
