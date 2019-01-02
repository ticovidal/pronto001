class Project < ApplicationRecord
  has_many :proposes, dependent: :destroy
  accepts_nested_attributes_for :proposes, allow_destroy: true
  belongs_to :category, optional: true
  belongs_to :category, optional: true
  belongs_to :industry, optional: true
end
