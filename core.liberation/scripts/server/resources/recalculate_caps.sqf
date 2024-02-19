base_infantry_cap = 50 * GRLIB_resources_multiplier;
infantry_cap = base_infantry_cap;


{
	if ( _x in sectors_capture ) then {
		infantry_cap = infantry_cap + (10 * GRLIB_resources_multiplier);
	};
} foreach blufor_sectors;


// Get Player Count for Fuel calculation
_players = count allPlayers;
// Exclude Headless Clients from player count
{
	if (!isNil (_x select 0)) then {
		if (!isNull (_x select 1)) then {
			_players = _players - 1;
		};
	};
} forEach [["HC1", HC1], ["HC2", HC2], ["HC3", HC3]];

fuel_cap = (MSU_Fuel_BaseFuel + (MSU_Fuel_FuelPerPlayer * _players));



/*
base_infantry_cap = 50 * GRLIB_resources_multiplier;
base_fuel_cap = 20 * GRLIB_resources_multiplier;

infantry_cap = base_infantry_cap;
fuel_cap = base_fuel_cap;

{
	if ( _x in sectors_capture ) then {
		infantry_cap = infantry_cap + (10 * GRLIB_resources_multiplier);
	};
	if ( _x in sectors_factory ) then {
		fuel_cap = fuel_cap + (20 * GRLIB_resources_multiplier);
	};
} foreach blufor_sectors;
*/