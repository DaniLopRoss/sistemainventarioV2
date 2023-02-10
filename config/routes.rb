Rails.application.routes.draw do
  resources :departaments

  resources :rooms
  resources :area1s
  resources :departamento1s
  resources :reportes
  resources :solicituds
  resources :mantenimientos
  resources :equipo12
  resources :equipo12s
  resources :departamentos



  resources :herramienta


  resources :areas
  

  resources :insumos
  resources :materiales
  resources :marcas
  resources :tipos
  resources :licencia
  devise_for :usuarios, controllers: {
    usuarios: :sessions
  }

  resources :usuarios
  get 'usuarios', to: 'usuarios#new' 
  root  'home#index'


    #devise_scope :usuario do                                                                
   #delete '/usuario/sign_out' => 'devise/sessions#destroy'       
 #end
end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



