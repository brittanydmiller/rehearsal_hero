class RehearsalBlock < ApplicationRecord
  belongs_to :scene
  has_many :roles, through :role_appearances

end
