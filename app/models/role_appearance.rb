class RoleAppearance < ApplicationRecord
  belongs_to :role
  belongs_to :rehearsal_block
end
