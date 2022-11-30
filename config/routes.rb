Rails.application.routes.draw do
  resources :insumos
  resources :herramienta
  resources :materiales
  
  resources :equipos1s
  resources :areas
  resources :marcas
 
  
  devise_for :usuarios

  resources :departamentos
  resources :licencia
  resources :equipos
  resources :usuarios
  get 'usuarios', to: 'usuarios#new'

  resources :tipos
  root  'home#index'


    #devise_scope :usuario do                                                                
   #delete '/usuario/sign_out' => 'devise/sessions#destroy'       
 #end
end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



