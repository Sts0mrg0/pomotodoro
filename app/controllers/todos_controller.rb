class TodosController < ApplicationController
  before_filter :require_signed_in!

  def index
    @todos = Todo.all

  end

  def show
    @todo = Todo.find(params[:id])

  end

  def new
    @todo = Todo.new

  end

  def increment
    @todo = current_user.todos.find(params[:id])
    @todo.pomodoros += 1
    @todo.save
    redirect_to todo_url(@todo)
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    if @todo.save
      redirect_to todos_url(@todo)
    else
      flash.now[:errors] = @todo.errors.full_messages
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = current_user.todos.find(params[:id])
    if @todo.update_attributes(todo_params)
      redirect_to todo_url(@todo)
    else
      flash.now[:errors] = @todo.errors.full_messages
      render :edit
    end
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to todos_url
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :body)
  end
end
