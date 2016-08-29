require 'types'

module Entities
  class User < Dry::Types::Struct
    attribute :user_id, Types::Strict::String
    attribute :name, Types::Strict::String
    attribute :surname, Types::Strict::String
  end
end
