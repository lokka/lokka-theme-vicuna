require 'lokka/theme/vicuna/version'
require 'sinatra/base'

module Lokka
  module Theme
    module Vicuna
      def self.registered(app)
        puts 'vicuna!!!'
        path = File.expand_path('../../../../views', __FILE__)
        app.set :views, path
        app.set :themes, app.settings.themes.merge(vicuna: path)
        puts "path: #{path}"
        puts "app.settings.views: #{app.settings.views}"
        puts "app.settings: #{app.settings}"
      end
    end
  end
end
