class SprintBoard < ActiveRecord::Base
  attr_accessible :icon, :position, :summary, :title
  has_many :cards
end
