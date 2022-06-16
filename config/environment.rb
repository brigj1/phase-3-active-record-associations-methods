ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'

def reload
    load "app/models/artist.rb"
    load "app/models/genre.rb"
    load "app/models/song.rb"
end
