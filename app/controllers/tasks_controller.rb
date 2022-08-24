class TasksController < ApplicationController

  def home
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id]) ##############
  end

  def create
  end

  def update
  end

  def destroy
  end

end

# # Read one - The `show` route needs to be *after* `new` route.
# get "tasks/:id", to: "tasks#show", as: :task
