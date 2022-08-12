class AccountController < ApplicationController
  def tasks
    @tasks = Task.all
  end
end
