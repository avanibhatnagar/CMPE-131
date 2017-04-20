class TaskController < ApplicationController
  def new
  	@task = Task.new
  end
end
