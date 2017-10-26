class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "room:#{message.room.id}:messages",
      sent_by: message.user.email,
      message: message
  end
end
