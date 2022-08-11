class GoalsController < ApplicationController
  def create
    task = Task.find(params[:task_id])
    current_user.goals << task
    redirect_to goal_path(task)
    console
  end
end
