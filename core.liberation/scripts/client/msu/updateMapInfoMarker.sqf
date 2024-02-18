params ["_markerName", "_markerTextRaw"];
private _markerText = call (compile _markerTextRaw);
_markerName setMarkerTextLocal _markerText;