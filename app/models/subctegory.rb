class Subctegory < ApplicationRecord
  belongs_to :category, optional: true
end
