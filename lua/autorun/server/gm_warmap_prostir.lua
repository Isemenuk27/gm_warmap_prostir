if ( game.GetMap() != "gm_warmap_prostir" ) then return end

local function Fix()
	local Sun = ents.FindByClass( "env_sun" )[1]

	if ( IsValid( Sun ) ) then
		Sun:SetKeyValue( "sun_dir", "0.52 0.74 0.42" )
	end

	local Tonemap = ents.FindByClass( "env_tonemap_controller" )[1]

	if ( IsValid( Tonemap ) ) then
		Tonemap:Fire( "SetAutoExposureMax", "1", 4 )
		Tonemap:Fire( "SetBloomScale", "0.2", 4 )
	end

	for _, ent in ipairs( ents.FindByClass( "func_lod" ) ) do
		ent.ExplProof = true
	end

	for _, ent in ipairs( ents.FindByClass( "func_brush" ) ) do
		ent.ExplProof = true
	end
end

hook.Add( "PostCleanupMap", "WARMAP.FIX2", Fix )
hook.Add( "InitPostEntity", "WARMAP.FIX1", Fix )