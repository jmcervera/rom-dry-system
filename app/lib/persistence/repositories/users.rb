# require 'bonuses/repository'
require_relative '../../../system/repository'
require 'entities/user'

module Persistence
  module Repositories
    class Users < Bonuses::Repository[:users]

      relations :users

      def [](id)
        users.by_id(id).one!
      end

      def query(conditions)
        users.where(conditions).as(Entities::User).to_a
      end

      def ids
        users.pluck(:user_id)
      end

      def by_id(id)
        # users.fetch(id)
        users.where(user_id: id).as(Entities::User).one
      end

    end
  end
end
