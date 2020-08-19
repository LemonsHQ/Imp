function liro:PlayerInitialSpawn( ply ) 
 
    ply:SetTeam( 1 )
 
end 
 
function liro:PlayerLoadout( ply ) 
 
    if ply:Team() == 1 then 
 
        ply:Give( "weapon_physcannon" ) --Give them the Gravity Gun
 
    end 
 
end 