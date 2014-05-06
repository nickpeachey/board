class Column < ActiveRecord::Base
  attr_accessible :position, :title, :sprint_board_id
  has_many :cards
  belongs_to :sprint_board
end
