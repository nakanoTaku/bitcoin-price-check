class ApplicationController < ActionController::Base
  require 'net/http'
  require 'uri'
  require 'json'

  protect_from_forgery with: :exception
end
