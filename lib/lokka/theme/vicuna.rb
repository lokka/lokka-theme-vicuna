require 'lokka/theme/vicuna/version'
require 'sinatra'

module Lokka
  module Theme
    module Vicuna
      def self.registered(app)
        path = File.expand_path('../../../views', __FILE__)
        puts path
        puts app.themes
      end
    end

    register Vicuna
  end
end
