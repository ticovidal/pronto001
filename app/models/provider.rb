class Provider < ApplicationRecord
  has_many :proposes, dependent: :destroy
  accepts_nested_attributes_for :proposes, allow_destroy: true
  has_one :profile, as: :profileable
  accepts_nested_attributes_for :profile, allow_destroy: true
  has_one :enterprise, as: :enterpriseable
  accepts_nested_attributes_for :enterprise, allow_destroy: true
  has_many :linkcats
  has_many :subcategories, through: :linkcats
end
