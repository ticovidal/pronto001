class Profile < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :profileable, polymorphic: true, optional: true
  has_one :adress
  accepts_nested_attributes_for :adress, allow_destroy: true
end
