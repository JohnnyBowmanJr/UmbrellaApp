class Parapluie < ActiveRecord::Base
  attr_accessible :colour, :foldable, :handle_type

  has_many :handles

  validates :colour,  :presence => true
end
