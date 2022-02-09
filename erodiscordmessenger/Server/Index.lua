Package.Log("Initialized Discord Messenger")
local function urlencode (str)
    str = string.gsub (str, "([^0-9a-zA-Z !'()*._~-])", -- locale independent
       function (c) return string.format ("%%%02X", string.byte(c)) end)
    str = string.gsub (str, " ", "+")
    return str
 end


function SendDiscordMessage(webhookUrl, Message)

        local message = ""
        message = "content="..urlencode(tostring(Message))

        Package.Log(message)
        -- Makes a synchronous HTTP Request
            local ret = HTTP.RequestSync("discordapp.com", webhookUrl, "POST", message, "application/x-www-form-urlencoded; charset=utf-8", false, {})

                Package.Log(ret.Status) -- 200
                Package.Log(ret.Data) -- nanos world server
end
Package.Export("SendDiscordMessage", SendDiscordMessage)

SendDiscordMessage(webhook, "hello world!")


function SendDiscordEmbed(webhookUrl, embed)
    Embed = JSON.stringify({["embeds"] = {embed}})

    local message = ""
    message = message .. "payload_json="..urlencode(Embed)

    Package.Log(Embed)
    -- Makes a synchronous HTTP Request
        local ret = HTTP.RequestSync("discordapp.com", webhookUrl, "POST", message, "application/x-www-form-urlencoded; charset=utf-8", false, {})

            Package.Log(ret.Status) -- 200
            Package.Log(ret.Data) -- nanos world server
end

-- Example of embed
local myEmbed = {
	["title"] = "Meow!",
	["color"] = 65280,
}
    
SendDiscordEmbed(webhook, myEmbed)