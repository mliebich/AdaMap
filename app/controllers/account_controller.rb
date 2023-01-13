class AccountController < ApplicationController

  def learningmap
    @goals = current_user.tasks
    console
  end

  def goals
    @goals = current_user.tasks
    console
  end

end
