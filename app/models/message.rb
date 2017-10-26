class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :content, presence: true

  after_commit { BroadcastMessageJob.perform_later self }
end
