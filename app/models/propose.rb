class Propose < ApplicationRecord
  belongs_to :provider, optional: true
  has_one :profile, :through => :provider
  belongs_to :project, optional: true
end
