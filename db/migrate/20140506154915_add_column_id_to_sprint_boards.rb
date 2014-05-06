class AddColumnIdToSprintBoards < ActiveRecord::Migration
  def change
    add_column :columns, :sprint_board_id, :integer
  end
end
