require 'cinch'
require 'yaml'
require './behaviour/karma/karma'
require './behaviour/google/google'

config = YAML.load_file('./config/pame.yml')
puts config




class Greeter
  include Cinch::Plugin
  #solo es una prueba, despues el comportamiento no va a ser este

 	set :prefix, //

  	match "hola"

  	def execute(m)
  		debug "hola!"
    	m.reply "Hola #{m.user.name}!"
  	end

end


bot = Cinch::Bot.new do
  configure do |c|
    c.server = config["server"]
    c.channels = config["channels"]
    c.nick = "pame"
    c.plugins.plugins = [Greeter]
  end
end

bot.start
           