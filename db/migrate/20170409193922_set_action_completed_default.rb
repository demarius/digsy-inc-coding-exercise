class SetActionCompletedDefault < ActiveRecord::Migration
  def change
      change_column_default :agent_actions, :completed, false
  end
end
