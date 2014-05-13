class TodosController < ApplicationController
  respond_to :json

  def index
    respond_with Todo.all
  end

  def create
    respond_with Todo.create(todo_params), location: nil
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
