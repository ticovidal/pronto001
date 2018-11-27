class Industry < ApplicationRecord
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, allow_destroy: true
  belongs_to :profile, optional: true
end
