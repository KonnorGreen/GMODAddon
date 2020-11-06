include("autorun/sh_myaddon.lua")

hook.Add("HUDPaint", "MyAddonHUD", function()
    local ply = LocalPlayer() --setting the player as a var
    local hp = ply:Health() --getting players health
    local maxhp = ply:GetMaxHealth()
    local scrw,scrh = ScrW(), ScrH()
    local boxW = scrw * .5
    local boxH = scrh * .04
    surface.SetDrawColor(0,0,0,200)
    surface.DrawRect(scrw/2-boxW/2, scrh - boxH *1.1, boxW, boxH)
    surface.SetDrawColor(255,0,0,200)
    surface.DrawRect(scrw/2-boxW/2, scrh - boxH *1.1, boxW * (hp / maxhp), boxH)
    
end)