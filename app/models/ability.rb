class Ability
  include CanCan::Ability

  def initialize(user=nil)
    role = user ? user.role : nil

    case role
    when 'admin'
      can :manage, :all
    when 'developer'
      can :read, :all
      can :update, Project do |p|
        p && p.user == user
      end
    else
      can :read, [User, Project]
    end
  end

end
