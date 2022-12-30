class GoalsController < ApplicationController
  def index
    @goals = Task.all
  end

  def create
    goal = Task.find(params[:task_id])
    current_user.tasks << goal
    flash[:notice] = "Goal successfully added"
    redirect_to account_learningmap_path
  end

  def destroy
    goal = Task.find(params[:task_id])
    current_user.tasks.delete(goal)
    flash[:notice] = "Goal successfully removed"
    redirect_to account_goals_path
  end

  def setstatus
    goal = current_user.task_progresses.find_by(task_id:params[:task_id])
    goal.update(done: 1)
  end

end
