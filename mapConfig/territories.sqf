// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: territories.sqf
//	@file Author: AgentRev

// Territory system definitions. See territory/README.md for more details.
//
// 1 - Territory marker name. Must begin with 'TERRITORY_'
// 2 - Descriptive name
// 3 - Monetary value
// 4 - Territory category, currently unused. See territory/README.md for details.

[
	["TERRITORY_0_BRAVO_A", "Comms Bravo (A)", 3500],
	["TERRITORY_0_BRAVO_B", "Comms Bravo (B)", 3500],
	["TERRITORY_0_BRAVO_C", "Comms Bravo (C)", 3500],
	["TERRITORY_1_GEORGETOWN_A", "Georgetown (A)", 3500],
	["TERRITORY_1_GEORGETOWN_B", "Georgetown (B)", 3500],
	["TERRITORY_1_GEORGETOWN_C", "Georgetown (C)", 3500],
	["TERRITORY_2_LIJNHAVEN_A", "Lijnhaven (A)", 3500],
	["TERRITORY_2_LIJNHAVEN_B", "Lijnhaven (B)", 3500],
	["TERRITORY_2_LIJNHAVEN_C", "Lijnhaven (C)", 3500],
	["TERRITORY_3_AEROPORT_A", "Aeroport de Tanoa (A)", 3500],
	["TERRITORY_3_AEROPORT_B", "Aeroport de Tanoa (B)", 3500],
	["TERRITORY_3_AEROPORT_C", "Aeroport de Tanoa (C)", 3500],
	["TERRITORY_4_TEMPLE_A", "Temple Ruins (A)", 3500],
	["TERRITORY_4_TEMPLE_B", "Temple Ruins (B)", 3500],
	["TERRITORY_4_TEMPLE_C", "Temple Ruins (C)", 3500],
	["TERRITORY_5_SOSOVU_A", "Sosovu Island (A)", 3000],
	["TERRITORY_5_SOSOVU_B", "Sosovu Island (B)", 3000],
	["TERRITORY_5_SOSOVU_C", "Sosovu Island (C)", 3000],
	["TERRITORY_6_BUA_A", "Bua Bua (A)", 3000],
	["TERRITORY_6_BUA_B", "Bua Bua (B)", 3000],
	["TERRITORY_6_BUA_C", "Bua Bua (C)", 3000],
	["TERRITORY_7_SAVAKA_A", "Savaka (A)", 3000],
	["TERRITORY_7_SAVAKA_B", "Savaka (B)", 3000],
	["TERRITORY_7_SAVAKA_C", "Savaka (C)", 3000],
	["TERRITORY_8_PORT_A", "Blue Pearl Industrial (A)", 3000],
	["TERRITORY_8_PORT_B", "Blue Pearl Industrial (B)", 3000],
	["TERRITORY_8_PORT_C", "Blue Pearl Industrial (C)", 3000]
]

//copyToClipboard str ((allMapMarkers select {_x select [0,10] == "TERRITORY_"}) apply {[_x, markerText _x, 500, ""]})
