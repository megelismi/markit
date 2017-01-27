Rails.application.routes.draw do
	get '/todos/modal', to: 'todos#modal', :as => :modal
	resources :todos
	root 'static_pages#home'
	get  '/about',   to: 'static_pages#about'
	get '/todos', 	  to: 'todos#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
