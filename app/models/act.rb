class Act < ApplicationRecord
  belongs_to :script
  has_many :scenes
  has_many :roles, through :role_appearances
end
