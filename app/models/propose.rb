class Propose < ApplicationRecord
  belongs_to :provider, optional: true
  belongs_to :project, optional: true
  enum status: [:waiting, :approved, :reopened, :finished, :rejected]
  has_many :dialogs, dependent: :destroy
  accepts_nested_attributes_for :dialogs, allow_destroy: true
end
