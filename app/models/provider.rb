class Provider < ApplicationRecord
  has_many :proposes, dependent: :destroy
  accepts_nested_attributes_for :proposes, allow_destroy: true
  belongs_to :profile, optional: true
end
