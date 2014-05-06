class AddDateAddedToCard < ActiveRecord::Migration
  def change
    add_column :cards, :date_added, :datetime
    add_column :cards, :column_id, :integer
  end
end
