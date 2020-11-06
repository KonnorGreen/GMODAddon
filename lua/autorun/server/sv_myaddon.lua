include("autorun/sh_myaddon.lua")
hook.Add("PlayerSay", "MyAddonChatCommands", function(sender,text,teamChat)
    if text == "!crowbar" then
        sender:Give("weapon_crowbar")
        sender:ChatPrint("You received a crowbar!")
    end
end)