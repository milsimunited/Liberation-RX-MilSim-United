if (!isServer) exitWith {};
params ["_pos", "_nbMines"];

private _minesTypes =  ["ACE_IEDLandBig_Range", "IEDUrbanBig_F"];
for "_i" from 1 to _nbMines do {
	_mine = createMine [(selectRandom _minesTypes), _pos, [], 150];
	GRLIB_side_enemy revealMine _mine;
	GRLIB_side_civilian revealMine _mine;
};