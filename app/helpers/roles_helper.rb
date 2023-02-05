module RolesHelper

  def ensure_admin
    return if current_user.has_role? :admin
    redirect_to(account_goals_path)
  end

end
