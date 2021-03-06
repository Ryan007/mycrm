class Ability
  include CanCan::Ability

  def initialize(user)
    user.roles.each do |role|
        role.permissions.each do |permission|
          if permission.subject_id.nil?
            if permission.subject_class == 'all'
              can permission.action.to_sym, :all
            else
              can permission.action.to_sym, permission.subject_class.constantize
            end
            
          else
            if permission.subject_class == 'all'
              can permission.action.to_sym, :all
            else
              can permission.action.to_sym, permission.subject_class.constantize, :id => permission.subject_id
            end
          end
        end
    end
    # 这里注意,角色定义必须为因为驼峰式 比如'super_admin'的角色名应该为'SuperAdmin'
    # if user.role? :super_admin
    #   can :manage, :all
    # else
    #   can :read, :all
    # end    
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
