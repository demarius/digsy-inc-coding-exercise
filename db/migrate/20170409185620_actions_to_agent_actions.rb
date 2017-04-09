class ActionsToAgentActions < ActiveRecord::Migration
  def change
    rename_table :actions, :agent_actions
  end
end
