require 'rack_replace'

module Rack
  class NoAutocomplete < Rack::Replace

    def initialize app
      super app, /\<form/, '<form autocomplete="off"'
    end

  end
end
