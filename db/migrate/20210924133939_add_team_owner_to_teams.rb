class AddTeamOwnerToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :team_owner, :string
  end
end
