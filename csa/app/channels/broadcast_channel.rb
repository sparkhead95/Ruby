class BroadcastChannel < ApplicationCable::Channel
    
  def subscribed
    stream_from 'broadcast_channel'
  end  

  def unsubscribed

  end
end
