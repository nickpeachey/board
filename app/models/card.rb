class Card < ActiveRecord::Base
  attr_accessible :lblColour_id, :position, :sprint_board_id, :title, :column_id
  belongs_to :sprint_board
  belongs_to :column


  def after_initialize
    return unless new_record?
    self.column_id = 1
  end


end
