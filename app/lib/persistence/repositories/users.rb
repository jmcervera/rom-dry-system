require_relative '../../../system/repository'

module Persistence
  module Repositories
    class Users < Bonuses::Repository[:users]

      def [](id)
        users.by_id(id).one!
      end

    end
  end
end
