class TasksController < ApplicationController
  def index
    # todo
    @tasks = Task.all
  end
end
