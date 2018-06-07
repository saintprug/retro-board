class BoardRepository < Hanami::Repository
  def create(payload)
    command(create: :boards).call({ uuid: SecureRandom.uuid }.merge!(payload))
  end
end
