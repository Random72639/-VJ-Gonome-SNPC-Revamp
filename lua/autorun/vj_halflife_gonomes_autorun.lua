/*--------------------------------------------------
	=============== "[VJ] Random's Half-Life Gonome SNPCs" Autorun ===============
	*** Copyright (c) 2012-2015 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load autorun file for Dummy
--------------------------------------------------*/
local PublicAddonName = "[VJ] Random's Half-Life Gonome SNPCs"
local AddonName = "[VJ] Random's Half-Life Gonome SNPCs"
local AddonType = "NPC"
local AutorunFile = "autorun/vj_halflife_gonomes_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')

        local vCat = "Zombies + Enemy Aliens" 
        // -- Weapons -- \\
        VJ.AddNPC("Gonome","npc_vj_hale_life_gonome",vCat)
        VJ.AddNPC("Gonome Ver2","npc_vj_hale_life_gonome_2",vCat)
        VJ.AddNPC("Explosive Gonome","npc_vj_hale_life_gonome_3",vCat)
        VJ.AddNPC("Electrical Gonome","npc_vj_hale_life_gonome_4",vCat)

        VJ.AddNPC("Gonome [EZ:2] (Female)","npc_vj_ez2_gonome_fem",vCat)
        VJ.AddNPC("Glownome [EZ:2] (Female)","npc_vj_ez2_glownome_fem",vCat)
        VJ.AddNPC("Gonome [EZ:2] Classic Headcrab (Female)","npc_vj_ez2_gonome_classic_fem",vCat)
        VJ.AddNPC("Gonome [EZ:2] ","npc_vj_ez2_gonome",vCat)
        VJ.AddNPC("Glownome [EZ:2] ","npc_vj_ez2_glownome",vCat)
        VJ.AddNPC("Gonome [EZ:2] Classic Headcrab","npc_vj_ez2_gonome_classic",vCat)
        VJ.AddNPC("Gonome [RTB:R]","npc_vj_rtbr_gonome",vCat)
        VJ.AddNPC("Gonome [EZ:2-Remake]","npc_vj_ez2_gonome_remake",vCat)

        VJ.AddNPC("Poison Gonome Ver2","npc_vj_hale_life_gonome_poison",vCat)
        VJ.AddNPC("Gonome (Overcharged)","npc_vj_hale_life_gonome_overcharged",vCat)
        VJ.AddNPC("Smod Gonome","npc_vj_hale_life_gonome_smod",vCat)

        VJ.AddNPC("HL2 Beta Gonome","npc_vj_hale_life_beta_gonome",vCat)
        VJ.AddNPC("HL1 OpFor Gonome","npc_vj_half_life_op4_gonome",vCat)
        VJ.AddNPC("HL1 Scientist Gonome","npc_vj_hl_gn_sci",vCat)
        VJ.AddNPC("HL1 HECU Gonome","npc_vj_hl_gn_sol",vCat)
        VJ.AddNPC("HL1 Security Gonome","npc_vj_hl_gn_grd",vCat)


	// -- Required Addons! -- \\
	if SERVER then
        resource.AddWorkshop("131759821") -- VJ Base --
    end


        -- Menu --
	local AddConvars = {}
	AddConvars["vj_can_gonomes_knock_player_weapons"] = 1 -- Can SNPCs gain HP on successful kills?
	AddConvars["vj_can_gonomes_screen_fx"] = 0 -- Enable Screen Effects when hit?
	AddConvars["vj_can_gonomes_dance"] = 0 -- Can SNPCs dance?
	AddConvars["vj_can_gonomes_have_worldshake"] = 1 -- Do Gonome's have worldshake?
	AddConvars["vj_can_gonomes_break_doors"] = 1 -- Do Gonome's break doors?
	for k, v in pairs(AddConvars) do
		if !ConVarExists( k ) then CreateConVar( k, v, {FCVAR_ARCHIVE} ) end
	end

	if CLIENT then
	local function VJ_GO_MENU_MAIN(Panel)
		if !game.SinglePlayer() && !LocalPlayer():IsAdmin() then
			Panel:AddControl("Label", {Text = "#vjbase.menu.general.admin.not"})
			Panel:ControlHelp("#vjbase.menu.general.admin.only")
			return
		end		

		Panel:AddControl( "Label", {Text = "Notice: Only admins can change this settings."})	
		Panel:AddControl("Button",{Text = "#vjbase.menu.general.reset.everything", Command = " vj_can_gonomes_break_doors 0\n vj_can_gonomes_dance 0 \n vj_can_gonomes_have_worldshake 0 \n vj_can_gonomes_screen_fx 0 \n vj_can_gonomes_regain_hp 0"})

		Panel:AddControl("Checkbox", {Label = "Can Gonome's Break Doors?", Command = "vj_can_gonomes_break_doors"})
		Panel:ControlHelp("Allows the Gonome's to break doors.")

		Panel:AddControl("Checkbox", {Label = "Can Gonome's Dance?", Command = "vj_can_gonomes_dance"})
		Panel:ControlHelp("Allows Gonome's to dance whwen they get a kill.")

		Panel:AddControl("Checkbox", {Label = "Disable Gonome's Worldshake?", Command = "vj_can_gonomes_have_worldshake"})
		Panel:ControlHelp("Allows Gonome's to have worldshake when they walk or run.")

		Panel:AddControl("Checkbox", {Label = "Disable Screen Effects When Hit?", Command = "vj_can_gonomes_screen_fx"})
		Panel:ControlHelp("This allows whether the screen shake and blindness is applied to the player when hit.")

		Panel:AddControl("Checkbox", {Label = "Enable Gonome's Weapon Knocking Ability?", Command = "vj_can_gonomes_knock_player_weapons"})
		Panel:ControlHelp("This allows if a Gonome can knock the players weapon out of their hands.")
        end
	function VJ_ADDTOMENU_GO()
		spawnmenu.AddToolMenuOption( "DrVrej", "SNPC Configures", "[VJ] Random's HL Gonome SNPCs", "[VJ] Random's HL Gonome SNPCs", "", "", VJ_GO_MENU_MAIN, {} )
	end
		hook.Add( "PopulateToolMenu", "VJ_ADDTOMENU_GO", VJ_ADDTOMENU_GO )
	end


-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
AddCSLuaFile(AutorunFile)
VJ.AddAddonProperty(AddonName,AddonType)
else
if CLIENT then
	chat.AddText(Color(0, 200, 200), PublicAddonName,
	Color(0, 255, 0), " was unable to install, you are missing ",
	Color(255, 100, 0), "VJ Base!")
end

timer.Simple(1, function()
	if not VJBASE_ERROR_MISSING then
		VJBASE_ERROR_MISSING = true
		if CLIENT then
			// Get rid of old error messages from addons running on older code...
			if VJF && type(VJF) == "Panel" then
				VJF:Close()
			end
			VJF = true
			
			local frame = vgui.Create("DFrame")
			frame:SetSize(600, 160)
			frame:SetPos((ScrW() - frame:GetWide()) / 2, (ScrH() - frame:GetTall()) / 2)
			frame:SetTitle("Error: VJ Base is missing!")
			frame:SetBackgroundBlur(true)
			frame:MakePopup()

			local labelTitle = vgui.Create("DLabel", frame)
			labelTitle:SetPos(250, 30)
			labelTitle:SetText("VJ BASE IS MISSING!")
			labelTitle:SetTextColor(Color(255,128,128))
			labelTitle:SizeToContents()
			
			local label1 = vgui.Create("DLabel", frame)
			label1:SetPos(170, 50)
			label1:SetText("Garry's Mod was unable to find VJ Base in your files!")
			label1:SizeToContents()
			
			local label2 = vgui.Create("DLabel", frame)
			label2:SetPos(10, 70)
			label2:SetText("You have an addon installed that requires VJ Base but VJ Base is missing. To install VJ Base, click on the link below. Once\n                                                   installed, make sure it is enabled and then restart your game.")
			label2:SizeToContents()
			
			local link = vgui.Create("DLabelURL", frame)
			link:SetSize(300, 20)
			link:SetPos(195, 100)
			link:SetText("VJ_Base_Download_Link_(Steam_Workshop)")
			link:SetURL("https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
			
			local buttonClose = vgui.Create("DButton", frame)
			buttonClose:SetText("CLOSE")
			buttonClose:SetPos(260, 120)
			buttonClose:SetSize(80, 35)
			buttonClose.DoClick = function()
				frame:Close()
			end
		elseif (SERVER) then
			VJF = true
			timer.Remove("VJBASEMissing")
			timer.Create("VJBASE_ERROR_CONFLICT", 5, 0, function()
				print("VJ Base is missing! Download it from the Steam Workshop! Link: https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
			end)
		end
	end
end)
end

