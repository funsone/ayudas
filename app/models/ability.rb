class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    # user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
       can :manage, :all
    elsif user.has_role? :discapacidad
       alias_action :create, update: :cu
       alias_action :new, :create, :edit, update: :ceu
       can :manage, Solicitante
       can :manage, Beneficiario
       can :manage, Solicitud
       cannot :cu, Departamento
       cannot :cu, Ayuda
    elsif user.has_role? :ninos
      can :manage, Solicitante
      can :manage, Beneficiario
      can :manage, Solicitud
      cannot :cu, Departamento
      cannot :cu, Ayuda
    elsif user.has_role? :adultos
      can :manage, Solicitante
      can :manage, Beneficiario
      can :manage, Solicitud
      cannot :cu, Departamento
      cannot :cu, Ayuda
    elsif user.has_role? :admon
      can :read, :all
    end
    #
    # The first argument to `can` is the action you are giving the users
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
