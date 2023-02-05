class GoalsController < ApplicationController

  def index
    @goals = Task.all
    @goal_reiewed = current_user.task_progresses.find_by_task_id(@task.id).passed
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
    goal = current_user.task_progresses.find_by_task_id(params[:id])
    goal.done = params[:completed]
    goal.save!
  end

  def setpassed
    goal = current_user.task_progresses.find_by_task_id(params[:id])
    goal.passed = params[:reviewed]
    goal.save!
  end
end
