class GarnishTag < ApplicationRecord
  belongs_to :garnish
  belongs_to :cocktail
  validates :garnish, uniqueness: { scope: :cocktail }
end
