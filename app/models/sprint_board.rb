class SprintBoard < ActiveRecord::Base
  attr_accessible :icon, :position, :summary, :title
  has_many :cards
  has_many :columns
end
