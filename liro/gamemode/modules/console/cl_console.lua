local function OpenPanel( ply, key )
	if ( key == "KEY_F1" && ply:IsUserGroup("developer") ) then
		local basepanel = vgui.Create("DFrame")
		basepanel:SetPos( ScrW()/2*0.5, ScrH()/2*0.5 )
		basepanel:SetSize( ScrW()/2*0.5, ScrH()/2*0.5 )
		basepanel:SetTitle( "" )
		basepanel:MakePopup()
		basepanel:SetDeleteOnClose(true)
		basepanel:SetDraggable(false)
		basepanel:SetSizable(false)
		basepanel:ShowCloseButton(false)
		basepanel:SetScreenLock(true)
		basepanel.Paint = function()
			surface.SetDrawColor(120, 120, 120, 255)
			surface.DrawTexturedRect(0, 0, self:GetWide(), self:GetTall() )
	 	end

	 	local closeb = vgui.Create("DButton", basepanel)
	 	closeb:SetPos( 0, 0 )
	 	closeb:SetSize( 100, 100 )
	 	closeb:SetText( "Close" )
	 	closeb.DoClick = function()
	 		basepanel:Close()
	 	end

	 	local consolehtml = vgui.Create("DHTML", basepanel)
	 	consolehtml:Dock( FILL )
	 	consolehtml:OpenURL( "https://panel.kryptonnetworks.co.uk/server/a2391697/console" )
	end
end

hook.Add( "PlayerButtonDown", "liro_openconsolepanel", OpenPanel )