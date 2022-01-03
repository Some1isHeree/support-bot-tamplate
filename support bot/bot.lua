local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == 's!info' then
		message.channel:send('Hello! I am Your Name Support bot! \nContact:\nMail: Your Mail\nDiscord: Your dc nick and ID\nDiscord Server: your server')
	end
end)

client:on('messageCreate', function(message)
	if message.content == 's!help' then
		message.channel:send('s!help - Displays Commands\ns!info - Displays info\ns!link - Create your own support bot!')
	end
end)

client:on('messageCreate', function(message)
	if message.content == 's!link' then
		message.channel:send('https://github.com/Some1isHeree/support-bot-tamplate\nCreate your own Support Bot today!')
	end
end)

client:run('Bot TOKEN')



























