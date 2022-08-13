class AccountController < ApplicationController
  def goals
    @goals = current_user.goals
    console
  end
end
