class TodosController < ApplicationController
	def index 
		@todos = Todo.all
	end

	def show
		@todo = Todo.new
		respond_to do |format|
	    	format.html
	    	format.js
	  	end
	end 

	def new 
		@todo = Todo.new
	end 

	def create 
		@todo = Todo.create(todo_params)
		redirect_to todos_path
	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update 
		@todo = Todo.find(params[:id])
		@todo.update(todo_params)
		redirect_to todos_path
	end

	def destroy
  		@todo = Todo.find(params[:id])
  		@todo.destroy
  		redirect_to todos_path
	end

	def modal 
		@todo = Todo.new
		respond_to do |format|
	    	format.html
	    	format.js
	  	end
	end

	private 

	def todo_params
		params.require(:todo).permit(:item)
	end

end
