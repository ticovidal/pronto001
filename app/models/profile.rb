class Profile < ApplicationRecord
  has_many :industries, dependent: :destroy
  accepts_nested_attributes_for :industries, allow_destroy: true
  has_many :providers, dependent: :destroy
  accepts_nested_attributes_for :providers, allow_destroy: true
  belongs_to :user, optional: true
end
