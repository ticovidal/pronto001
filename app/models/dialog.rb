class Dialog < ApplicationRecord
  belongs_to :chat, optional: true
  belongs_to :propose, optional: true
  belongs_to :project, optional: true
  belongs_to :profile, optional: true
  belongs_to :provider, optional: true
  has_many :speeches, dependent: :destroy
  accepts_nested_attributes_for :speeches, allow_destroy: true
end
