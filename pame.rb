require 'cinch'
require './behaviour/karma/karma'
require './behaviour/google/google'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.devel.redhat.com"
    c.channels = ["#jasperland"]
    c.nick = "pame"
    c.plugins.plugins = [Karma]
  end
end

bot.start
           