require 'dry/system/container'
require 'dry/system/hanami'

require 'dry/monads/result'

class Container < Dry::System::Container
  extend Dry::System::Hanami::Resolver

  use :env

  #  Core
  register_folder! 'retro/repositories'

  # Boards
  register_folder! 'boards/operations'

  configure do |config|
    config.env = Hanami.env
  end
end
