class CreateSprintBoards < ActiveRecord::Migration
  def change
    create_table :sprint_boards do |t|
      t.string :title
      t.integer :position
      t.string :icon
      t.string :summary

      t.timestamps
    end
  end
end
