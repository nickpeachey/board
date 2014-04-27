class CreateLblColours < ActiveRecord::Migration
  def change
    create_table :lbl_colours do |t|
      t.string :name

      t.timestamps
    end
  end
end
