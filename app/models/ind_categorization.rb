class IndCategorization < ApplicationRecord
  belongs_to :industry, optional: true
  belongs_to :category, optional: true
end
