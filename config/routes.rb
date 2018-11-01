Rails.application.routes.draw do


	root to: 'static_page#home'
	# get '/', to: 'static_page#home'
  resources :gossips do
  	resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get 'users/registration', to: 'users#registration'
  post 'users/registration', to: 'users#check'
  # post '/gossips/:id', to: 'comments#create'
  # get '/users/new', to: 'users#new'
  # post '/users', to: 'users#create'
  # get '/users', to: 'users#index'
end
