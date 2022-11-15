# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(usuarios)
   
  
     usuarios ||= Usuarios.new
      if usuarios.admin?
        can :manage, :all
      else 
        can :update, Departamento do |departamentos|
        departamentos.usuarios == usuario
       end
       can :destroy, Departamento do |departamentos|
        departamentos.usuario == usuario
       end 
       can :update, Equipos do |equipos|
        departamentos.usuario == usuario
       end
       can :destroy, Equipos do |equipos|
        departamentos.usuario == usuario
       end 
       can :create, Departamento
       can :create, Equipo
       can :read, :all
      
     end
    end 
  
end 
      
  

