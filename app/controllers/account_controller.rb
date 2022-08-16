class AccountController < ApplicationController
  def learningmap
    @goals = current_user.goals
    console
  end
  def goals
    @goals = current_user.goals
    console
  end
end
