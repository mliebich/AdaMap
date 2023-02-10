class UsersController < ApplicationController
  include RolesHelper
  before_action :authenticate_user!, only: %i[ destroy edit index]
  before_action :ensure_admin, only: %i[edit]
  before_action :set_user, only: %i[ destroy ]

  def index
    if current_user.has_role? :admin
      @users = User.all
    else
      redirect_to account_goals_path, alert: 'Not authorized'
    end
    console
  end

  def create
    @user = User.new(create_user_params)
    if @user.save
      @user.send_confirmation_email!
      redirect_to root_path, notice: "Please check your email for confirmation instructions."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def edit
    @user = current_user
    if current_user.has_role? :admin
      @active_sessions = @user.active_sessions.order(created_at: :desc)
    end
  end

  def new
    @user = User.new
  end

  def update
    @user = current_user
    @active_sessions = @user.active_sessions.order(created_at: :desc)
    respond_to do |format|
      if @user.update(update_user_params)
        format.html { redirect_to users_path, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
    console
  end

  def create_user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

  def update_user_params
    params.require(:user).permit(:name, :email, {role_ids: []}, :current_password, :password, :password_confirmation, :unconfirmed_email)
  end
end
