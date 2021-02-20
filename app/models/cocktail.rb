class Cocktail < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  has_many :garnish_tags, dependent: :destroy
  has_many :garnishes, through: :garnish_tags

  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true
end
