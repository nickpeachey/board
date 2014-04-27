class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :lblColour_id
      t.string :title
      t.integer :position
      t.integer :sprint_board_id

      t.timestamps
    end
  end
end
