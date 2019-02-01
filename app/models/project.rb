class Project < ApplicationRecord
  has_many :proposes, dependent: :destroy
  accepts_nested_attributes_for :proposes, allow_destroy: true
  has_one :chat, dependent: :destroy
  accepts_nested_attributes_for :chat, allow_destroy: true
  has_many :dialogs, dependent: :destroy
  accepts_nested_attributes_for :dialogs, allow_destroy: true
  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true
  belongs_to :industry, optional: true
  enum status: [:waiting, :approved, :finished, :rejected]
  has_many :dialogs, dependent: :destroy
  accepts_nested_attributes_for :dialogs, allow_destroy: true
  has_many :speeches, dependent: :destroy
  accepts_nested_attributes_for :speeches, allow_destroy: true
end
