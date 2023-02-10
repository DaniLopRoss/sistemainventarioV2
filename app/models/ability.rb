# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(usuarios)
   
  
    usuarios ||= Usuario.new
      if usuarios.admin = 0

       can :manage, :all
      
      elsif usuarios.admin == 1
       alias_action :create, :read, :update, :to => :cru
       can :cru, Solicitud
       can :cru, Equipo12 
       can :cru, Mantenimiento
       can :cru, Reporte 
       can :cru, Licencias
       can :cru, Tipos
       can :cru, Marcas
       can :cru, Insumo
       can :cru, Materiale

      elsif usuarios.admin == 2
       alias_action :create, :read, :update, to => :cru
       can :cru, Solicitud
       
     end 
   end
  
end
