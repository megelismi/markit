Rails.application.routes.draw do
	resources :todos
	root 'static_pages#home'
	get  '/about',   to: 'static_pages#about'
	get '/todos', 	  to: 'todos#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
