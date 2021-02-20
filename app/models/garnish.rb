class Garnish < ApplicationRecord
  has_many :garnish_tags, dependent: :destroy
  has_many :cocktails, through: :garnish_tags
  validates :name, presence: true, uniqueness: true
end
