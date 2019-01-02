class Subcategory < ApplicationRecord
  belongs_to :category, optional: true
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, allow_destroy: true
  has_many :linkcats
  has_many :providers, through: :linkcats
end
