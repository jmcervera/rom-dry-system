module Relations
  class Users < ROM::Relation[:sql]
    schema(:users) do
      attribute :id, Types::Strict::String
      attribute :name, Types::Strict::String
    end
    # dataset :users

    def by_id(id)
      where(user_id: id)
    end
  end
end
