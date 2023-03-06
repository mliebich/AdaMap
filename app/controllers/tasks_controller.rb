class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    if current_user.has_role? :admin
      @tasks = Task.all.with_rich_text_content
    else
      redirect_to account_goals_path, alert: "Not authorized"
    end
    console
  end

  # GET /tasks/1 or /tasks/1.json
  def show
    @task = Task.find(params[:id])
    @user = current_user
    @goal_added = current_user.tasks.exists?(@task.id)
    if current_user.tasks.exists?(@task.id) == true
      @goal_finished = current_user.task_progresses.find_by_task_id(@task.id).done
    end
    @style = "bg-white"
    @style2 = "bg-blue"
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = Task.new(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_url(@task), notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to tasks_url, notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
    console
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:title, :content, :status, {prerequisite_id: []}, :level)
  end
end
