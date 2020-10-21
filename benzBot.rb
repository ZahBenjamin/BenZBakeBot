require 'telegram/bot'
 token = ENV["BOT_KEY"]

 Telegram::Bot::Client.run(token) do |bot|
 	bot.listen do |message|
 		case message.text
 		when '/start'
 			bot.api.send_message(chat_id: message.chat.id, text: "Welcome to Ben's Bake Bot. Don't mess up the cookies")
 		when '/3b'
 			bot.api.send_message(chat_id: message.chat.id, text: "Hello World")
 		when '/common'
 			bot.api.send_message(chat_id: message.chat.id, text: "1 tablespoon = 3 teaspoon | 4 tablespoon = 1/4 cup | 1 cup = 250 mL | 1 pint = 500mL | 1 quart = 0.95 L | 1 gallon = 3.8 L")
 		
# Command below in progress, will be conversion tool
 		when '/flour amount'
 			bot.api.send_message(chat_id: message.chat.id, text: "X grams of flour is X in milliliters .... in progress ")

 		end
 	end
 end


# Will be code for conversion tool
 def convert(ingredient, val)
 	var ingredient = 


 	# If you're reading this, this is my first bot! API is in the env.
 	# First goal is to convert different ingredients from grams to mL
 	# Second goal is to add database with list of recipes that are sent through telegram