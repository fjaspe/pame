require 'cinch'
require 'yaml'

class Karma
  include Cinch::Plugin

  set :prefix, //


  def initialize(*args)
  	super
  	load
  end


  def load
  	@database = Hash.new
  end

  def save(m)

  end

  match /([A-Z]|[a-z]|[0-9])+\+\+/

  	def execute(m)
  		#Es feo, modificar para que quede lindo :D
  		item = m.message[0..-3]
  		if @database[m.channel].nil?
  			@database[m.channel] = Hash.new
  		end
  		if @database[m.channel][item].nil?
  			@database[m.channel][item] = 0
  		end
  		 @database[m.channel][item] += 1
    	m.reply "El karma de #{item} ahora es #{@database[m.channel][item]}"
  	end
end
