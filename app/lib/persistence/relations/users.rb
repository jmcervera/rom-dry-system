module Persistence
  module Relations
    class Users < ROM::Relation[:sql]
      schema(:users) do
        attribute :id, Types::Strict::String
        attribute :name, Types::Strict::String
      end

      def by_id(id)
        where(id: id)
      end
    end
  end
end
