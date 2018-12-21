class Enterprise < ApplicationRecord
  belongs_to :enterpriseable, polymorphic: true, optional: true
end
