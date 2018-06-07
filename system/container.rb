require 'dry/system/container'
require 'dry/system/hanami'

class Container < Dry::System::Container
  extend Dry::System::Hanami::Resolver

  use :env

  #  Core
  register_folder! 'retro/repositories'

  configure do |config|
    config.env = Hanami.env
  end
end
