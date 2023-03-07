class AccountController < ApplicationController
  include RolesHelper
  before_action :authenticate_user!

  def learningmap
    @goals = current_user.tasks
    if params[:active_layer] == nil
      @active_layer = "basics"
    else
      @active_layer = params[:active_layer]
    end
  end

  def goals
    @goals = current_user.tasks
    @user = current_user
    if current_user.has_role? :admin
      set_user
      @goals = @user.tasks
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

end
