# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
ActionCable.server.config.allowed_request_origins = ['http://fiddle.jshell.net']

run Rails.application
