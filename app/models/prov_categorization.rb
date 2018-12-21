class ProvCategorization < ApplicationRecord
  belongs_to :providers, optional: true
  belongs_to :categories, optional: true
end
