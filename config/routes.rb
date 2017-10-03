Rails.application.routes.draw do
  	devise_for :users
  	resources :photos, only: [:new, :create, :index, :destroy]

  	# application
	root 'photos#application'
	# admin login
	get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
	# admin photo uploading
	get '/photos/destroy/:id' => 'photos#destroy'
	get '/about' => 'photos#application'
	get '/contactme' => 'photos#application'
	get '/series/:series', to: 'photos#series'
end
