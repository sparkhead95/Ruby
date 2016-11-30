# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# STILL NEED TO DO THE TRANSLATION FROM JS TO COFFEESCRIPT

App.broadcast= App.cable.subscriptions.create "BroadcastChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log("data message:" + data['message'] )
    $('#messages').append(data['message'])
    # Called when there's incoming data on the websocket for this channel

