require 'bundler/setup'

require_relative 'app/system/boot'

user_repo = Bonuses::Container['persistance.repositories.users']
puts user_repo.inspect
