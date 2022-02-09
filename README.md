# NanosWorld-Discord-Messenger

# Description
Send discord messages & embed messages directly in-game thanks to Discord Webhooks

# Install

1. Drag and drop the package in your packages folder.
2. Add it to your packages requirements
3. Create a webhook
4. 
![d1](https://user-images.githubusercontent.com/79408258/153308065-a9e642e7-fc92-436d-a9db-6530bea1dda5.png)

![d2](https://user-images.githubusercontent.com/79408258/153308136-cc6a0437-c9a3-485f-b8b4-bea7beede84a.png)

![d3](https://user-images.githubusercontent.com/79408258/153308187-eb872ad1-c4dc-4ea5-b2fa-9df0513673f9.png)

![image](https://user-images.githubusercontent.com/79408258/153308228-88cb7e10-994b-4d45-8748-54a8bf9754b2.png)

Select your channel & the name of the webhook
Copy the link of the webhook to use it later in the code
![image](https://user-images.githubusercontent.com/79408258/153308274-1afa7a32-55f0-4f4f-8583-57e2e55f01a5.png)



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
