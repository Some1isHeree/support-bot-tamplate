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

client:run('Bot TOKEN')



























