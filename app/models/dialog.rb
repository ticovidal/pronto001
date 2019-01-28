class Dialog < ApplicationRecord
  belongs_to :chat, optional: true
  belongs_to :propose, optional: true
  belongs_to :project, optional: true
end
