class Industry < ApplicationRecord
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, allow_destroy: true
  has_one :profile, as: :profileable
  accepts_nested_attributes_for :profile, allow_destroy: true
  has_one :enterprise, as: :enterpriseable
  accepts_nested_attributes_for :enterprise, allow_destroy: true
  belongs_to :category, optional: true
end
