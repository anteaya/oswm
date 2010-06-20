class Ability
  include CanCan::Ability

  def initialize(user=nil)
    role = user ? user.role : nil

    case role
    when 'admin'
      can :manage, :all
    when 'developer'
      can :read, :all
      
      can :create, Project
      can :update, Project do |p|
        p && p.user == user
      end
      can :destroy, Project do |p|
        p && p.user == user
      end

      can :update, User do |u|
        u && user == u
      end
    else
      can :read, [User, Project]
    end
  end

end
