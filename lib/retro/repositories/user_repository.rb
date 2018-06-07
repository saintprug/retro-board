class UserRepository < Hanami::Repository
  def create(payload)
    command(create: :users).call({ uuid: SecureRandom.uuid }.merge!(payload))
  end
end
