class TodosController < ApplicationController
	def index 
		@todos = Todo.all
	end

	def new 
		@todo = Todo.new
	end 

	def create 
		@todo = Todo.create(todo_params)
		redirect_to todos_path
	end

	private 

	def todo_params
		params.require(:todo).permit(:item)
	end


	def edit
		@todo = Todo.find(params[:id])
	end

  def update
 	respond_to do |format|
   if @todo.update(todo_params)
     format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
     format.json { render :show, status: :ok, location: @todo }
   else
     format.html { render :edit }
     format.json { render json: @todo.errors, status: :unprocessable_entity }
   end
 end
end

	def destroy
  		@todo = Todo.find(params[:id])
  		@todo.destroy
	end

end
