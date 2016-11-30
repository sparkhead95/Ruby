module ApplicationCable
  class Channel < ActionCable::Channel::Base
    
  def subscribed
    stream_from 'broadcast_channel'
  end  

  def unsubscribed

  end

  def speak
    ActionCable.server.broadcast "application_channel", message: data['message']
  end

  end
end
