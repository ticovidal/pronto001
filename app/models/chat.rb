class Chat < ApplicationRecord
  belongs_to :project, optional: true
  has_many :dialogs, dependent: :destroy
  accepts_nested_attributes_for :dialogs, allow_destroy: true
end
