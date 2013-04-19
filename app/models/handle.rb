class Handle < ActiveRecord::Base
  attr_accessible :material, :parapluie_id

  belongs_to :parapluie
end
