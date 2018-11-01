Rails.application.routes.draw do
  
  
	root to: 'static_page#home'
	# get '/', to: 'static_page#home'
  resources :gossips do 
  	resources :comments
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/gossips/:id', to: 'comments#create'

end