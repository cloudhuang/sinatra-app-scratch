require 'rubygems'
require 'sinatra/base'
require 'dm-core'
require 'dm-sqlite-adapter'

Dir.glob('./{models,helpers,controllers}/*.rb').each { |file| require file }

SongController.configure :development do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

SongController.configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end

map('/songs') { run SongController }
map('/') { run WebsiteController }