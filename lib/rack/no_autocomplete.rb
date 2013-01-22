require 'rack_replace'

module Rack
  class NoAutocomplete < Rack::Replace

    def initialize app
      super app, /\<(form|input|textarea|select)/, '<\1 autocomplete="off"'
    end

  end
end
