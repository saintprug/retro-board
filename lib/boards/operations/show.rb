module Boards
  module Operations
    class Show
      include Dry::Monads::Result::Mixin
      include Import[board_repo: 'repositories.board']

      def call(id:)
        Success(board_repo.find(id))
      end
    end
  end
end
