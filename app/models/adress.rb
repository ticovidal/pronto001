class Adress < ApplicationRecord
  belongs_to :profile, optional: true
end
