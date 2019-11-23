class Scene < ApplicationRecord
  belongs_to :act
  has_many :rehearsal_blocks

end
