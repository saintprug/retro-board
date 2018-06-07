class User < Hanami::Entity
  attributes do
    attribute :uuid, Types::String

    attribute :name,   Types::String
    attribute :avatar, Types::String
    attribute :email,  Types::String
    attribute :login,  Types::String

    attribute :uid,   Types::String
    attribute :token, Types::String

    attribute :created_at, Types::Time
    attribute :updated_at, Types::Time
  end
end
