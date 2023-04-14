Rails.application.routes.draw do
  resources :reportesistemas
  resources :maintenances
  resources :equipment
  resources :resources
  resources :tools
  resources :physicals
  resources :shapes
  resources :licences
  resources :brands
  resources :departaments
  resources :zones
  resources :reportes
  resources :solicituds
  resources :reportesistema
  

  devise_for :usuarios, controllers: {
    usuarios: :sessions 
  }, confirmations: 'users/confirmations'
  
  resources :departamentos
  resources :licencia
  
  resources :usuarios
  get 'usuarios', to: 'usuarios#new'  

  resources :tipos
  root  'home#index'

# config/routes.rb

get '/reportesperiodo', to: 'reportesistemas#reportesperiodo'

get '/reportesolicitud', to: 'reportesistemas#reportesolicitud'
get '/reportestipo', to: 'reportesistemas#reportestipo'

end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



