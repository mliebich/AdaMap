class MoveRememberTokenFromUsersToActiveSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :active_sessions, :remember_token, :string, null: false

    add_index :active_sessions, :remember_token, unique: true
  end
end
