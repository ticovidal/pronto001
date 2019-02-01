class Profile < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :profileable, polymorphic: true, optional: true
  has_one :adress
  accepts_nested_attributes_for :adress, allow_destroy: true
  has_many :dialogs, dependent: :destroy
  accepts_nested_attributes_for :dialogs, allow_destroy: true
  has_many :speeches, dependent: :destroy
  accepts_nested_attributes_for :speeches, allow_destroy: true
end
