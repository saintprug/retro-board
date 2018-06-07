# frozen_string_literal: true

Container.finalize(:abilities) do |container|
  abilities = Kan::Application.new(
    board: [
    #   Boards::Abilities::Anonymous.new,
    #   Boards::Abilities::Regular.new,
    #   Boards::Abilities::Owner.new
    ]
  )

  container.register(:abilities, abilities)
end
