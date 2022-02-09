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
end
Package.Export("SendDiscordMessage", SendDiscordMessage)

function SendDiscordEmbed(webhookUrl, embed)
    Embed = JSON.stringify({["embeds"] = {embed}})

    local message = ""
    message = message .. "payload_json="..urlencode(Embed)

    Package.Log(Embed)
    -- Makes a synchronous HTTP Request
        local ret = HTTP.RequestSync("discordapp.com", webhookUrl, "POST", message, "application/x-www-form-urlencoded; charset=utf-8", false, {})
end
Package.Export("SendDiscordEmbed", SendDiscordEmbed)