class Speech < ApplicationRecord
  belongs_to :profile, optional: true
  belongs_to :propose, optional: true
  belongs_to :project, optional: true
  belongs_to :dialog, optional: true
end
