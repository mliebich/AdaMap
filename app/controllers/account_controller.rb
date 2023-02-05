class AccountController < ApplicationController

  def learningmap
    @goals = current_user.tasks
    if params[:active_layer] == nil
      @active_layer = "basics"
    else
      @active_layer = params[:active_layer]
    end
    console
  end

  def goals
    @goals = current_user.tasks
  end

end
