module Web::Controllers::Boards
  class Show
    include Dry::Monads::Result::Mixin
    include Web::Action

    include Import[operation: 'boards.operations.show']

    expose :board

    def call(params)
      result = operation.call(params.to_h.slice(:id))

      case result
      when Success { |value| value.is_a?(Board) }
        @board = result.value!
      else
        halt 404, "These aren't the boards you're looking for"
      end
    end
  end
end
