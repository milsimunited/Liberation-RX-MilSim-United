private _worldSize = worldSize;

_markerTriggerrange = createMarker ["mapstat_triggerrange", [200, _worldSize - 200]];
_markerZonesAll = createMarker ["mapstat_zonesAll", [200, _worldSize - 400]];
_markerZonesCaptured = createMarker ["mapstat_zonesCaptured", [200, _worldSize - 600]];
_markerZonesToCapture = createMarker ["mapstat_zonesToCapture", [200, _worldSize - 800]];

_markerTriggerrange setMarkerType "hd_flag";
_markerZonesAll setMarkerType "hd_flag";
_markerZonesCaptured setMarkerType "hd_flag";
_markerZonesToCapture setMarkerType "hd_flag";

_markerTriggerrange setMarkerSize [0.7, 0.7];
_markerZonesAll setMarkerSize [0.7, 0.7];
_markerZonesCaptured setMarkerSize [0.7, 0.7];
_markerZonesToCapture setMarkerSize [0.7, 0.7];

_markerTriggerrange setMarkerColor "ColorWhite";
_markerZonesAll setMarkerColor "ColorWhite";
_markerZonesCaptured setMarkerColor "ColorWhite";
_markerZonesToCapture setMarkerColor "ColorWhite";

while { true } do {
	// Make sure to send the value of the server variable every time because the client and server variable can be different
	[[_markerTriggerrange, format ["%1%2%3", "format [""%1: %2"", localize ""STR_MSU_Mapinfo_Triggerrange"", ", GRLIB_sector_size, "]"]], "scripts\client\msu\updateMapInfoMarker.sqf"] remoteExec ["execVM", -2];
	[[_markerZonesAll, "format [""%1: %2"", localize ""STR_MSU_Mapinfo_ZoneCount"", count sectors_allSectors]"], "scripts\client\msu\updateMapInfoMarker.sqf"] remoteExec ["execVM", -2];
	[[_markerZonesCaptured, "format [""%1: %2 (%3%4)"", localize ""STR_MSU_Mapinfo_CapturedCount"", count blufor_sectors, round ((count blufor_sectors / count sectors_allSectors) * 100), ""%""]"], "scripts\client\msu\updateMapInfoMarker.sqf"] remoteExec ["execVM", -2];
	[[_markerZonesToCapture, "format [""%1: %2 (%3%4)"", localize ""STR_MSU_Mapinfo_ToCaptureCount"", (count sectors_allSectors) - (count blufor_sectors), round (((count sectors_allSectors - count blufor_sectors) / count sectors_allSectors) * 100), ""%""]"], "scripts\client\msu\updateMapInfoMarker.sqf"] remoteExec ["execVM", -2];

	sleep 60;
};
