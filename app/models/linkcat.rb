class Linkcat < ApplicationRecord
  belongs_to :provider, optional: true
  belongs_to :subcategory, optional: true
end
