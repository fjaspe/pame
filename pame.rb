#! /bin/ruby

require 'cinch'
require 'yaml'
require './behaviour/karma/karma'
require './behaviour/google/google'

config = YAML.load_file('./config/pame.yml')
puts config


bot = Cinch::Bot.new do
  configure do |c|
    c.server = config["server"]
    c.channels = config["channels"]
    c.nick = "pame"
    c.plugins.plugins = [Karma]
  end
end

bot.start
           
