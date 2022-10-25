Rails.application.routes.draw do
  
	root "posts#index"
	
	#Basic Authentication (Login)
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
	
	get "login", to:"sessions#new"
	post "login", to:"sessions#create"
	post "logout", to:"sessions#destroy"
	#************************************************
	
	resources :posts
  
 
end
