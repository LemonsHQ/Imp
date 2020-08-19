function liro:PlayerSpawn( ply )
    MsgN( ply:Nick() .. " has spawned!" )
end






local function Assign( ply )
    print( ply:Nick().. " has spawned and has been assigned recruit!")
    

end



hook.Add( "PlayerSpawn", "some_unique_name", Spawn )