class Script < ApplicationRecord
  belongs_to :production
  has_many :acts
  has_many :scenes, through :acts
  has_many :roles
end
