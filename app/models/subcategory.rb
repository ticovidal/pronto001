class Subcategory < ApplicationRecord
  belongs_to :category, optional: true
  has_many :linkcats
  has_many :providers, through: :linkcats
end
