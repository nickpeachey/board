class AddColourCssToLblColour < ActiveRecord::Migration
  def change
    add_column :lbl_colours, :css_colour, :string
  end
end
