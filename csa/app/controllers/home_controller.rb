class HomeController < ApplicationController
  skip_before_action :login_required
  
  
  def index
    words = "kek lelelelelelelelelelelelelel"
    
    ActionCable.server.broadcast 'broadcast_channel',
        message: '<p>' + words.to_s + '</p>'
  end


end
