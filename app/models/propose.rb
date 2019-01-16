class Propose < ApplicationRecord
  belongs_to :provider, optional: true
  belongs_to :project, optional: true
end
