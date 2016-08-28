require 'dry/system/container'

module Bonuses
  class Container < Dry::System::Container

    configure do |config|
      config.name = :core
      config.root = Pathname('./app')
      config.auto_register = %(lib)
    end

    load_paths!('lib')
  end

end
