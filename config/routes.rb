Rails.application.routes.draw do
	resources :photos, only: [:index, :new, :create, :destroy]
	
  	# application
  	root 'photos#application'
	get '/about' => 'photos#application'
	get '/contactme' => 'photos#application'
	get '/series/:series', to: 'photos#series'
	get 'photos/destroy/:id', to: 'photos#destroy'
end
