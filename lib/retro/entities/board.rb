class Board < Hanami::Entity
  attributes do
    attribute :uuid,     Types::String
    attribute :owner_id, Types::String

    attribute :created_at, Types::Time
    attribute :updated_at, Types::Time
  end
end
