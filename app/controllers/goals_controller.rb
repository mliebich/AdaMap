class GoalsController < ApplicationController

  def index
    @goals = Task.all
    @goal_reviewed = current_user.task_progresses.find_by_task_id(@task.id).passed
    console
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

  def addgoal
    goal = Task.find(params[:id])
    @user = User.find(params[:userid])
    if params[:checked] == false
      @user.tasks.delete(goal)
    else
      @user.tasks << goal
    end
  end

  def setstatus
    @user = User.find(params[:userid])
    goal = @user.task_progresses.find_by_task_id(params[:id])
    goal.done = params[:completed]
    goal.save!
    redirect_to account_goals_path
  end

  def setpassed
    @user = User.find(params[:userid])
    goal = @user.task_progresses.find_by_task_id(params[:id])
    goal.passed = params[:reviewed]
    goal.save!
    redirect_to account_goals_path
    console
  end
end
