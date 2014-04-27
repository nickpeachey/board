class Card < ActiveRecord::Base
  attr_accessible :lblColour_id, :position, :sprint_board_id, :title
  belongs_to :sprint_board
end
