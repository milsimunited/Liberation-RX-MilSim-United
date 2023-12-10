/*
	Author: xImSebi
	
	Description:
		Provides initialization for assigning zeus curators via mission script instead of mission.sqm object
		Deleting existing zeus curator objects and spawning new ones based on the allowed_zeus_curators variable
*/

if (isServer) then {
	diag_log "--- Zeus Curator Init Start ---";
	waitUntil {
		!(isNil "curatorLogicGroup")
	};

	// Delete all existing Zeus Curators (for example:Created by map placement)
	{
		curatorModuleName = (vehicleVarName _x);
		diag_log ("Found Map Zeus Curator Module: " + curatorModuleName);
		diag_log ("Unassigning and deleting Zeus Curator Module: " + curatorModuleName);
		unassignCurator _x;
		deleteVehicle _x;
	} forEach allCurators;

	// Create new Zeus Curator modules for each whitelisted Zeus Curator in gameplay_constants.sqf
	{
		curatorSteamId = (_x select 0);
		curatorName = (_x select 1);

		curator = curatorLogicGroup createunit ["ModuleCurator_F", [0, 90, 90], [], 5, "NONE"];
		curator setvariable ["name", curatorName];
		curator setvariable ["Addons", 3, true];// 3: allow all addons with proper use of CfgPatches
		curator setvariable ["owner", curatorSteamId];
		curator setVehicleVarName ("gamemaster_" + curatorSteamId);
		diag_log ("Creating Zeus Curator Module - SteamID: " + curatorSteamId + " - Name: " + curatorName);
		objNull assignCurator curator;
	} forEach allowed_zeus_curators;
	diag_log "--- Zeus Curator Init End ---";
};