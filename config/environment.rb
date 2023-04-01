# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ENV['RACK_ENV'] ||= "production"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])
