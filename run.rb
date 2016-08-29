require 'bundler/setup'

require_relative 'app/system/boot'

rom = Bonuses::Container['persistence.rom']
puts rom.inspect

user_repo = Bonuses::Container['persistence.repositories.users']
users = user_repo.query(name: 'john')
puts users.inspect


# user_relation = Bonuses::Container['relations.users']
# puts user_relation.inspect

# user = Bonuses::Container['entities.user']
# puts user.inspect


