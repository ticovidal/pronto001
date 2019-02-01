class Propose < ApplicationRecord
  belongs_to :provider, optional: true
  belongs_to :project, optional: true
  enum status: [:waiting, :approved, :reopened, :finished, :rejected]
  has_one :dialog, dependent: :destroy
  accepts_nested_attributes_for :dialog, allow_destroy: true
   has_many :speeches, dependent: :destroy
  accepts_nested_attributes_for :speeches, allow_destroy: true
end
