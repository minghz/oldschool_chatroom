class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room:#{params['room_id']}:messages"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
