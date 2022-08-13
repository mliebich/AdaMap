class GoalsController < ApplicationController
  def create
    goal = Task.find(params[:task_id])
    current_user.goals << goal
    redirect_to goal_path(goal)
    console
  end
  def destroy
    goal = Task.find(params[:task_id])
    current_user.goals.delete(goal)
    flash[:notice] = "Goal successfully removed"
    redirect_to account_goals_path
  end
end
