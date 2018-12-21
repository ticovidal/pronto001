class Subcat < ApplicationRecord
  belongs_to :subcategory
  belongs_to :provider
end
