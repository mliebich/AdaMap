class AccountController < ApplicationController
  def learningmap
    @goals = current_user.goals

  end
  def goals
    @goals = current_user.goals

  end
end
