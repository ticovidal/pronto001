class Propose < ApplicationRecord
  belongs_to :provider, optional: true
  belongs_to :project, optional: true
  enum status: [:waiting, :approved, :reopened, :finished, :rejected]
end
