require 'dotenv'
ENV['APP_ENV'] ||= 'development'
Dotenv.load(".env.#{ENV['APP_ENV']}")

require 'byebug' if ENV['APP_ENV'] == 'development'
require 'pry' if ENV['APP_ENV'] == 'development'

require_relative 'container'

Bonuses::Container.finalize!

require_relative 'persistence'

