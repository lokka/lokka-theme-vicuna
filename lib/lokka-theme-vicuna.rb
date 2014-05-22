require 'sinatra/base'

module Lokka
  module Theme
    module Vicuna
      VERSION = '0.0.2'

      def self.registered(app)
        puts 'vicuna!!!'
        path = File.expand_path('../../../../views', __FILE__)
        app.set :views, path
        puts "path: #{path}"
        puts "app.settings.views: #{app.settings.views}"
        puts "app.settings: #{app.settings}"
      end
    end
  end
end
