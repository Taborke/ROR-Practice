class Ability
  include CanCan::Ability

  def initialize(blogger)
    blogger ||= Blogger.new # guest user

    if blogger.role?(:admin)
      can :manage, :all
    else
      can :read, :all
      can :create, Entry
      can :update, Entry do |entry|
        entry.try(:blogger) == blogger || blogger.role?(:moderator)
      end
      if blogger.role?(:author)
        can :create, Entry
        can :update, Entry do |entry|
          entry.try(:blogger) == blogger
        end
      end
    end
  end
end