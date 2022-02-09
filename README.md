# NanosWorld-Discord-Messenger

# Description
Send discord messages & embed messages directly in-game thanks to Discord Webhooks

# Install

1. Drag and drop the package in your packages folder.
2. Add it to your packages requirements
3. You're ready to use it

# Install

1. Drag and drop the package in your packages folder.
2. Add it to your packages requirements
3. Create a discord webhook

# How to use this package

```
-- You have 2 methods with this package

-- Send Discord Message
local webhook = "your webhook WITHOUT discordapp.com"
SendDiscordMessage(webhook, "hello world")

-- Send Discord Embed

local webhook = "your webhook WITHOUT discordapp.com"
local myEmbed = {
	["title"] = "hello world!",
	["color"] = 65280,
}
    
SendDiscordEmbed(webhook, myEmbed)

```
