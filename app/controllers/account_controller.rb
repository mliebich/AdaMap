class AccountController < ApplicationController

  def learningmap
    @goals = current_user.tasks
    @active_layer = params[:active_layer]
    console
  end

  def goals
    @goals = current_user.tasks
  end

end
