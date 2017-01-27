Rails.application.routes.draw do
	get 'new/todos/modal', to: 'todos#new_modal', :as => :new_modal
	get 'edit/todos/modal', to: 'todos#edit_modal', :as => :edit_modal
	resources :todos
	root 'static_pages#home'
	get  '/about',   to: 'static_pages#about'
	get '/todos', 	  to: 'todos#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
