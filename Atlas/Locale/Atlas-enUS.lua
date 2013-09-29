--[[

   Joana's Guide Atlas Suite, an instance map browser with a built in leveling guide
   Compiled by Bennylava
   Bennylavaed@gmail.com
   Last Update: 09/28/2013

--]]




AtlasSortIgnore = {"the (.+)"};




ATLAS_TITLE = "Joana's Guide Atlas Suite";
ATLAS_SUBTITLE = "Instance Map Browser and Leveling Guide";
ATLAS_DESC = "Joana's Guide Atlas Suite is an instance map browser and a leveling guide built into one";

ATLAS_OPTIONS_BUTTON = "Options";

BINDING_HEADER_ATLAS_TITLE = "Atlas Bindings";
BINDING_NAME_ATLAS_TOGGLE = "Toggle Atlas";
BINDING_NAME_ATLAS_OPTIONS = "Toggle Options";

ATLAS_SLASH = "/atlas";
ATLAS_SLASH_OPTIONS = "options";

ATLAS_STRING_LOCATION = "Location";
ATLAS_STRING_LEVELRANGE = "Level Range";
ATLAS_STRING_PLAYERLIMIT = "Player Limit";
ATLAS_STRING_SELECT_CAT = "Select Category";
ATLAS_STRING_SELECT_MAP = "Select Map";

ATLAS_BUTTON_TOOLTIP = "Joana's Guide Atlas Suite";
ATLAS_BUTTON_TOOLTIP2 = "Left-click to open Joana's Guide Atlas Suite.";
ATLAS_BUTTON_TOOLTIP3 = "Right-click and drag to move this button.";

ATLAS_OPTIONS_TITLE = "Joana's Guide Atlas Suite Options";
ATLAS_OPTIONS_SHOWBUT = "Show Button on Minimap";
ATLAS_OPTIONS_AUTOSEL = "Auto-Select Instance Map";
ATLAS_OPTIONS_BUTPOS = "Button Position";
ATLAS_OPTIONS_TRANS = "Transparency";
ATLAS_OPTIONS_DONE = "Done";
ATLAS_OPTIONS_REPMAP = "Replace the World Map";
ATLAS_OPTIONS_RCLICK = "Right-Click for World Map";
ATLAS_OPTIONS_SHOWMAPNAME = "Show map name";
ATLAS_OPTIONS_RESETPOS = "Reset Position";
ATLAS_OPTIONS_ACRONYMS = "Display Acronyms";
ATLAS_OPTIONS_SCALE = "Scale";
ATLAS_OPTIONS_BUTRAD = "Button Radius";
ATLAS_OPTIONS_CLAMPED = "Clamp window to screen"

ATLAS_HINT = "Hint: Left-click to open Joana's Guide Atlas Suite..";




ATLAS_HELP = {"About Joana's Guide Atlas Suite.\n===========\n\nJoana's Guide Atlas Suite. is a user interface addon for World of Warcraft that provides a number of additional maps as well as an in-game map browser. Typing the command '/atlas' or clicking the mini-map icon will open the Atlas window. The options panel allows you to disable the icon, toggle the Auto Select feature, toggle the Replace World Map feature, toggle the Right-Click feature, change the icon's position, or adjust the transparency of the main window. If the Auto Select feature is enabled, Atlas will automatically open to the map of the instance you're in. If the Replace World Map feature is enabled, Atlas will open instead of the world map when you're in an instance. If the Right-Click feature is enabled, you can Right-Click on Atlas to open the World Map. You can move Atlas around by left-clicking and dragging. Use the small padlock icon in the upper-right corner to lock the window in place."};




ATLAS_LOCALE = {
	menu = "Atlas",
	tooltip = "Atlas",
	button = "Atlas"
};

AtlasZoneSubstitutions = {
	["The Temple of Atal'Hakkar"]	= "The Sunken Temple";
	["Ahn'Qiraj"]					= "The Temple of Ahn'Qiraj";
	["Ruins of Ahn'Qiraj"]			= "The Ruins of Ahn'Qiraj";
}; 

local BLUE = "|cff6666ff";
local GREY = "|cffFFFFFF";
local GREN = "|cff66cc33";
local _RED = "|cffcc6666";
local ORNG = "|cffcc9933";
local PURP = "|cff9900ff";
local YELO = "|cffFFd200";
local INDENT = "   ";
local _TAB = "				";

--Keeps track of the different categories of maps
Atlas_MapTypes = {
	"Eastern Kingdoms Instances",
	"Kalimdor Instances",
	"Battleground Maps",
	"Flight Path Maps",
	"Dungeon Locations",
	"Raid Encounters",
	"Joana's Guide Intro",
	"Tauren Guide 1-12",	
	"Undead Guide 1-12",		
	"Leveling Guide 1-20",
	"Leveling Guide 20-30",	
	"Leveling Guide 30-40",	
	"Leveling Guide 40-45",	
	"Leveling Guide 45-50",	
	"Leveling Guide 50-55",	
	"Leveling Guide 55-60",	
};

AtlasKalimdor = {
	RagefireChasm = {
		ZoneName = "Ragefire Chasm";
		Acronym = "RFC";
		Location = "Orgrimmar";
		BLUE.."A) Entrance";
		GREY.."1) Maur Grimtotem";
		GREY.."2) Taragaman the Hungerer";
		GREY.."3) Jergosh the Invoker";
		GREY.."4) Bazzalan";
	};
	WailingCaverns = {
		ZoneName = "Wailing Caverns";
		Acronym = "WC";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Disciple of Naralex";
		GREY.."2) Lord Cobrahn";
		GREY.."3) Lady Anacondra";
		GREY.."4) Kresh";
		GREY.."5) Lord Pythas";
		GREY.."6) Skum";
		GREY.."7) Lord Serpentis (Upper)";
		GREY.."8) Verdan the Everliving (Upper)";
		GREY.."9) Mutanus the Devourer";
		GREY..INDENT.."Naralex";
		GREY.."10) Deviate Faerie Dragon (Rare)";
	};
	BlackfathomDeeps = {
		ZoneName = "Blackfathom Deeps";
		Acronym = "BFD";
		Location = "Ashenvale";
		BLUE.."A) Entrance";
		GREY.."1) Ghamoo-ra";
		GREY.."2) Lorgalis Manuscript";
		GREY.."3) Lady Sarevess";
		GREY.."4) Argent Guard Thaelrid";
		GREY.."5) Gelihast";
		GREY.."6) Lorgus Jett (Varies)";
		GREY.."7) Baron Aquanis";
		GREY..INDENT.."Fathom Core";
		GREY.."8) Twilight Lord Kelris";
		GREY.."9) Old Serra'kis";
		GREY.."10) Aku'mai";
	};
	RazorfenKraul = {
		ZoneName = "Razorfen Kraul";
		Acronym = "RFK";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Roogug";
		GREY.."2) Aggem Thorncurse";
		GREY.."3) Death Speaker Jargba";
		GREY.."4) Overlord Ramtusk";
		GREY.."5) Agathelos the Raging";
		GREY.."6) Blind Hunter (Rare)";
		GREY.."7) Charlga Razorflank";
		GREY.."8) Willix the Importer";
		GREY..INDENT.."Heralath Fallowbrook";
		GREY.."9) Earthcaller Halmgar (Rare)";
	};
	RazorfenDowns = {
		ZoneName = "Razorfen Downs";
		Acronym = "RFD";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Tuten'kash";
		GREY.."2) Henry Stern";
		GREY..INDENT.."Belnistrasz";
		GREY.."3) Mordresh Fire Eye";
		GREY.."4) Glutton";
		GREY.."5) Ragglesnout (Rare)";
		GREY.."6) Amnennar the Coldbringer";
	};
	ZulFarrak = {
		ZoneName = "Zul'Farrak";
		Acronym = "ZF";
		Location = "Tanaris";
		BLUE.."A) Entrance";
		GREY.."1) Antu'sul";
		GREY.."2) Theka the Martyr";
		GREY.."3) Witch Doctor Zum'rah";
		GREY..INDENT.."Zul'Farrak Dead Hero";
		GREY.."4) Nekrum Gutchewer";
		GREY..INDENT.."Shadowpriest Sezz'ziz";
		GREY.."5) Sergeant Bly";
		GREY.."6) Hydromancer Velratha";
		GREY..INDENT.."Gahz'rilla";
		GREY..INDENT.."Dustwraith (Rare)";
		GREY.."7) Chief Ukorz Sandscalp";
		GREY..INDENT.."Ruuzlu";
		GREY.."8) Zerillis (Rare, Wanders)";
		GREY.."9) Sandarr Dunereaver (Rare)";
	};
	Maraudon = {
		ZoneName = "Maraudon";
		Acronym = "Mara";
		Location = "Desolace";
		BLUE.."A) Entrance (Orange)";
		BLUE.."B) Entrance (Purple)";
		BLUE.."C) Entrance (Portal)";
		GREY.."1) Veng (The Fifth Khan)";
		GREY.."2) Noxxion";
		GREY.."3) Razorlash";
		GREY.."4) Maraudos (The Fourth Khan)";
		GREY.."5) Lord Vyletongue";
		GREY.."6) Meshlok the Harvester (Rare)";
		GREY.."7) Celebras the Cursed";
		GREY.."8) Landslide";
		GREY.."9) Tinkerer Gizlock";
		GREY.."10) Rotgrip";
		GREY.."11) Princess Theradras";
	};
	DireMaulEast = {
		ZoneName = "Dire Maul (East)";
		Acronym = "DM";
		Location = "Feralas";
		BLUE.."A) Entrance";
		BLUE.."B) Entrance";
		BLUE.."C) Entrance";
		BLUE.."D) Exit";
		GREY.."1) Pusillin Chase Begins";
		GREY.."2) Pusillin Chase Ends";
		GREY.."3) Zevrim Thornhoof";
		GREY..INDENT.."Hydrospawn";
		GREY..INDENT.."Lethtendris";
		GREY.."4) Old Ironbark";
		GREY.."5) Alzzin the Wildshaper";
		GREY..INDENT.."Isalien";
	};
	DireMaulNorth = {
		ZoneName = "Dire Maul (North)";
		Acronym = "DM";
		Location = "Feralas";
		BLUE.."A) Entrance";
		GREY.."1) Guard Mol'dar";
		GREY.."2) Stomper Kreeg";
		GREY.."3) Guard Fengus";
		GREY.."4) Knot Thimblejack";
		GREY..INDENT.."Guard Slip'kik";
		GREY.."5) Captain Kromcrush";
		GREY.."6) King Gordok";
		GREY.."7) Dire Maul (West)";
		GREN.."1') Library";
	};
	DireMaulWest = {
		ZoneName = "Dire Maul (West)";
		Acronym = "DM";
		Location = "Feralas";
		BLUE.."A) Entrance";
		BLUE.."B) Pylons";
		GREY.."1) Shen'dralar Ancient";
		GREY.."2) Tendris Warpwood";
		GREY.."3) Illyanna Ravenoak";
		GREY.."4) Magister Kalendris";
		GREY.."5) Tsu'Zee (Rare)";
		GREY.."6) Immol'thar";
		GREY..INDENT.."Lord Hel'nurath";
		GREY.."7) Prince Tortheldrin";
		GREY.."8) Dire Maul (North)";
		GREN.."1') Library";
	};
	OnyxiasLair = {
		ZoneName = "Onyxia's Lair";
		Acronym = "Ony";
		Location = "Dustwallow Marsh";
		BLUE.."A) Entrance";
		GREY.."1) Onyxian Warders";
		GREY.."2) Whelp Eggs";
		GREY.."3) Onyxia";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Fire";
	};
	TheTempleofAhnQiraj = {
		ZoneName = "The Temple of Ahn'Qiraj";
		Acronym = "AQ40";
		Location = "Silithus";
		BLUE.."A) Entrance";
		GREY.."1) The Prophet Skeram (Outside)";
		GREY.."2) Vem & Co (Optional)";
		GREY.."3) Battleguard Sartura";
		GREY.."4) Fankriss the Unyielding";
		GREY.."5) Viscidus (Optional)";
		GREY.."6) Princess Huhuran";
		GREY.."7) Twin Emperors";
		GREY.."8) Ouro (Optional)";
		GREY.."9) Eye of C'Thun / C'Thun";
		GREN.."1') Andorgos";
		GREN..INDENT.."Vethsera";
		GREN..INDENT.."Kandrostrasz";
		GREN.."2') Arygos";
		GREN..INDENT.."Caelestrasz";
		GREN..INDENT.."Merithra of the Dream";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Nature";
	};
	TheRuinsofAhnQiraj = {
		ZoneName = "The Ruins of Ahn'Qiraj";
		Acronym = "AQ20";
		Location = "Silithus";
		BLUE.."A) Entrance";
		GREY.."1) Kurinnaxx";
		GREY..INDENT.."Lieutenant General Andorov";
		GREY..INDENT.."Four Kaldorei Elites";
		GREY.."2) General Rajaxx";
		GREY..INDENT.."Captain Qeez";
		GREY..INDENT.."Captain Tuubid";
		GREY..INDENT.."Captain Drenn";
		GREY..INDENT.."Captain Xurrem";
		GREY..INDENT.."Major Yeggeth";
		GREY..INDENT.."Major Pakkon";
		GREY..INDENT.."Colonel Zerran";
		GREY.."3) Moam (Optional)";
		GREY.."4) Buru the Gorger (Optional)";
		GREY.."5) Ayamiss the Hunter (Optional)";
		GREY.."6) Ossirian the Unscarred";
		GREN.."1') Safe Room";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Nature";
	};
};

AtlasEK = {
	BlackrockDepths = {
		ZoneName = "Blackrock Depths";
		Acronym = "BRD";
		Location = "Blackrock Mountain";
		BLUE.."A) Entrance";
		GREY.."1) Lord Roccor";
		GREY.."2) Kharan Mighthammer";
		GREY.."3) Commander Gor'shak";
		GREY.."4) Marshal Windsor";
		GREY.."5) High Interrogator Gerstahn";
		GREY.."6) Ring of Law, Theldren";
		GREY.."7) Mon. of Franclorn Forgewright";
		GREY..INDENT.."Pyromancer Loregrain";
		GREY.."8) The Vault";
		GREY.."9) Fineous Darkvire";
		GREY.."10) The Black Anvil";
		GREY..INDENT.."Lord Incendius";
		GREY.."11) Bael'Gar";
		GREY.."12) Shadowforge Lock";
		GREY.."13) General Angerforge";
		GREY.."14) Golem Lord Argelmach";
		GREY.."15) The Grim Guzzler";
		GREY.."16) Ambassador Flamelash";
		GREY.."17) Panzor the Invincible (Rare)";
		GREY.."18) Summoner's Tomb";
		GREY.."19) The Lyceum";
		GREY.."20) Magmus";
		GREY.."21) Emperor Dagran Thaurissan";
		GREY..INDENT.."Princess Moira Bronzebeard";
		GREY.."22) The Black Forge";
		GREY.."23) Molten Core";
	};
	BlackrockSpireLower = {
		ZoneName = "Blackrock Spire (Lower)";
		Acronym = "LBRS";
		Location = "Blackrock Mountain";
		BLUE.."A) Entrance";
		GREY.."1) Warosh";
		GREY.."2) Roughshod Pike";
		GREY.."3) Highlord Omokk";
		GREY..INDENT.."Spirestone Battle Lord (Rare)";
		GREY.."4) Shadow Hunter Vosh'gajin";
		GREY..INDENT.."Fifth Mosh'aru Tablet";
		GREY.."5) War Master Voone";
		GREY..INDENT.."Sixth Mosh'aru Tablet";
		GREY..INDENT.."Mor Grayhoof";
		GREY.."6) Mother Smolderweb";
		GREY.."7) Crystal Fang (Rare)";
		GREY.."8) Urok Doomhowl";
		GREY.."9) Quartermaster Zigris";
		GREY.."10) Gizrul the Slavener";
		GREY..INDENT.."Halycon";
		GREY.."11) Overlord Wyrmthalak";
		GREY.."12) Bannok Grimaxe (Rare)";
		GREY.."13) Spirestone Butcher (Rare)";
	};
	BlackrockSpireUpper = {
		ZoneName = "Blackrock Spire (Upper)";
		Acronym = "UBRS";
		Location = "Blackrock Mountain";
		BLUE.."A) Entrance";
		GREY.."1) Pyroguard Emberseer";
		GREY.."2) Solakar Flamewreath";
		GREY..INDENT.."Father Flame";
		GREY.."3) Jed Runewatcher (Rare)";
		GREY.."4) Goraluk Anvilcrack";
		GREY.."5) Warchief Rend Blackhand";
		GREY..INDENT.."Gyth";
		GREY.."6) Awbee";
		GREY.."7) The Beast";
		GREY..INDENT.."Lord Valthalak";
		GREY.."8) General Drakkisath";
		GREY..INDENT.."Doomrigger's Clasp";
		GREY.."9) Blackwing Lair";
	};
	BlackwingLair = {
		ZoneName = "Blackwing Lair";
		Acronym = "BWL";
		Location = "Blackrock Spire";
		BLUE.."A) Entrance";
		BLUE.."B) Connects";
		BLUE.."C) Connects";
		GREY.."1) Razorgore the Untamed";
		GREY.."2) Vaelastrasz the Corrupt";
		GREY.."3) Broodlord Lashlayer";
		GREY.."4) Firemaw";
		GREY.."5) Ebonroc";
		GREY.."6) Flamegor";
		GREY.."7) Chromaggus";
		GREY.."8) Nefarian";
		GREY.."9) Master Elemental Shaper Krixix";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Fire";
	};
	Gnomeregan = {
		ZoneName = "Gnomeregan";
		Location = "Dun Morogh";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Back)";
		GREY.."1) Viscous Fallout (Lower)";
		GREY.."2) Grubbis";
		GREY.."3) Matrix Punchograph 3005-B";
		GREY.."4) Clean Zone";
		GREY.."5) Electrocutioner 6000";
		GREY..INDENT.."Matrix Punchograph 3005-C";
		GREY.."6) Mekgineer Thermaplugg";
		GREY.."7) Dark Iron Ambassador (Rare)";
		GREY.."8) Crowd Pummeler 9-60";
		GREY..INDENT.."Matrix Punchograph 3005-D";
	};
	MoltenCore = {
		ZoneName = "Molten Core";
		Acronym = "MC";
		Location = "Blackrock Depths";
		BLUE.."A) Entrance";
		GREY.."1) Lucifron";
		GREY.."2) Magmadar";
		GREY.."3) Gehennas";
		GREY.."4) Garr";
		GREY.."5) Shazzrah";
		GREY.."6) Baron Geddon";
		GREY.."7) Golemagg the Incinerator";
		GREY.."8) Sulfuron Harbinger";
		GREY.."9) Majordomo Executus";
		GREY.."10) Ragnaros";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Fire";
	};
	ScarletMonastery = {
		ZoneName = "Scarlet Monastery";
		Acronym = "SM";
		Location = "Tirisfal Glades";
		BLUE.."A) Entrance (Library)";
		BLUE.."B) Entrance (Armory)";
		BLUE.."C) Entrance (Cathedral)";
		BLUE.."D) Entrance (Graveyard)";
		GREY.."1) Houndmaster Loksey";
		GREY.."2) Arcanist Doan";
		GREY.."3) Herod";
		GREY.."4) High Inquisitor Fairbanks";
		GREY.."5) Scarlet Commander Mograine";
		GREY..INDENT.."High Inquisitor Whitemane";
		GREY.."6) Ironspine (Rare)";
		GREY.."7) Azshir the Sleepless (Rare)";
		GREY.."8) Fallen Champion (Rare)";
		GREY.."9) Bloodmage Thalnos";
	};
	Scholomance = {
		ZoneName = "Scholomance";
		Acronym = "Scholo";
		Location = "Western Plaguelands";
		BLUE.."A) Entrance";
		BLUE.."B) Stairway";
		BLUE.."C) Stairway";
		GREY.."1) Blood Steward of Kirtonos";
		GREY..INDENT.."Deed to Southshore";
		GREY.."2) Kirtonos the Herald";
		GREY.."3) Jandice Barov";
		GREY.."4) Deed to Tarren Mill";
		GREY.."5) Rattlegore (Lower)";
		GREY..INDENT.."Death Knight Darkreaver";
		GREY.."6) Marduk Blackpool";
		GREY..INDENT.."Vectus";
		GREY.."7) Ras Frostwhisper";
		GREY..INDENT.."Deed to Brill";
		GREY..INDENT.."Kormok";
		GREY.."8) Instructor Malicia";
		GREY.."9) Doctor Theolen Krastinov";
		GREY.."10) Lorekeeper Polkelt";
		GREY.."11) The Ravenian";
		GREY.."12) Lord Alexei Barov";
		GREY..INDENT.."Deed to Caer Darrow";
		GREY.."13) Lady Illucia Barov";
		GREY.."14) Darkmaster Gandling";
		GREN.."1') Torch Lever";
		GREN.."2') Secret Chest";
		GREN.."3') Alchemy Lab";
	};
	ShadowfangKeep = {
		ZoneName = "Shadowfang Keep";
		Acronym = "SFK";
		Location = "Silverpine Forest";
		BLUE.."A) Entrance";
		BLUE.."B) Walkway";
		BLUE.."C) Walkway";
		BLUE..INDENT.."Deathsworn Captain (Rare)";
		GREY.."1) Deathstalker Adamant";
		GREY..INDENT.."Sorcerer Ashcrombe";
		GREY..INDENT.."Rethilgore";
		GREY.."2) Razorclaw the Butcher";
		GREY.."3) Baron Silverlaine";
		GREY.."4) Commander Springvale";
		GREY.."5) Odo the Blindwatcher";
		GREY.."6) Fenrus the Devourer";
		GREY.."7) Wolf Master Nandos";
		GREY.."8) Archmage Arugal";
	};
	Stratholme = {
		ZoneName = "Stratholme";
		Acronym = "Strat";
		Location = "Eastern Plaguelands";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Side)";
		GREY.."1) Skul (Rare)";
		GREY..INDENT.."Stratholme Courier";
		GREY..INDENT.."Fras Siabi";
		GREY.."2) Hearthsinger Forresten (Varies)";
		GREY.."3) The Unforgiven";
		GREY.."4) Timmy the Cruel";
		GREY.."5) Cannon Master Willey";
		GREY.."6) Archivist Galford";
		GREY.."7) Balnazzar";
		GREY..INDENT.."Sothos";
		GREY..INDENT.."Jarien";
		GREY.."8) Aurius";
		GREY.."9) Stonespine (Rare)";
		GREY.."10) Baroness Anastari";
		GREY.."11) Nerub'enkan";
		GREY.."12) Maleki the Pallid";
		GREY.."13) Magistrate Barthilas (Varies)";
		GREY.."14) Ramstein the Gorger";
		GREY.."15) Baron Rivendare";
		GREN.."1') Crusaders' Square Postbox";
		GREN.."2') Market Row Postbox";
		GREN.."3') Festival Lane Postbox";
		GREN.."4') Elders' Square Postbox";
		GREN.."5') King's Square Postbox";
		GREN.."6') Fras Siabi's Postbox";
	};
	TheDeadmines = {
		ZoneName = "The Deadmines";
		Acronym = "VC";
		Location = "Westfall";
		BLUE.."A) Entrance";
		BLUE.."B) Exit";
		GREY.."1) Rhahk'Zor";
		GREY.."2) Miner Johnson (Rare)";
		GREY.."3) Sneed";
		GREY.."4) Gilnid";
		GREY.."5) Defias Gunpowder";
		GREY.."6) Captain Greenskin";
		GREY..INDENT.."Edwin VanCleef";
		GREY..INDENT.."Mr. Smite";
		GREY..INDENT.."Cookie";
	};
	TheStockade = {
		ZoneName = "The Stockade";
		Location = "Stormwind City";
		BLUE.."A) Entrance";
		GREY.."1) Targorr the Dread (Varies)";
		GREY.."2) Kam Deepfury";
		GREY.."3) Hamhock";
		GREY.."4) Bazil Thredd";
		GREY.."5) Dextren Ward";
		GREY.."6) Bruegal Ironknuckle (Rare)";
	};
	TheSunkenTemple = {
		ZoneName = "The Sunken Temple";
		Acronym = "ST";
		Location = "Swamp of Sorrows";
		BLUE.."A) Entrance";
		BLUE.."B) Stairway";
		BLUE.."C) Troll Minibosses (Upper)";
		GREY.."1) Altar of Hakkar";
		GREY..INDENT.."Atal'alarion";
		GREY.."2) Dreamscythe";
		GREY..INDENT.."Weaver";
		GREY.."3) Avatar of Hakkar";
		GREY.."4) Jammal'an the Prophet";
		GREY..INDENT.."Ogom the Wretched";
		GREY.."5) Morphaz";
		GREY..INDENT.."Hazzas";
		GREY.."6) Shade of Eranikus";
		GREY..INDENT.."Essence Font";
		GREN.."1'-6') Statue Activation Order";
	};
	Uldaman = {
		ZoneName = "Uldaman";
		Acronym = "Ulda";
		Location = "Badlands";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Back)";
		GREY.."1) Baelog";
		GREY.."2) Remains of a Paladin";
		GREY.."3) Revelosh";
		GREY.."4) Ironaya";
		GREY.."5) Obsidian Sentinel";
		GREY.."6) Annora (Master Enchanter)";
		GREY.."7) Ancient Stone Keeper";
		GREY.."8) Galgann Firehammer";
		GREY.."9) Grimlok";
		GREY.."10) Archaedas (Lower)";
		GREY.."11) The Discs of Norgannon";
		GREY..INDENT.."Ancient Treasure (Lower)";
	};
	ZulGurub = {
		ZoneName = "Zul'Gurub";
		Acronym = "ZG";
		Location = "Stranglethorn Vale";
		BLUE.."A) Entrance";
		GREY.."1) High Priestess Jeklik (Bat)";
		GREY.."2) High Priest Venoxis (Snake)";
		GREY.."3) High Priestess Mar'li (Spider)";
		GREY.."4) Bloodlord Mandokir (Raptor, Optional)";
		GREY.."5) Edge of Madness (Optional)";
		GREY..INDENT.."Gri'lek, of the Iron Blood";
		GREY..INDENT.."Hazza'rah, the Dreamweaver";
		GREY..INDENT.."Renataki, of the Thousand Blades";
		GREY..INDENT.."Wushoolay, the Storm Witch";
		GREY.."6) Gahz'ranka (Optional)";
		GREY.."7) High Priest Thekal (Tiger)";
		GREY.."8) High Priestess Arlokk (Panther)";
		GREY.."9) Jin'do the Hexxer (Undead, Optional)";
		GREY.."10) Hakkar";
		GREN.."1') Muddy Churning Waters";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Nature";
	};
	Naxxramas = {
		ZoneName = "Naxxramas";
		Acronym = "Nax";
		Location = "Stratholme";
		BLUE.."Abomination Wing";
		BLUE..INDENT.."1) Patchwerk";
		BLUE..INDENT.."2) Grobbulus";
		BLUE..INDENT.."3) Gluth";
		BLUE..INDENT.."4) Thaddius";
		ORNG.."Spider Wing";
		ORNG..INDENT.."1) Anub'Rekhan";
		ORNG..INDENT.."2) Grand Widow Faerlina";
		ORNG..INDENT.."3) Maexxna";
		_RED.."Deathknight Wing";
		_RED..INDENT.."1) Instructor Razuvious";
		_RED..INDENT.."2) Gothik the Harvester";
		_RED..INDENT.."3) The Four Horsemen";
		_RED..INDENT..INDENT.."Thane Korth'azz";
		_RED..INDENT..INDENT.."Lady Blaumeux";
		_RED..INDENT..INDENT.."Highlord Mograine";
		_RED..INDENT..INDENT.."Sir Zeliek";
		PURP.."Necro Wing";
		PURP..INDENT.."1) Noth the Plaguebringer";
		PURP..INDENT.."2) Heigan the Unclean";
		PURP..INDENT.."3) Loatheb";
		GREN.."Frostwyrm Lair";
		GREN..INDENT.."1) Sapphiron";
		GREN..INDENT.."2) Kel'Thuzad";
		"";
		"";
		ORNG.."Damage: Frost";
	};
};

AtlasBG = {
	AlteracValleyNorth = {
		ZoneName = "Alterac Valley (North)";
		Location = "Alterac Mountains";
		BLUE.."A) Entrance";
		BLUE.."B) Dun Baldar (Alliance)";
		_RED.."1) Stormpike Aid Station";
		_RED.."2) Stormpike Graveyard";
		_RED.."3) Stonehearth Graveyard";
		_RED.."4) Snowfall Graveyard";
		ORNG.."5) Dun Baldar North Bunker";
		GREY..INDENT.."Wing Commander Mulverick (Horde)";
		ORNG.."6) Dun Baldar South Bunker";
		ORNG.."7) Icewing Bunker";
		GREY..INDENT.."Wing Commander Guse (Horde)";
		GREY..INDENT.."Commander Karl Philips (Alliance)";
		ORNG.."8) Stonehearth Outpost (Balinda)";
		ORNG.."9) Stonehearth Bunker";
		GREY.."10) Irondeep Mine";
		GREY.."11) Icewing Cavern";
		GREY.."12) Steamsaw (Horde)";
		GREY.."13) Wing Commander Jeztor (Horde)";
		GREY.."14) Ivus the Forest Lord (Summon Zone)";
		"";
		"";
		"";
		"";
		"";
		_RED.."Red:"..BLUE.." Graveyards, Capturable Areas";
		ORNG.."Orange:"..BLUE.." Bunkers, Towers, Destroyable Areas";
		GREY.."White:"..BLUE.." Assault NPCs, Quest Areas";
	};
	AlteracValleySouth = {
		ZoneName = "Alterac Valley (South)";
		Location = "Hillsbrad Foothills";
		BLUE.."A) Entrance";
		BLUE.."B) Frostwolf Keep (Horde)";
		_RED.."1) Frostwolf Releif Hut";
		_RED.."2) Frostwolf Graveyard";
		_RED.."3) Iceblood Graveyard";
		ORNG.."4) West Frostwolf Tower";
		ORNG.."5) East Frostwolf Tower";
		GREY..INDENT.."Wing Commander Ichman (Alliance)";
		ORNG.."6) Tower Point";
		GREY..INDENT.."Wing Commander Slidore (Alliance)";
		GREY..INDENT.."Commander Louis Philips (Horde)";
		ORNG.."7) Iceblood Tower";
		ORNG.."8) Iceblood Garrison (Galvangar)";
		GREY.."9) Wildpaw Cavern";
		GREY.."10) Wolf Rider Commander";
		GREY.."11) Wing Commander Vipore (Alliance)";
		GREY.."12) Coldtooth Mine";
		GREY.."13) Steamsaw (Alliance)";
		GREY.."14) Lokholar the Ice Lord (Summon Zone)";
		"";
		"";
		"";
		"";
		"";
		_RED.."Red:"..BLUE.." Graveyards, Capturable Areas";
		ORNG.."Orange:"..BLUE.." Bunkers, Towers, Destroyable Areas";
		GREY.."White:"..BLUE.." Assault NPCs, Quest Areas";
	};
	ArathiBasin = {
		ZoneName = "Arathi Basin";
		Location = "Arathi Highlands";
		BLUE.."A) Trollbane Hall (Alliance)";
		BLUE.."B) Defiler's Den (Horde)";
		GREY.."1) Stables";
		GREY.."2) Gold Mine";
		GREY.."3) Smithy";
		GREY.."4) Lumber Mill";
		GREY.."5) Farm";
	};
	WarsongGulch = {
		ZoneName = "Warsong Gulch";
		Location = "Ashenvale / The Barrens";
		BLUE.."A) Silverwing Hold (Alliance)";
		BLUE.."B) Warsong Lumber Mill (Horde)";
	};
};

AtlasFP = {
	FPAllianceEast = {
		ZoneName = "Alliance (East)";
		Location = "Eastern Kingdoms";
		GREY.."1) Light's Hope Chapel, ".._RED.."Eastern Plaguelands";
		GREY.."2) Chillwind Post, ".._RED.."Western Plaguelands";
		GREY.."3) Aerie Peak, ".._RED.."The Hinterlands";
		GREY.."4) Southshore, ".._RED.."Hillsbrad Foothills";
		GREY.."5) Refuge Point, ".._RED.."Arathi Highlands";
		GREY.."6) Menethil Harbor, ".._RED.."Wetlands";
		GREY.."7) Ironforge, ".._RED.."Dun Morogh";
		GREY.."8) Thelsamar, ".._RED.."Loch Modan";
		GREY.."9) Thorium Point, ".._RED.."Searing Gorge";
		GREY.."10) Morgan's Vigil, ".._RED.."Burning Steppes";
		GREY.."11) Stormwind, ".._RED.."Elwyn Forest";
		GREY.."12) Lakeshire, ".._RED.."Redridge Mountains";
		GREY.."13) Sentinel Hill, ".._RED.."Westfall";
		GREY.."14) Darkshire, ".._RED.."Duskwood";
		GREY.."15) Netherguard Keep, ".._RED.."The Blasted Lands";
		GREY.."16) Booty Bay, ".._RED.."Stranglethorn Vale";
	};
	FPAllianceWest = {
		ZoneName = "Alliance (West)";
		Location = "Kalimdor";
		GREY.."1) Rut'Theran Village, ".._RED.."Teldrassil";
		GREY.."2) Shrine of Remulos, ".._RED.."Moonglade";
		GREY.."3) Everlook, ".._RED.."Winterspring";
		GREY.."4) Auberdine, ".._RED.."Darkshore";
		GREY.."5) Talonbranch Glade, ".._RED.."Felwood";
		GREY.."6) Stonetalon Peak, ".._RED.."Stonetalon Mountains";
		GREY.."7) Astranaar, ".._RED.."Ashenvale Forest";
		GREY.."8) Talrendis Point, ".._RED.."Azshara";
		GREY.."9) Nijel's Point, ".._RED.."Desolace";
		GREY.."10) Ratchet, ".._RED.."The Barrens";
		GREY.."11) Theramore Isle, ".._RED.."Dustwallow Marsh";
		GREY.."12) Feathermoon Stronghold, ".._RED.."Ferelas";
		GREY.."13) Thalanaar, ".._RED.."Ferelas";
		GREY.."14) Marshall's Refuge, ".._RED.."Un'Goro Crater";
		GREY.."15) Cenarion Hold, ".._RED.."Silithus";
		GREY.."16) Gadgetzan, ".._RED.."Tanaris Desert";
		"";
		GREN.."Green: Druid-only";
	};
	FPHordeEast = {
		ZoneName = "Horde (East)";
		Location = "Eastern Kingdoms";
		GREY.."1) Light's Hope Chapel, ".._RED.."Eastern Plaguelands";
		GREY.."2) Undercity, ".._RED.."Tirisfal Glade";
		GREY.."3) The Sepulcher, ".._RED.."Silverpine Forest";
		GREY.."4) Tarren Mill, ".._RED.."Hillsbrad Foothills";
		GREY.."5) Revantusk Village, ".._RED.."The Hinterlands";
		GREY.."6) Hammerfall, ".._RED.."Arathi Highlands";
		GREY.."7) Thorium Point, ".._RED.."Searing Gorge";
		GREY.."8) Kargath, ".._RED.."Badlands";
		GREY.."9) Flame Crest, ".._RED.."Burning Steppes";
		GREY.."10) Stonard, ".._RED.."Swamp of Sorrows";
		GREY.."11) Grom'Gol, ".._RED.."Stranglethorn Vale";
		GREY.."12) Booty Bay, ".._RED.."Stranglethorn Vale";
	};
	FPHordeWest = {
		ZoneName = "Horde (West)";
		Location = "Kalimdor";
		GREY.."1) Shrine of Remulos, ".._RED.."Moonglade";
		GREY.."2) Everlook, ".._RED.."Winterspring";
		GREY.."3) Bloodvenom Post, ".._RED.."Felwood";
		GREY.."4) Zoram'gar Outpost, ".._RED.."Ashenvale";
		GREY.."5) Valormok, ".._RED.."Azshara";
		GREY.."6) Splintertree Post, ".._RED.."Ashenvale";
		GREY.."7) Orgrimmar, ".._RED.."Durotar";
		GREY.."8) Sunrock Retreat, ".._RED.."Stonetalon Mountains";
		GREY.."9) Crossroads, ".._RED.."The Barrens";
		GREY.."10) Ratchet, ".._RED.."The Barrens";
		GREY.."11) Shadowprey Village, ".._RED.."Desolace";
		GREY.."12) Thunder Bluff, ".._RED.."Mulgore";
		GREY.."13) Camp Taurajo, ".._RED.."The Barrens";
		GREY.."14) Brackenwall Village, ".._RED.."Dustwallow Marsh";
		GREY.."15) Camp Mojache, ".._RED.."Ferelas";
		GREY.."16) Freewind Post, ".._RED.."Thousand Needles";
		GREY.."17) Marshall's Refuge, ".._RED.."Un'Goro Crater";
		GREY.."18) Cenarion Hold, ".._RED.."Silithus";
		GREY.."19) Gadgetzan, ".._RED.."Tanaris Desert";
		"";
		GREN.."Green: Druid-only";
	};
};

AtlasDL = {
	DLEast = {
		ZoneName = "Dungeon Locations (East)";
		Location = "Eastern Kingdoms";
		BLUE.."A) Alterac Valley, ".._RED.."Alterac / Hillsbrad";
		BLUE.."B) Arathi Basin, ".._RED.."Arathi Highlands";
		GREY.."1) Scarlet Monastery, ".._RED.."Tirisfal Glade";
		GREY.."2) Stratholme, ".._RED.."Eastern Plaguelands";
		GREY..INDENT.."Naxxramas, ".._RED.."Stratholme";
		GREY.."3) Scholomance, ".._RED.."Western Plaguelands";
		GREY.."4) Shadowfang Keep, ".._RED.."Silverpine Forest";
		GREY.."5) Gnomeregan, ".._RED.."Dun Morogh";
		GREY.."6) Uldaman, ".._RED.."Badlands";
		GREY.."7) Blackwing Lair, ".._RED.."Blackrock Spire";
		GREY..INDENT.."Blackrock Depths, ".._RED.."Blackrock Mountain";
		GREY..INDENT.."Blackrock Spire, ".._RED.."Blackrock Mountain";
		GREY..INDENT.."Molten Core, ".._RED.."Blackrock Depths";
		GREY.."8) The Stockade, ".._RED.."Stormwind City";
		GREY.."9) The Deadmines, ".._RED.."Westfall";
		GREY.."10) Zul'Gurub, ".._RED.."Stranglethorn Vale";
		GREY.."11) The Sunken Temple, ".._RED.."Swamp of Sorrows";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		BLUE.."Blue:"..ORNG.." Battlegrounds";
		GREY.."White:"..ORNG.." Instances";
	};
	DLWest = {
		ZoneName = "Dungeon Locations (West)";
		Location = "Kalimdor";
		BLUE.."A) Warsong Gulch, ".._RED.."The Barrens / Ashenvale";
		GREY.."1) Blackfathom Deeps, ".._RED.."Ashenvale";
		GREY.."2) Ragefire Chasm, ".._RED.."Orgrimmar";
		GREY.."3) Wailing Caverns, ".._RED.."The Barrens";
		GREY.."4) Maraudon, ".._RED.."Desolace";
		GREY.."5) Dire Maul, ".._RED.."Feralas";
		GREY.."6) Razorfen Kraul, ".._RED.."The Barrens";
		GREY.."7) Razorfen Downs, ".._RED.."The Barrens";
		GREY.."8) Onyxia's Lair, ".._RED.."Dustwallow Marsh";
		GREY.."9) Zul'Farrak, ".._RED.."Tanaris";
		GREY.."10) The Ruins of Ahn'Qiraj, ".._RED.."Silithus";
		GREY..INDENT.."The Temple of Ahn'Qiraj, ".._RED.."Silithus";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		BLUE.."Blue:"..ORNG.." Battlegrounds";
		GREY.."White:"..ORNG.." Instances";
	};
};

AtlasRE = {
	Azuregos = {
		ZoneName = "Azuregos";
		Location = "Azshara";
		GREY.."1) Azuregos";
	};
	FourDragons = {
		ZoneName = "Dragons of Nightmare";
		Location = "Various";
		GREN..INDENT.."Lethon";
		GREN..INDENT.."Emeriss";
		GREN..INDENT.."Taerar";
		GREN..INDENT.."Ysondre";
		"";
		GREY.."1) Duskwood";
		GREY.."2) The Hinterlands";
		GREY.."3) Feralas";
		GREY.."4) Ashenvale";
	};
	Kazzak = {
		ZoneName = "Lord Kazzak";
		Location = "Blasted Lands";
		GREY.."1) Lord Kazzak";
		GREY.."2) Nethergarde Keep";
	};
};

AtlasINTRO = {

	INTRO = {
			ZoneName = "Intro";
			Location = "Azeroth";
		_RED.._TAB.._TAB.._TAB.."Welcome To The Joana's Guide Atlas Suite";
		GREY.." ";
		GREY.." ";
		GREY.."Hello, I play the Character".._RED.." Bennylava"..GREY.." on the Feenix server"..GREN.." Emerald Dream";
		GREY.."This Addon was created for an esier way to access the guide, instead of having to minimize the game.";
		GREY.." ";
		GREY.." ";
		GREY.."For Any Issues, Corrections, Suggestions or Donations please contact me via";
		GREY.."Email - "..GREN.."BennylavaED@gmail.com";
		GREY.."In Game - "..GREN.."Bennylava";
		GREY.." ";
		_RED.."Color Chart";
		BLUE.."NPC";
		GREN.."Item";
		_RED.."Location";
		ORNG.."Quest";
		PURP.."Level";
		YELO.."On Map";
		GREY.." ";
		GREY.._TAB.._TAB.._TAB.._TAB.."A few things you should know before you start leveling";
		GREY.._TAB.._TAB.."Make sure to kill stuff on your way to the next destination";
		GREY.._TAB.._TAB.."If you fall behind in levels just run a level appropriate instance";
		GREY.._TAB.."This Guide works best if started from the beginning";
		GREY.." ";
		GREY.." ";		
		_RED.._TAB.._TAB.._TAB.._TAB.."Coming Soon";
		BLUE.._TAB.._TAB.._TAB.."A Complete ReVamp of The Horde Guide";
		BLUE.._TAB.._TAB.._TAB.."Class BIS Guide";
	};	
		};

AtlasTLVL = {

	tauren1 = {
		ZoneName = "1-6";
		Location = "Mulgore";
		YELO.."01)"..GREY.." Talk to "..BLUE.."Grull Hawkwing (44,77)"..GREY.." and accept "..ORNG.."The Hunt Begins "..GREY.."then go outside the area kill";
		BLUE.."Plainstriders "..GREY.."and loot "..GREN.."7 feathers "..GREY.."and "..GREN.."7 meat"..GREY..". Run back turn it in and accept "..ORNG.."The Hunt Continues";
		GREY.."and accept "..ORNG.."Etched Note"..GREY..".";
		GREY.."02) Talk to your class trainer and turn in "..ORNG.."Etched Note "..GREY.."then talk to "..BLUE.."Chief Hawkwind "..GREY.."and accept";
		ORNG.."A Humble Task"..GREY..".";
		YELO.."03)"..GREY.." Go to (50,81) and turn in "..ORNG.."A Humble Task "..GREY.."at "..BLUE.."Greatmother Hawkwind"..GREY..", accept the next part then click";
		GREY.."the water pouch on the fountain, then run back and turn in "..ORNG.."A Humble Task "..GREY.."and accept";
		ORNG.."Rites of the Earthmother"..GREY..".";
		GREY.."04) Grind to "..PURP.."level 3 "..GREY.."then run back to ".._RED.."Camp Narache "..GREY.."and accept "..ORNG.."Break Sharptusk!"..GREY..".";
		YELO.."05)"..GREY.." South of the camp around (44,88) kill 10 "..BLUE.."Cougars "..GREY.."and loot their "..GREN.."pelts "..GREY.."then run to (42,92) and";
		GREY.."talk to "..BLUE.."Seer Graytongue "..GREY.."and turn in "..ORNG.."Rite of the Earthmother "..GREY.."and accept "..ORNG.."Rite of Strength"..GREY..".";
		YELO.."06)"..GREY.." Run back to ".._RED.."Camp Narache "..GREY.."to "..BLUE.."Chief Hawkwind (44,77) "..GREY.."turn in "..ORNG.."The Hunt Continues "..GREY.."and accept"; 
		ORNG.."The Battleboars "..GREY.."grinding mobs along the way until you hit "..PURP.."level 4"..GREY..".";
		YELO.."07)"..GREY.." Run to (53,81) and kill "..BLUE.."Battleboar "..GREY.."until you have "..GREN.."8 Flank "..GREY.."and "..GREN.."8 Snout"..GREY..".";
		YELO.."08)"..GREY.." Run to the cave at (58,85) kill the "..BLUE.."Quilboar "..GREY.."for "..GREN.."12 Belts "..GREY.."as you make your way to the tent";
		GREY.."at (64,77) and kill "..BLUE.."Sharptusk "..GREY.."making sure to loot him for "..ORNG.."Break Sharptusk! "..GREY.."then run to the little";
		GREY.."cave at (63,82) and on the inside is a "..GREN.."Dirt-stained Map"..GREY..". Use it to start Attack on "..ORNG.."Camp Narache";
		GREY.."09) Hearth back to ".._RED.."Camp Narache "..GREY.."go to "..BLUE.."Chief Hawkwind (44,77) "..GREY.."and turn in "..ORNG.."The Battleboars"..GREY..","; 
		ORNG.."Attack on Camp Narache "..GREY.."and "..ORNG.."Rite of Strength "..GREY.."then accept "..ORNG.."Rites of the Earthmother part 2"..GREY..".";
		GREY.."10) Talk to "..BLUE.."Brave Windfeather "..GREY.."and turn in "..ORNG.."Break Sharptusk!";
		YELO.."11)"..GREY.." Go to (38,81) and speak to "..BLUE.."Antur Fallow "..GREY.."and accept "..ORNG.."A Task Unfinished "..GREY.."then continue following";
		GREY.."the road to ".._RED.."Bloodhoof Village"..GREY..".";
		YELO.."12)"..GREY.." Talk to "..BLUE.."Innkeeper Kauth "..GREY.."and turn in "..ORNG.."A Task Unfinished "..GREY.."and make ".._RED.."Bloodhoof Village "..GREY.."your home";
		GREY.."You should be "..PURP.."level 6 now"..GREY..", if not grind the little exp you should need until you are";
	};
	

	tauren2 = {
		ZoneName = "6-10";
		Location = "Mulgore"; 
		GREY.."01) Talk to "..BLUE.."Baine Bloodhoof "..GREY.."and turn in "..ORNG.."Rites of the Earthmother "..GREY.."accept "..ORNG.."Sharing the Land"..GREY..",";
		ORNG.."Rite of Vision "..GREY.."and "..ORNG.."Dwarven Digging"..GREY..".";
		GREY.."02) Accept "..ORNG.."Poison Water "..GREY.."from "..BLUE.."Mull Thunderhorn (48,60)"..GREY..". Talk to "..BLUE.."Zarlman Two-Moons (47,57) "..GREY.."turn in";
		ORNG.."Rite of Vision "..GREY.."and accept "..ORNG.."part 2"..GREY..".";
		GREY.."03) Talk to "..BLUE.."Ruul Eagletalon (47,62) "..GREY.."accept "..ORNG.."Dangers of the Windfury "..GREY.."then talk to "..BLUE.."Harken Windtotem (48,59)";
		GREY.."and accept "..ORNG.."Swoop Hunting"..GREY..". Talk to "..BLUE.."Maur Raincaller (47,57) "..GREY.."accept "..ORNG.."Mazzranache";
		GREY.."04) Go southeast to (51,66) and kill "..BLUE.."Trophy Swops "..GREY.."for "..GREN.."8 Quills"..GREY..", "..BLUE.."Prairie Wolfs "..GREY.."for "..GREN.."6 Paws"..GREY..",";
		BLUE.."Plainstriders "..GREY.."for "..GREN.."4 Talons "..GREY.."and underneath trees loot "..GREN.."2 Ambercorns "..GREY.."and "..GREN.."2 Well Stones "..GREY.."near the well(53,64)";
		GREY.."05) Go to (52,70) and kill the "..BLUE.."Palemane "..GREY.."for "..ORNG.."Sharing the Land"..GREY..".";
		GREY.."06) At (33,41) kill "..BLUE.."Harpies "..GREY.."for "..GREN.."8 Windfury Talons"..GREY..". Then to (31,50) and acquire "..GREN.."broken tools "..GREY.."for";
		ORNG.."Dwarven Digging"..GREY..".";
		GREY.."07) Then go to (59,62) and accept "..ORNG.."The Ravaged Caravan "..GREY.."from "..BLUE.."Morin Cloudstalker"..GREY..". Go to (54,48) and";
		GREY.."click on the crates to turn it in then accept "..ORNG.."the second part"..GREY..". Run back to "..BLUE.."Morin Cloudstalker (59,62)";
		GREY.."and turn it in then accept "..ORNG.."The Venture Co. "..GREY.."and "..ORNG.."Supervisor Fizsprocket"..GREY..".";
		GREY.."08) Grind to "..PURP.."level 8 "..GREY.."if you aren't quite there yet.";
		GREY.."09) Go back to ".._RED.."Bloodhoof Village "..GREY.."and turn in "..ORNG.."Poison Water"..GREY..", "..ORNG.."Dangers of the Windfury"..GREY..", "..ORNG.."Swoop Hunting";
		GREY.."then turn in "..ORNG.."Rite of Vision "..GREY.."and accept the "..ORNG.."next part"..GREY..". Accept "..ORNG.."Winterhoof Cleansing"..GREY..".";
		GREY.."10) Go to (53,67) and cleanse it using "..GREN.."Thunderhorn's item"..GREY..". Then run back to "..BLUE.."Mull Thunderhorn (49,60)";
		GREY.."and turn in "..ORNG.."Winterhoof Cleansing "..GREY.."and accept "..ORNG.."Thunderhorn Totem"..GREY..".";
		GREY.."11) Go to (47,57) and drink "..GREN.."Water of the Seers "..GREY.."in your backpack, then follow the "..BLUE.."wolf spirit"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Rite of Vision (33,36) "..GREY.."when the "..BLUE.."spirit "..GREY.."stops and accept "..ORNG.."Rite of Wisdom"..GREY..".";
		GREY.."13) Continue to (59,25) to "..BLUE.."Lorekeeper Raintotem "..GREY.."and accept "..ORNG.."A Sacred Burial"..GREY..".";
		GREY.."14) Go to the "..BLUE.."Ancestral Spirit (60,52) "..GREY.."turn in "..ORNG.."Rite of Wisdom "..GREY.."accept "..ORNG.."Journey into Thunder Bluff "..GREY.."and";
		GREY.."kill "..BLUE.."8 Bristleback Interlopers "..GREY.."nearby and once done speak to "..BLUE.."Lorekeeper Raintotem (59,25) "..GREY.."and turn in";
		ORNG.."A Sacred Burial"..GREY..".";
		GREY.."15) Go to ".._RED.."Thunder Bluff "..GREY.."to the Forge at (39,55) and destroy the "..GREN.."Prospector's Picks "..GREY.."here by clicking";
		GREY.."on them to destroy them.";



	};		

	tauren3 = {
		ZoneName = "10-12";
		Location = "Mulgore"; 
		GREY.."16) Go to (69,51) and talk to "..BLUE.."Cairne Bloodhoof "..GREY.."to turn in "..ORNG.."Journey into Thunder Bluff "..GREY.."accept";
		ORNG.."Rise of the Earthmother"..GREY..".";
		GREY.."You should now be "..PURP.."level 10"..GREY..", if not grind to it. Its time to do your class quest."; ;			
		GREY.."01) Hearth to ".._RED.."Bloodhoof Village"..GREY..". Talk to "..BLUE.."Skorm Whitecloud (46,60) "..GREY.."accept "..ORNG.."The Hunter's Way"..GREY..".";
		GREY.."02) Turn in "..ORNG.."Dwarven Digging "..GREY.."and "..ORNG.."Thunderhorn Totem "..GREY.."then accept "..ORNG.."Thunderhorn Cleansing"..GREY..".";
		GREY.."03) Go to 48,60 and speak to "..BLUE.."Baine Bloodhoof "..GREY.."and turn in "..ORNG.."Sharing the Land"..GREY..".";
		GREY.."04) Go to the Water Well at (49,60) and use it to cleanse your "..GREN.."totem "..GREY.."in your inventory.";
		GREY.."05) Go to (45,16) and kill "..BLUE.."Flatland Prowlers "..GREY.."until you have "..GREN.."4 claws"..GREY..".";
		GREY.."06) Go to (61,47) and you should see the ".._RED.."Venture Co. Mine"..GREY..". Kill "..BLUE.."14 Workers "..GREY.."and "..BLUE.."6 Supervisors"..GREY..".";
		GREY.."Take a right at the first intersection and you should see "..BLUE.."Fizsprocket"..GREY..", then kill him.";
		GREY.."07) Go to (59,62) and turn in "..ORNG.."The Venture Co. "..GREY.."and "..ORNG.."Supervisor Fizsprocket"..GREY..".";
		GREY.."08) Go to (49,60) and turn in "..ORNG.."Thunderhorn Cleansing "..GREY.."then accept "..ORNG.."Wildmane Totem"..GREY..". Go to (69,51)";
		GREY.."and turn in "..ORNG.."Rites of the Earthmother"..GREY..".";
		GREY.."09) Go to (46,60) and turn in "..ORNG.."The Hunters Way"..GREY..".";
		GREY.."10) Go to (38,60) in ".._RED.."Thunder Bluff "..GREY.."and you should see "..BLUE.."Eyahn Eagletalon"..GREY..". Accept "..ORNG.."Preparation for Ceremony"..GREY..".";
		GREY.."11) Go behind ".._RED.."Thunder Buff "..GREY.."and kill "..BLUE.."Windfury Matriarchs "..GREY.."and "..BLUE.."Windfury Sorceresses "..GREY.."until you have";
		GREN.."6 Azure "..GREY.."and "..GREN.."6 Bronze Feathers "..GREY.."then run back to (38,60) and turn it in.";
		GREY.."12) Run back to ".._RED.."Bloodhoof Village "..GREY.."make sure you kill "..BLUE.."Prairie Alphas "..GREY.."on the way until you have "..GREN.."8 Teeth"..GREY..".";
		GREY.."13) Go to (49,60) and turn in "..ORNG.."Windmane Totem"..GREY..".";
		GREY.."14) You should be "..PURP.."level 12 "..GREY.."now, if not grind to it then run into ".._RED.."The Barrens "..GREY.."following the path";
		GREY.."until you come to ".._RED.."Camp Taurajo"..GREY..". Talk to "..BLUE.."Kirge Sternhorn (44,58) "..GREY.."and accept "..ORNG.."Journey to the Crossroads";
		GREY.."and get the Flight Path.";
		GREY.."15) Run north up the road until you get to ".._RED.."The Crossroads "..GREY.."and turn in "..ORNG.."Journey to the Crossroads";
		GREY.."get the Flight Path.";
	};	
	
		};
		
AtlasULVL = {		

	undead1 = {
		ZoneName = "1-6";
		Location = "DeathKnell"; 
		GREY.."01) Run up the steps and exit the Crypt.";
		GREY.."02) In front of you from "..BLUE.."Undertaker Mordo "..GREY.."accept the quest "..ORNG.."Rude Awakening "..GREY.."then run down the hill and";
		GREY.."turn it in at "..BLUE.."Shadow Priest Sarvis"..GREY..".";
		GREY.."03) Accept "..ORNG.."The Mindless Ones "..GREY.."and if you are a Warlock accept "..ORNG.."Piercing the Veil"..GREY..".";
		GREY.."04) Exit the building and to your left down the hill complete "..ORNG.."The Mindless Ones "..GREY.."and "..ORNG.."Piercing the Veil";
		GREY.."then run back and turn them in.";
		GREY.."05) Accept "..ORNG.."Rattling the Rattlecages"..GREY..", "..ORNG.."Tainted Scroll"..GREY..", and "..ORNG.."The Damned"..GREY..".";
		GREY.."06) Turn in "..ORNG.."Tainted Scroll "..GREY.."at your class trainer then get new spells/skills.";
		GREY.."07) Complete "..ORNG.."The Damned "..GREY.."along with "..ORNG.."Rattling the Rattlecages "..GREY.."these are found out around the village,";
		GREY.."once down turn them in and accept "..ORNG.."Marla's Last Wish"..GREY..".";
		GREY.."08) Go outside the church, accept "..ORNG.."Night Web's Hollow "..GREY.."and "..ORNG.."Scavenging Deathknell"..GREY..".";
		GREY.."09) Complete "..ORNG.."Scavenging Deathknell "..GREY.."which are found around and inside buildings in the village then";
		GREY.."run down to (36, 62) and kill "..BLUE.."Samuel Fipps "..GREY.."for "..ORNG.."Marla's Last Wish"..GREY..".";
		GREY.."10) Run to the cave at (27,59) and do "..ORNG.."Night Web's Hollow "..GREY.."then run to the cemetery in the village to";
		GREY.."(31,64) and click the grave to bury the skull.";
		GREY.."11) Run back to town and turn in all the quests which are "..ORNG.."Night Web's Hollow"..GREY..", "..ORNG.."Scavenging Deathknell";
		GREY.."and  "..ORNG.."Marla's Last Wish"..GREY..". If you are a Priest accept "..ORNG.."In Favor of Darkness "..GREY.."which requires "..PURP.."level 5";
		GREY.."12) Accept "..ORNG.."The Scarlet Crusade "..GREY.."outside the church and go do it at (35,68) then run back and turn in.";
		GREY.."13) Accept "..ORNG.."The Red Messenger "..GREY.."and go do it at (36,68) killing "..BLUE.."Meven Korgal "..GREY.."then run back and turn in.";
		GREY.."14) Accept "..ORNG.."Vital Intelligence "..GREY.."then get new Skills if you are "..PURP.."level 6"..GREY..", if not grind until "..PURP.."level 6"; 
		GREY.."15) Run to the north of ".._RED.."Death Knell "..GREY.."and accept "..ORNG.."A Rogue's Deal "..GREY.."then leave the starting area.";
	};		
		

	undead2 = {
		ZoneName = "6-10";
		Location = "Tirisfal Glades"; 		
		GREY.."01) Continue down the hill and talk to "..BLUE.."Deathguard Simmer (41,54) "..GREY.."accept "..ORNG.."Fields of Grief "..GREY.."then go to";
		GREY.."the Pumpkin farm at (37,52) and kill any "..BLUE.."Farmers "..GREY.."in the way while you collect "..GREN.."10 Pumpkins"..GREY..".";
		GREY.."02) Go back to the road along (46,57) to "..BLUE.."Gordo "..GREY.."and accept "..ORNG.."Gordo's Task "..GREY.."then continue along the road";
		GREY.."towards ".._RED.."Brill "..GREY.."getting "..GREN.."3 Gloom Weed "..GREY.."along the way then turn it in at "..BLUE.."Junior Apothecary Holland "..GREY.."and";
		GREY.."accept "..ORNG.."Doom Weed"..GREY..".";
		GREY.."03) Stop in ".._RED.."Brill "..GREY.."(59,52) and turn in "..ORNG.."Fields of Grief "..GREY.."at "..BLUE.."Apothecary Johaan "..GREY.."then accept the "..ORNG.."next part"..GREY..".";
		GREY.."04) Turn in "..ORNG.."Vital Intelligence "..GREY.."at "..BLUE.."Executor Zygand "..GREY.."and accept "..ORNG.."At War with the Scarlet Crusade"..GREY..".";
		GREY.."05) Go into the inn and turn in "..ORNG.."A Rogue's Deal "..GREY.."at the "..BLUE.."Innkeeper "..GREY.."and make it your home. Priests turn";
		GREY.."in "..ORNG.."In Favor of Darkness "..GREY.."and accept "..ORNG.."Garments of Darkness "..GREY.."then run behind the cemetery at (59,46) and";
		GREY.."use "..GREN.."Power Word: Fortitude "..GREY.."on the guy then run back and turn it in for your robe.";
		GREY.."06) Talk to "..BLUE.."Deathguard Dillinger (58,51) "..GREY.."and accept "..ORNG.."A Putrid Task "..GREY.."then accept "..ORNG.."Wanted: Maggot Eye "..GREY.."from";
		GREY.."the "..BLUE.."Wanted sign "..GREY.."at (61,52).";
		GREY.."07) Talk to "..BLUE.."Magistrate Sevren "..GREY.."and accept "..ORNG.."Graverobbers then talk to "..BLUE.."Coleman Farthing "..GREY.."and accept";
		ORNG.."Deaths in the Family "..GREY.."and "..ORNG.."The Haunted Mills "..GREY.."then talk to "..BLUE.."Gretchen Deadmar "..GREY.."and accept "..ORNG.."The Chill of Death"..GREY..".";
		GREY.."08) Go into the Inn and in the basement turn in the "..GREN.."pumpkin "..GREY.."to finish the quest at "..BLUE.."Captured Zealot"..GREY..".";
		GREY.."09) Go back to the bridge at (53,53) and kill the "..BLUE.."Scourge "..GREY.."for "..GREN.."7 Putrid Claws "..GREY.."and keep an eye out for";
		GREY.."any "..GREN.."Gloom Weeds"..GREY..".";
		GREY.."10) Run back to the Pumpkin farm at (62,52) and just behind kill "..BLUE.."10 Scarlet Warriors "..GREY.."and any "..BLUE.."Duskbats";
		GREY.."for "..GREN.."5 pelts "..GREY.."which you can do on your way questing as well as "..BLUE.."Darkhounds "..GREY.."for "..GREN.."5 Vials of Darkhound Blood"..GREY..".";
		GREY.."11) Go back to ".._RED.."Brill "..GREY.."and speak to the "..BLUE.."Trade Supplies Merchant "..GREY.."and buy a "..GREN.."Coarse Thread"..GREY..".";
		GREY.."12) Turn in "..ORNG.."A Putrid Task "..GREY.."accept "..ORNG.."The Mills Overrun "..GREY.."and turn in "..ORNG.."The Chill of Death"..GREY..".";
		GREY.."13) You should have all the "..GREN.."Gloom Weed "..GREY.."by now so turn the quest in at "..BLUE.."Junior Apothecary Holland(58,49)";
		GREY.."and accept "..GREN.."Doom Weed"..GREY..".";
		GREY.."14) Turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."accept the "..ORNG.."next part"..GREY..". Turn in "..ORNG.."A New Plague "..GREY.."and accept "..ORNG.."part 3"..GREY..".";
		GREY.."Accept "..ORNG.."Proof of Demise"..GREY..".";
		GREY.."15) Go to (59,30) looting any "..GREN.."Doom Weed "..GREY.."along the way and whilst here kill "..BLUE.."5 Rot Hide Mongrels "..GREY.."and";
		BLUE.."Maggot Kill "..GREY.."for his "..GREN.."Paw "..GREY.."whilst collecting "..GREN.."8 Embalming Ichors "..GREY.."from the "..BLUE.."Rot Hide Mongrels "..GREY.."you kill.";


	};
	
	undead3 = {
		ZoneName = "6-10(Part 2)";
		Location = "Tirisfal Glades"; 		
		GREY.."16) Go to (55,42) and kill "..BLUE.."8 Graverobbers"..GREY..", collecting any remaining "..GREN.."Doom Weed "..GREY.."and "..GREN.."Embalming Ichors"..GREY..".";
		GREY.."17) Go just behind where you killed "..BLUE.."Maggot Eye "..GREY.."to the beach and kill "..BLUE.."Murlocs "..GREY.."until you have "..GREN.."5 scales"..GREY..".";
		GREY.."18) Go back to (57,49) to "..BLUE.."Junior Apothecary Holland "..GREY.."and turn in "..ORNG.."Doom Weed"..GREY..".";
		GREY.."19) Go back into ".._RED.."Brill "..GREY.."and turn in all quests which include "..ORNG.."A New Plague"..GREY..", "..ORNG.."Wanted: Maggot Eye "..GREY.."and"; 
		ORNG.."Graverobbers "..GREY.."then get all new quests which include "..ORNG.."A New Plague"..GREY..", "..ORNG.."Forsaken Duties "..GREY.."and "..ORNG.."The Prodical Lich"..GREY..".";
		GREY.."20) Travel to the tower at (53,66) and kill "..BLUE.."3 Scarlet Missionaries"..GREY..", "..BLUE.."3 Scarlet Zealots "..GREY.."and";
		BLUE.."Captain Parrine (51,68) "..GREY.."make sure you loot all "..GREN.."10 Scarlet Insignia Rings"..GREY..".";
		GREY.."21) Run back to ".._RED.."Brill "..GREY.."and turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."and accept the "..ORNG.."next part"..GREY..".";
		GREY.."Turn in "..ORNG.."Proof of Demise"..GREY..".";
		GREY.."You should now be "..PURP.."level 10"..GREY..", its time to do your class quest.";

	};	
	
	undead4 = {
		ZoneName = "10-12";
		Location = "Tirisfal Glades"; 	
		GREY.."01) Go to Agamand Hills (48,42).";
		GREY.."02) Kill "..BLUE.."Rattlecage Soldiers "..GREY.."and "..BLUE.."Darkeye Bonecasters "..GREY.."looting them for "..GREN.."Notched Ribs "..GREY.."and "..GREN.."Blackened Skulls"..GREY..".";
		GREY.."03) Kill "..BLUE.."Devlin Agamand (47,42)"..GREY..", Kill "..BLUE.."Nissa Agamand (49,36) "..GREY.."then kill "..BLUE.."Gregor "..GREY.."and "..BLUE.."Thurman (46,32)";
		GREY.."making sure to loot all their "..GREN.."remains"..GREY..".";
		GREY.."04) Kill "..BLUE.."Cracked Skull Soldiers "..GREY.."until they drop a "..GREN.."letter"..GREY..", then use it to start "..ORNG.."A Letter Undelivered"..GREY..".";
		GREY.."05) Go back to ".._RED.."Brill "..GREY.."and turn in "..ORNG.."A Letter Undelivered "..GREY.."and accept "..ORNG.."Speak with Sevren"..GREY..".";
		GREY.."06) Go to around (62,52) and turn in all these "..ORNG.."The Haunted Mills"..GREY..", "..ORNG.."Deaths in the Family"..GREY..", "..ORNG.."The Mills Overrun";
		GREY.."and Speak with "..BLUE.."Sevren"..GREY..".";
		GREY.."07) Run to the ".._RED.."Undercity"..GREY..".";
		GREY.."08) Go to the ".._RED.."Mage Quarter "..GREY.."and speak with "..BLUE.."Bethor Iceshard "..GREY.."and turn in "..ORNG.."The Prodical Lich (84,17)"..GREY.." then";
		GREY.."accept "..ORNG.."The Lich's Identity"..GREY..".";
		GREY.."09) You can grab any professions you want while here also such as Mining or Herbalism to make you";
		GREY.."some gold at early levels.";
		GREY.."10) Exit the ".._RED.."Undercity "..GREY.."the way you came in and go to (65,60) and turn in "..ORNG.."Forsaken Duties "..GREY.."then accept";
		ORNG.."Return to the Magistrate "..GREY.."and "..ORNG.."Rear Guard Patrol"..GREY..".";
		GREY.."11) Go to (75,61) and kill "..BLUE.."8 Bleeding Horrors "..GREY.."and "..BLUE.."8 Wandering Spirits "..GREY.."for "..ORNG.."Rear Guard Patrol "..GREY.."then run";
		GREY.."to (76,54) and kill "..BLUE.."5 Scarlet Friars "..GREY.."and "..BLUE.."Captain Vachon "..GREY.."for "..ORNG.."At War with the Scarlet Crusade"..GREY..".";
		GREY.."12) Travel east to (82,54) and kill "..BLUE.."spiders "..GREY.."until you get "..GREN.."4 Venoms"..GREY..".";
		GREY.."13) Go to ".._RED.."Brightwater Lake "..GREY.."and swim to ".._RED.."Gunther's Retreat"..GREY..", and take the "..GREN.."book "..GREY.."here (84,17) then go back";
		GREY.."to (65,60) and turn in "..ORNG.."Rear Guard Patrol"..GREY..".";
		GREY.."14) Enter the ".._RED.."Undercity"..GREY..". Go to (84,17) and turn in "..ORNG.."The Lich's Identity "..GREY.."accept "..ORNG.."Return the Book"..GREY..".";
		GREY.."15) Leave the ".._RED.."Undercity "..GREY.."and run back to ".._RED.."Brill"..GREY..".";
		GREY.."16) Turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."and accept the "..ORNG.."next part"..GREY..". Turn in "..ORNG.."A New Plague "..GREY.."accept the";
		ORNG.."next part "..GREY.."and turn in "..ORNG.."Return to the Magistrate"..GREY..". Go to the Inn in the basement and turn in "..ORNG.."A New Plague"..GREY..".";
		GREY.."17) Go to the tower up the pathway at (79,26) and kill "..BLUE.."Captain Melrache "..GREY.."for "..ORNG.."At War with the Scarlet Crusade"..GREY..".";
		GREY.."18) Go back to ".._RED.."Gunther's Retreat "..GREY.."at (68,41) and turn in "..ORNG.."Return the Book "..GREY.."and accept "..ORNG.."Proving Allegiance";
		GREY.."then take a "..GREN.."candle "..GREY.."next to you.";


	};		
	
	undead5 = {
		ZoneName = "10-12(Part 2)";
		Location = "Tirisfal Glades"; 	
		GREY.."19) At the little island just behind at (66,44) use the "..GREN.."candle "..GREY.."to summon "..BLUE.."Lillith Nefara"..GREY..", kill her";
		GREY.."then go back and turn the quest in then accept "..ORNG.."The Prodigal Lich Returns"..GREY..".";
		GREY.."20) Go back to ".._RED.."Brill "..GREY.."and turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."then run to the ".._RED.."Undercity "..GREY.."and at";
		GREY.."the ".._RED.."Mage Quarter "..GREY.."(84,17) turn in "..ORNG.."The Prodigal Lich Returns"..GREY..".";
		GREY.."21) Get your training for "..PURP.."level 12"..GREY..", and train weapons if you need to.";
		GREY.."22) Get on the zeppelin to go to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."23) Get the ".._RED.."Orgrimmar "..GREY.."flight path.";
		GREY.."24) Go south to ".._RED.."Razor Hill "..GREY.."and accept "..ORNG.."Conscript of the Horde"..GREY..".";
		GREY.."25) Head west to the ".._RED.."Barrens "..GREY.."and turn in "..ORNG.."Crossroads Conscription "..GREY.."Accept it again.";
		GREY.."26) Run to the ".._RED.."Crossroads "..GREY.."and turn in "..ORNG.."Crossroads Conscription"..GREY..".";

	};	

		};
		
AtlasLVL = {


	a1 = {
		ZoneName = "1-5";
		Location = "Durotar";
		GREY.."2) Do Cutting Teeth";
		GREY.."3) Accept Sarkoth, Do Sarkoth";
		GREY.."   Turn In, Accept Sarkoth pt.2";
		GREY.."4) Turn in Sarkoth pt.2 and Cutting Teeth";
		GREY.."5) Accept and do";
		BLUE.."   Sting of the Scorpid";
		BLUE.."   Vile Familiars";
		BLUE.."   Galgar's Cactus Apple Surprise";
		BLUE.."   Lazy Peons";
		GREY.."6) Turn those quests in";
		GREY.."7) Accept and do";
		BLUE.."   Burning Blade Medallion";
		BLUE.."   Thazz'ril's Pick";
		GREN.."        these are done in the cave at (44.56)";
		GREY.."8) Hearth";
		GREY.."9) Turn quests in";
		GREY.."10) Accept";
		BLUE.."    Report to Sen'jin Village";
		GREY.."11) Leave the Starting Zone";
		_RED.."			Next Guide";
	};

	a2 = {
		ZoneName = "5-7";
		Location = "Durotar";
		GREY.."12) Goto Sen'jen Village";
		GREY.."13) On The Way Accept";
		BLUE.."    A Peon's Burden(52.68)";
		BLUE.."    Thwarting Kolkar Aggression(54.75)";
		GREY.."14) Turn in Report to Sen'jin Village(55.74)";
		GREY.."15) Accept";
		BLUE.."    A solvent Spirit";
		BLUE.."    Practical Prey";
		BLUE.."    Minshina's Skull";
		BLUE.."    Zalazane";
		GREY.."16) Do NOT do A solvent Spirit yet.";
		GREY.."17) Grind your way to Razor Hill";
		GREY.."18) Get to Level 6 before you get there";
		GREY.."19) Accept";
		BLUE.."    Vanquish the Betrayers";
		BLUE.."    Encroachment";
		BLUE.."    Break a Few Eggs";
		BLUE.."    Dark Storms";
		BLUE.."    Carry Your Weight";
		GREY.."20) Make Razor Hill your home";
		GREY.."21) Get first aid.";
		_RED.."			Next Guide";




 

	};

	a3 = {
		ZoneName = "7-9";
		Location = "Durotar";
		GREY.."22) Then Do";
		BLUE.."    Vanquish the Betrayers";
		BLUE.."    Carry Your Weight(57,55)";
		GREY.."23) After killing Benedict(59.58) get his key,";
		GREY.."    Go Upstairs loot the chest grab the note";
		GREY.."24) The Note Will Start";
		BLUE.."    The Admiral's Orders.";
		GREY.."25) Turn In";
		BLUE.."    Vanquish the Betrayers";
		BLUE.."    Carry Your Weight at Razor Hill";
		GREY.."26) Then Do";
		BLUE.."    A solvent Spirit";
		BLUE.."    From The Wreckage(around 62.50)";
		GREY.."27) Then Do";
		BLUE.."    First half of Encroachment(at 49.49)";
		GREY.."28) If your not level 8 Grind then Turn in";
		BLUE.."    From The Wreckage";
		GREY.."29) Run South and do and turn in";
		BLUE.."    Thwarting Kolkar Aggression(48,79)";
		GREY.."30) Go to Echo Isles, Do These";
		BLUE.."31) Break a Few Eggs";
		BLUE.."32) Practical Prey";
		BLUE.."33) Minshina's Skull(67.87)";
		BLUE.."34) Zalazane(67,86)";
		GREY.."35) Die on purpose to end up @ Sen'jin";
		_RED.."			Next Guide";

		
	};

	a4 = {
		ZoneName = "9-10";
		Location = "Durotar";
		GREY.."36) Turn In";
		BLUE.."    Practical Prey";
		BLUE.."    Minshina's Skull";
		BLUE.."    Zalazane";
		GREN.."        Hold Onto [Faintly Glowing Skull]";
		GREY.."37) Hearth To Razor Hill, Turn In";
		BLUE.."    Break a Few Eggs";
		GREY.."38) Then Do";
		BLUE.."    The Second half of Encroachment(42,38)";
		GREY.."39) Accept";
		BLUE.."    Lost But Not Forgotten(43,30)";
		GREY.."40) Grind on the way to Accept";
		BLUE.."    Winds in the Desert(46,22)";
		GREY.."41) Then Do and turn in";
		BLUE.."    Winds in the Desert";
		GREY.."    Accept";
		BLUE.."    Securing the Lines";
		GREY.."42) Grind to Level 10";
		GREY.."43) Goto Razor Hill, Turn in";
		BLUE.."    Encroachment";
		GREY.."51) Accept";
		BLUE.."    Need for a Cure(41,18)";
		GREY.."52) Goto Org";
		GREY.."54) Goto Trall's Chamber and turn in";
		BLUE.."    The Admiral's Orders";
		_RED.."			Next Guide";

 
	};

	a5 = {
		ZoneName = "10-11";
		Location = "Durotar";
		GREY.."55) Accept";
		BLUE.."    Hidden Enemies";
		GREY.."56) Go into Cleft of Shadow, Accept";
		BLUE.."    Finding the Antidote(46.53)";
		GREY.."57) Then Do";
		BLUE.."58) Securing the Lines(53.23) turn in (46.22)";
		GREY.."59) Then Do";
		BLUE.."60) Finding the Antidote";
		BLUE.."    Lost But Not Forgotten";
		GREY.."61) Then Do";
		BLUE.."62) Dark Storms(41.26)";
		GREY.."63) Then turn in";
		BLUE.."    Lost But Not Forgotten(43.30)";
		BLUE.."    Dark Storms(Razor Hill)";
		GREY.."64) Accept";
		BLUE.."    Margoz";
		GREY.."65) Turn in";
		BLUE.."    Margoz(56.20) then accept Skull Rock";
		GREY.."66) Then Do";
		BLUE.."    Skull Rock";
		BLUE.."    Hidden Enemies(54.11)";
		GREY.."67) Kill Gazz'uz and Accept";
		GREN.."    Use [Faintly Glowing Skull]";
		BLUE.."    Burning Shadows";
		_RED.."			Next Guide";
	};

	a6 = {
		ZoneName = "11-12";
		Location = "Durotar";
		GREY.."68) Turn in";
		BLUE.."    Skull Rock(56.20)";
		BLUE.."    Accept Neeru Fireblade";
		GREY.."69) Go to Orgrimmar";
		GREY.."70) Turn in";
		BLUE.."    Hidden Enemies(33.37)";
		BLUE.."    Accept Hidden Enemies";
		GREY.."71) Go to Neeru Fireblade in Cleft of Shadows";
		GREY.."72) Turn in";
		BLUE.."    Neeru Fireblade";
		BLUE.."    Burning Shadows";
		BLUE.."    Accept Ak'Zeloth";
		BLUE.."    Hidden Enemies";
		GREY.."74) Goto Trall, Turn In";
		BLUE.."    Hidden Enemies";
		GREY.."75) Leave Orgrimmar, Turn In";
		BLUE.."    Need for a Cure(41.18)";
		GREY.."76) Hearth to Razor Hill";
		GREY.."77) Build up first aid";
		GREY.."78) Get new spells/abilities";
		GREY.."79) Accept";
		BLUE.."    Conscript of the Horde(50.43)";
		GREY.."80) Run west into the Barrens";
		_RED.."			Next Guide";
	};


	b1 = {
		ZoneName = "12-13";
		Location = "Barrens";
		GREY.."1) Turn in";
		BLUE.."    Conscript of the Horde";
		BLUE.."    Accept Crossroads Conscripton";
		GREY.."2) Turn In";
		BLUE.."   Ak'Zeloth";
		GREY.."3) Run to Crossroads";
		GREY.."5) Turn in";
		BLUE.."   Crossroads Conscripton";
		GREY.."   Accept";
		BLUE.."   Plainstrider Menace";
		BLUE.."   The Forgotten Pools";
		BLUE.."   Raptor Thieves";
		BLUE.."   Wharfmaster Dizzywig";
		BLUE.."   Fungal Spores";
		BLUE.."   Disrupt the Attacks";
		BLUE.."   Supplies for the Crossroads";
		BLUE.."   Harpy Raiders(Top of watch tower)";
		GREY.."6) Make XRs your home";
		GREY.."7) Get FP";
		GREY.."8) Then Do";
		BLUE.."   Disrupt the Attacks";
		BLUE.."   Plainstrider Menace";
		BLUE.."   Raptor Thieves(54.26)";
		_RED.."		Next Guide";
	};
	
	b2 = {
		ZoneName = "13-14";
		Location = "Barrens";
		GREY.."9) Turn In";
		BLUE.."   Disrupt the Attacks";
		BLUE.."   Accept The Disruption Ends";
		GREY.."10) Then Do";
		BLUE.."    The Disruption Ends";
		BLUE.."    Supplies for the Crossroads(56.26)";
		GREN.."    If you find Chen's Empty Keg accept it";
		GREY.."12) Once These are complete..";
		BLUE.."    Plainstrider Menace";
		BLUE.."    The Disruption Ends";
		BLUE.."    Supplies for the Crossroads";
		GREY.."13) Go to Ratchet get the Flight Path";
		GREY.."    Accept";
		BLUE.."    Raptor Horns";
		BLUE.."    Samophlange";
		BLUE.."    Southsea Freebooters";
		BLUE.."    The Guns of Northwatch";
		GREY.."14) Accept";
		BLUE.."    WANTED: Baron Longshore(Sign by the bank)";
		GREY.."15) Turn in";
		BLUE.."    Wharfmaster Dizzywig(goblin on the docks)";
		GREY.."    Accept";
		BLUE.."    Miner's Fortune";
		_RED.."		Next Guide";
	};

	b3 = {
		ZoneName = "14-14";
		Location = "Barrens";
		GREY.."16) Then Do";
		BLUE.."    Southsea Freebooters";
		BLUE.."    WANTED: Baron Longshore(south of Ratchet)";
		GREY.."17) Turn Those In, Accept next quests";
		GREY.."18) Then Do";
		BLUE.."    The Missing Shipment(goblin at the docks)";
		GREY.."    Accept";
		BLUE.."    The Missing Shipment(part2)";
		GREY.."19) Run back, Turn in";
		BLUE.."    The Missing Shipment(part2)";
		GREY.."    Accept";
		BLUE.."    Stolen Booty";
		GREY.."20) Then Do";
		BLUE.."    Stolen Booty";
		GREY.."21) Hearth to XRs";
		GREY.."22) Turn In";
		BLUE.."    The Disruption Ends";
		BLUE.."    Supplies for the Crossroads";
		GREY.."    Accept New Quests";
		GREY.."23) Turn In";
		BLUE.."    Plainstrider Menace";
		GREY.."    Accept";
		BLUE.."    The Zhevra";
		GREY.."24) If you don't have buy 3-6 Slot bags";
		_RED.."		Next Guide";
	};

	b4 = {
		ZoneName = "14-15";
		Location = "Barrens";
		GREY.."25) Run west from XRs to the hut(45.28)";
		GREY.."26) Accept";
		BLUE.."    Kolkar Leaders";
		BLUE.."    Centaur Bracers";
		GREY.."27) Then Start Doing";
		BLUE.."28) Kolkar Leaders(Barak is at 42.23)";
		BLUE.."    Centaur Bracers";
		BLUE.."    Raptor Thieves";
		BLUE.."    The Zhevra";
		BLUE.."    Fungal Spores";
		BLUE.."    The Forgotten Pools";
		GREN.."    All done north of you";
		GREY.."29) Once Kolkar Leaders is done";
		GREY.."30) Go Do";
		BLUE.."    Harpy Raiders(38.17)";
		GREY.."31) Once Harpy Raiders is done";
		GREY.."    Grind into Stonetalon Mountains(34.28)";
		_RED.."			Next Guide";
	};

	c1 = {
		ZoneName = "15-16";
		Location = "Stonetalon Mountains";
		GREY.."1) Accept";
		BLUE.."   Goblin Invaders";
		BLUE.."   Avenge My Village(35,27)";
		GREY.."2) Go Do and turn in";
		BLUE.."   Avenge My Village";
		GREY.."3) Then do";
		BLUE.."   Kill Grundig Darkcloud(73.86)";
		GREY.."5) Turn in";
		BLUE.."   Kill Grundig Darkcloud(35.27 in Barrens)";
		GREY.."6) Go back to the Barrens";
		_RED.."			Next Guide";
	};

	d1 = {
		ZoneName = "16-17";
		Location = "Barrens";
		GREY.."1) Grind your way back to the hut(45.28)";
		GREY.."2) Turn in";
		BLUE.."   Kolkar Leaders";
		GREY.."   Accept";
		BLUE.."   Verog the Dervish";
		GREY.."3) Make sure you finish before you goto xroads";
		BLUE.."   Raptor Thieves";
		BLUE.."   The Zhevra";
		BLUE.."   Fungal Spores";
		BLUE.."   The Forgotten Pools";
		GREY.."4) Run to XRs";
		GREY.."5) Turn in quests, Accept New ones";
		GREY.."6) Then do, Grinding on the way";
		BLUE.."   Apothecary Zamah(spirit rise cave in TB)";
		GREY.."7) Grind your way down south and do";
		BLUE.."8) Lost in Battle(49.50)";
		GREY.."9) Accept and get FP at Camp Taurajo";
		BLUE.."   Tribes at War(44.59)";
		GREY.."10) Once at TB, go to weapon master(40.62)";
		GREY.."    Train your weapon skill";
		GREY.."11) Get new spells/abilities";
		GREY.."12) Turn in";
		BLUE.."    Apothecary Zamah(Cave Spirit rise 29.29)";
		_RED.."			Next Guide";
	};

	d2 = {
		ZoneName = "17-17";
		Location = "Barrens";
		GREY.."13) Go to first aid guy at spirit rise Train";
		GREY.."14) Get FP in the tower DON'T fly back to XRs";
		GREY.."15) Hearth back to XRs";
		GREY.."16) Turn in";
		BLUE.."    Lost in Battle";
		GREY.."17) Then go north west of XRs and do";
		BLUE.."18) Prowlers of the Barrens(37.20)";
		BLUE.."19) Harpy Lieutenants(38.14)";
		GREY.."20) Then grind your way east and do";
		BLUE.."21) Samophlange(52.11) do the whole chain";
		GREY.."22) Then go east to Sludge Fen and do";
		BLUE.."23) Ignition(56.8)";
		BLUE.."24) The Escape";
		GREY.."25) Then go north-east and do";
		BLUE.."26) Miner's Fortune(61.5)";
		GREY.."27) Then grind your way south to Ratchet";
		GREY.."28) Turn in";
		BLUE.."    Stolen Booty";
		BLUE.."    Samophlange";
		BLUE.."    The Escape";
		GREY.."29) Turn In";
		BLUE.."    Miner's Fortune";
		_RED.."			Next Guide";
	};

	d3 = {
		ZoneName = "17-18";
		Location = "Barrens";
		GREY.."30) Then go west of ratchet and do";
		BLUE.."31) The Stagnant Oasis";
		BLUE.."    Verog the Dervish(54.43)";
		GREY.."32) Then run to XRs";
		GREY.."33) Turn in";
		BLUE.."    Prowlers of the Barrens";
		BLUE.."    Harpy Lieutenants and Accept new quests";
		GREY.."34) Go west of XRs, Turn in";
		BLUE.."    Centaur Bracers";
		BLUE.."    Verog the Dervish";
		GREY.."35) Grind your way north, Do";
		BLUE.."    Serena Bloodfeather(38.11)";
		GREY.."36) Then go east, Grind on the way, then do";
		BLUE.."    Echeyakee(55.17)";
		GREY.."37) Hearth to XRs.";
		GREY.."38) Turn in";
		BLUE.."    Echeyakee";
		GREY.."    Accept";
		BLUE.."    The Angry Scytheclaws";
		GREY.."39) Turn in";
		BLUE.."    Serena Bloodfeather";
		GREY.."    Accept";
		BLUE.."    Letter to Jin'Zil";
		BLUE.."    Consumed by Hatred";
		_RED.."			Next Guide";
	};


	d4 = {
		ZoneName = "18-19";
		Location = "Barrens";
		GREY.."40) Go down south and do";
		BLUE.."41) Altered Beings(55.42)";
		BLUE.."42) The Angry Scytheclaws(51.46)";
		BLUE.."43) Raptor Horns";
		BLUE.."44) Stolen Silver(57.54)";
		BLUE.."45) Tribes at War";
		BLUE.."46) Consumed by Hatred(51.54)";
		GREY.."47) Then grind your way to Camp T(45.60)";
		GREY.."48) Accept";
		BLUE.."    Weapons of Choice";
		GREY.."49) Go to gnoll in the cage";
		GREY.."50) Turn in";
		BLUE.."    Tribes at War";
		GREY.."    Accept";
		BLUE.."    Blood Shards of Agamaggan";
		BLUE.."    Betrayal from Within";
		GREY.."51) Turn in";
		BLUE.."    Blood Shards of Agamaggan";
		GREY.."52) Turn in bloodshards for Spirit of the Wind";
		GREY.."53) You should be a 3rd way to level 20";
		GREY.."54) Wailing Caverns Instance!(46.36)";
		GREN.."55) OPTIONAL: GRIND all the way to level 20";
		GREN.."56) Grind the brisstlebacks just north of CT";
		GREN.."57) Look out for the mob named Owatanka";
		GREN.."    Drops [Owatanka's Tailspike],starts Owatanka";
		_RED.."			Next Guide";
	};

	d5 = {
		ZoneName = "19-20";
		Location = "Barrens";
		GREY.."58) About a bar away from 20, run to XRs";
		GREY.."59) Turn in";
		BLUE.."    Stolen Silver";
		BLUE.."    Consumed by Hatred";
		BLUE.."    Altered Beings";
		BLUE.."    The Angry Scytheclaws";
		GREY.."    Then Accept all new quests";
		GREY.."60) Fly to Orgrimmar, get new spells/abilities";
		GREY.."61) Accept";
		BLUE.."    The Ashenvale Hunt";
		GREY.."62) Hearth back to XRs";
		GREY.."63) Fly to Ratchet";
		GREY.."64) Accept";
		BLUE.."    Ziz Fizziks";
		GREY.."65) Turn in";
		BLUE.."    Raptor Horns";
		GREY.."    Accept";
		BLUE.."    Deepmoss Spider Eggs";
		GREY.."66) Then Do";
		BLUE.."    The Guns of Northwatch(60.55)";
		BLUE.."69) Free From the Hold(escort quest)";
		GREY.."70) Turn in both quests at Ratchet";
		GREY.."71) Hearth to XRs";
		GREY.."72) Run into Stonetalon Mountains";
		_RED.."			Next Guide";
	};
	
};



AtlasLV = {
	e1 = {
		ZoneName = "20-20";
		Location = "Stonetalon Mountains";
		GREY.."1) Run to Malaka'Jin";
		GREY.."2) Accept";
		BLUE.."   Blood Feeders(71.95)";
		GREY.."3) Turn in";
		BLUE.."   Letter to Jin'Zil(74.97)";
		GREY.."   Accept";
		BLUE.."   Jin'Zil's Forest Magic";
		GREY.."4) Then Do";
		BLUE.."   Blood Feeders";
		BLUE.."   Deepmoss Spider Eggs(54.76)";
		GREY.."5) Turn in";
		BLUE.."   Ziz Fizziks(60.63)";
		GREY.."   Accept";
		BLUE.."   Super Reaper 6000";
		GREY.."6) Then Do";
		BLUE.."   Goblin Invaders";
		BLUE.."   Super Reaper 6000";
		GREY.."7) Turn In";
		BLUE.."   Super Reaper 6000";
		GREY.."   Accept";
		BLUE.."   Further Instructions";
		GREY.."8) Run to Sun Rock Retreat at 46.59";
		GREY.."9) Get FP there";

		_RED.."			Next Guide";
	};


	e2 = {
		ZoneName = "20-21";
		Location = "Stonetalon Mountains";
		GREY.."10) Run up the little pathway, Accept";
		BLUE.."    Boulderslide Ravine";
		GREY.."11) Then Do";
		BLUE.."    Boulderslide Ravine(61.92)";
		GREY.."12) Turn in";
		BLUE.."    Blood Feeders(71.95)";
		GREY.."13) Turn in";
		BLUE.."    Goblin Invaders(35.27 Barrens)";
		GREY.."    Accept";
		BLUE.."    Shredding Machines";
		BLUE.."    The Elder Crone";
		GREY.."14) Hearth to XRs";
		GREY.."16) Run north to Ashenvale";
		GREY.."    Stop along the way to turn in";
		BLUE.."    Report to Kadrak"; 
		_RED.."			Next Guide";


	};

	e3 = {
		ZoneName = "21-22";
		Location = "Ashenvale";
		GREY.."2) Run to Splintertree Post(73.65)";
		GREY.."3) Turn in";
		BLUE.."   The Ashenvale Hunt";
		GREY.."4) Get FP in Splintertree Post";
		GREY.."5) Grind Mobs on your way to Zoram Strand";
		GREY.."7) Get FP there";
		GREY.."8) Then Do";
		BLUE.."9) Naga at the Zoram Strand";
		BLUE.."10) Vorsha the Lasher";
		GREY.."11) Turn those quests in";
		GREY.."12) Hearth back to XRs";
		_RED.."			Next Guide";


	};

	e4 = {
		ZoneName = "22-23";
		Location = "Southern Barrens";
		GREY.."1) Fly to CT";
		GREY.."2) Turn in";
		BLUE.."   Jorn Skyseer";
		GREY.."   Accept";
		BLUE.."   Ishamuhale";
		GREY.."3) Make CT your home";
		GREY.."5) Run down and do in the order";
		BLUE.."6) Egg Hunt";
		BLUE.."7) Chen's Empty Keg";
		BLUE.."8) Betrayal from Within, Weapons of Choice";
		BLUE.."9) Gann's Reclamation then turn it in";
		GREY.."   Accept the next part";
		GREY.."10) Hearth back to Camp Taurajo";
		GREY.."    Turn in quests and Accept";
		BLUE.."    Betrayal from Within(part2)";
		GREY.."11) Fly to XR";
		GREY.."12) Turn in";
		BLUE.."    Betrayal from Within(part2), Egg Hunt";
		BLUE.."13) Do Ishamuhale(60.32)";
		GREY.."14) Turn in";
		BLUE.."    Further Instructions";
		GREY.."    Accept";
		BLUE.."    Further Instructions(part2)";
		GREY.."15) Turn in";
		BLUE.."    Deepmoss Spider Eggs, Chen's Empty Keg";
		GREY.."17) Fly to Stonetalon Mountains";
		_RED.."			Next Guide";

	};

	e5 = {
		ZoneName = "23-24";
		Location = "Stonetalon Mountains";
		GREY.."1) Accept all quests at Sun Rock Retreat";
		GREY.."2) And make it your home";
		BLUE.."3) Turn in Boulderslide Ravine";
		GREY.."4) Do";
		BLUE.."5) Cycle of Rebirth";
		BLUE.."6) Cenarius' Legacy";
		BLUE.."7) Jin'Zil's Forest Magic";
		GREY.."8) Turn in";
		BLUE.."   Cycle of Rebirth, Accept New Life";
		GREY.."9) Turn in";
		BLUE.."   Cenarius' Legacy, Accept Ordanus";
		GREY.."11) Turn in";
		BLUE.."    Further Instructions(part2)";
		GREY.."    Accept";
		BLUE.."    Gerenzo Wrenchwhistle";
		GREY.."12) Go do";
		BLUE.."    Gerenzo Wrenchwhistle";
		BLUE.."    Shredding Machines";
		GREY.."13) Then turn in";
		BLUE.."    Gerenzo Wrenchwhistle";
		GREY.."14) Then do";
		BLUE.."    Arachnophobia(wanted poster)";
		GREY.."15) Turn in";
		BLUE.."    Jin'Zil's Forest Magic";
		GREY.."16) Turn in";
		BLUE.."    Shredding Machines";
		_RED.."			Next Guide";

	};

	e6 = {
		ZoneName = "24-25";
		Location = "Stoneralon Mountains";
		GREY.."17) Hearth back to Sun Rock Retreat";
		GREY.."18) Turn in";
		BLUE.."    Arachnophobia";
		GREY.."19) Then do";
		BLUE.."20) New Life";
		BLUE.."21) Elemental War";
		BLUE.."22) Harpies Threaten";
		GREY.."23) Turn them all in";
		GREY.."24) Fly directly to CT";
		_RED.."			Next Guide";

	};

	e7 = {
		ZoneName = "25-25";
		Location = "Southern Barrens";
		GREY.."1) Turn in";
		BLUE.."   Ishamuhale";
		GREY.."   Accept";
		BLUE.."   Enraged Thunder Lizards";
		GREY.."2) Make CT your home";
		GREY.."3) Accept";
		BLUE.."   A New Ore Sample";
		GREY.."4) Go down and do";
		BLUE.."5) Enraged Thunder Lizards";
		GREN.."6) Find the mob Washte Pawne";
		GREN.."   He drops Washte Pawne Feather";
		GREY.."   Accept";
		BLUE.."   Washte Pawne";
		GREY.."7) Turn in";
		BLUE.."   Revenge of Gann";
		GREY.."   Accept the next part";
		BLUE.."8) Revenge of Gann then turn it in";
		GREY.."9) Go to the Great Lift";
		GREY.."10) Turn in";
		BLUE.."    Calling in the Reserves";
		GREY.."11) Accept";
		BLUE.."    Message to Freewind Post";
		GREY.."12) Run to Freewind Post";
		_RED.."		Next Guide";


	};

	e8 = {
		ZoneName = "25-26";
		Location = "Thousand Needles";
		GREY.."1) Turn in";
		BLUE.."   Message to Freewind Post";
		GREY.."   Accept";
		BLUE.."   Pacify the Centaur";
		BLUE.."2) Wanted - Arnak Grimtotem";
		BLUE.."   Alien Egg, Wind Rider";
		GREY.."3) Get FP there";
		GREY.."4) Go do (in the following order)";
		BLUE.."5) Pacify the Centaur";
		BLUE.."6) Test of Faith(the cave at 52.43)";
		BLUE.."7) A New Ore Sample";
		BLUE.."8) Alien Egg(spawn points52.56/45.63/41.60)";
		GREY.."9) If your not level 26 or two bars away, Grind";
		GREY.."10) Go to Freewind Post";
		GREY.."11) Turn in";
		BLUE.."    Pacify the Centaur";
		GREY.."    Accept";
		BLUE.."    Grimtotem Spying";
		GREY.."12) Turn in";
		BLUE.."    Alien Egg";
		GREY.."    Accept";
		BLUE.."    Serpent Wild";
		GREY.."13) Hearth to Camp Taurajo";
		_RED.."			Next Guide";

	};

	e9 = {
		ZoneName = "26-26";
		Location = "Thousand Needles";
		GREY.."14) Turn in";
		BLUE.."    Enraged Thunder Lizards and Washte Pawne";
		GREY.."    Accept";
		BLUE.."    Cry of the Thunderhawk";
		GREY.."15) Turn in";
		BLUE.."    A New Ore Sample";
		GREY.."16) Go do";
		BLUE.."    Cry of the Thunderhawk then turn it in";
		GREY.."17) Fly to Thunder Bluff, get new spells/abilities";
		GREY.."18) Turn in";
		BLUE.."    Melor Sends Word";
		GREY.."    Accept";
		BLUE.."    steelsnap";
		BLUE.."    19) The sacred Flame";
		GREY.."20) Fly to Ashenvale";
		_RED.."			Next Guide";

	};
	
	f1 = {
		ZoneName = "26-27";
		Location = "Ashenvale";
		GREY.."1) Make Ashenvale your home";
		GREY.."2) Do the following order";
		GREY.."3) Accept all the quests,SKIP Warsong Supplies";
		GREY.."4) Kill the first three mobs in Ashenvale hunt";
		BLUE.."5) Sharptalon's Claw (Kill Sharptalon";
		GREY.."6) Do";
		BLUE.."   Ashenvale Outrunners";
		GREY.."7) Go west and do Torek's Assault(68.75)";
		BLUE.."8) Stonetalon Standstill";
		GREN.."   Look for Tideress, starts The Befouled Element";
		BLUE.."9) Kill Ursangous, Ursangous's Paw";
		BLUE.."10) Kill Shadumbra Shadumbra's Head";
		BLUE.."11) The sacred Flame";
		GREN.."    (dryads61.52, moonwell59.74)";
		GREY.."12) Hearth to Splintertree, turn in all quests";
		GREY.."13) Fly to Zoram Strand";
		GREY.."14) Turn in";
		BLUE.."    Je'neu of the Earthen Ring";
		BLUE.."    Trouble in the Deeps";
		GREY.."15) Do";
		BLUE.."    Between a Rock and a Thistlefur";
		BLUE.."    Troll Charm";
		GREY.."16) Turn them in, hearth to Splintertree Post";
		GREY.."17) If not level 27 grind till you are";
		_RED.."			Next Guide";

	};
	
	f2 = {
		ZoneName = "27-27";
		Location = "Ashenvale";
		GREY.."22) Accept";
		BLUE.."    Destroy the Legion";
		GREY.."23) Go do";
		BLUE.."    Ordanus(61.52)";
		BLUE.."24) Satyr Horns(80.52)";
		BLUE.."25) Destroy the Legion";
		GREN.."    You should find an item [Diabolical Plans]";
		GREN.."    Starts Diabolical Plans while doing this quest";
		GREY.."26) Run back to Splintertree,Turn in ALL quests";
		GREY.."28) Fly to Stonetalon Mountains";
		_RED.."			Next Guide";

	};
	
	f3 = {
		ZoneName = "27-27";
		Location = "Stonetalon Mountains";
 		GREY.."1) Turn in";
		BLUE.."   Ordanus";
		GREY.."2) Make it your home";
		GREY.."3) Accept";
		BLUE.."   Bloodfury Bloodline";
		GREY.." Go kill Bloodfury Ripper(30.63) then hearth ";
		GREY.."4) Turn it in";
		GREY.."5) Fly to Thunder Bluff";
		GREY.."6) Turn in";
		BLUE.."   The sacred Flame";
		GREY.."   Accept";
		BLUE.."   The sacred Flame(part2)";
		GREY.."7) Fly to Thousand Needles";
		_RED.."			Next Guide";

	};
	
	f4 = {
		ZoneName = "27-28";
		Location = "Thousand Needles";
		GREY.."1) Turn in";
		BLUE.."   The sacred Flame";
		GREY.."   Accept";
		BLUE.."   The sacred Flame(part3)";
		BLUE.."   A Different Approach";
		GREY.."2) I do the following order";
		BLUE.."3) The sacred Flame(44.37)";
		GREY.."4) Go to Whitereach Post get quests there, do";
		BLUE.."5) Sacred Fire";
		BLUE.."6) Wind Rider";
		BLUE.."7) Homeward Bound";
		BLUE.."8) Steelsnap";
		BLUE.."9) A Different Approach";
		GREY.."10) Hearth to Sun Rock Retreat";
		GREY.."11) Fly to TB";
		GREY.."12) Turn in";
		BLUE.."    Steelsnap";
		GREY.."    Accept";
		BLUE.."    Frostmaw";
		GREY.."13) Turn in";
		BLUE.."    Sacred Fire";
		GREY.."    Accept";
		BLUE.."    Arikara";
		GREY.."14) Get new spells/abilities";
		GREY.."15) Fly to 1K Needles. Make Freewind your home";
		_RED.."			Next Guide";

	};
	
	f5 = {
		ZoneName = "28-29";
		Location = "Thousand Needles";
		GREY.."16) Turn in";
		BLUE.."    The sacred Flame";
		BLUE.."    Wind Rider";
		GREY.."17) Do";
		BLUE.."    Grimtotem Spying";
		BLUE.."18) Arikara";
		BLUE.."19) Wanted - Arnak Grimtotem";
		BLUE.."20) Free at Last";
		GREY.."21) Go to Whitereach Post, turn in";
		BLUE.."    Arikara";
		BLUE.."    A Different Approach";
		GREY.."    Accept";
		BLUE.."    A Dip in the Moonwell";
		GREY.."22) Go do";
		BLUE.."    A Dip in the Moonwell(9.18)";
		GREY.."23) Grind to level 29";
		GREY.."24) Then do";
		BLUE.."    Hypercapacitor Gizmo";
		BLUE.."25) Kill the Galak Messenger";
		GREN.."    He drops [Assassination Note]";
		GREN.."    Starts Assassination Plot Turn in for Easy XP";
		GREY.."    Turn in";
		BLUE.."    A Dip in the Moonwell";
		GREY.."    Accept";
		BLUE.."    Testing the Tonic";
		_RED.."			Next Guide";	


	};

	f6 = {
		ZoneName = "29-29";
		Location = "Thousand Needles";
		GREY.."26) Then do";
		BLUE.."    Protect Kanati Greycloud";
		GREY.."27) Hearth back to Freewind Post";
		GREY.."28) Turn in ALL quests";
		GREY.."30) Fly to Orgrimmar";
		GREY.."31) Make Orgrimmar your home";
		GREY.."32) Go to UC";
		GREY.."33) Run to Tarren Mill(through the sewers)";
		_RED.."			Next Guide";	


	};

	f7 = {
		ZoneName = "29-30";
		Location = "Hillsbrad Foothills";
		GREY.."1) Accept";
		BLUE.."   Time To Strike";
		GREY.."2) Once at Tarren Mill, Turn in";
		BLUE.."3) Time To Strike";
		GREY.."4) Accept";
		BLUE.."   Helcular's Revenge";
		GREY.."5) Accept";
		BLUE.."   Elixir of Pain";
		GREY.."6) GET FLIGHT PATH THERE";
		GREY.."7) Go start killing Yetis";
		GREY.."8) Keep grinding away at Yetis until 30";
		GREN.."   OPTIONAL:";
		GREN.."   you could go do RFK instead of the grinding";
		GREY.."10) Once 30,";
		GREY.."    Hearth to Org get new spells/abilities";
		GREY.."11) Then go back to Hillsbrad";
		GREY.."12) Turn in";
		BLUE.."    Helcular's Revenge";
		GREY.."    Accept the next part to it";
		GREY.."13) Go back to the Yeti cave";
		GREY.."14) Charge The Flame of Azel, Flame of Veraz";
		GREY.."16) Go up into Alterac Mountains";
		_RED.."			Next Guide";	


	};
	f8 = {
		ZoneName = "30-30";
		Location = "Alterac Mountains";
		GREY.."1) Do the following";
		BLUE.."2) Elixir of Pain";
		GREY.."3) Charge Flame of Uzel";
		GREY.."4) Kill Frostmaw";
		GREY.."5) Run to Southshore, use the rod into the grave";
		GREY.."6) Run back to Tarren Mill";
		GREY.."7) Turn in";
		BLUE.."   Elixir of Pain";
		GREY.."8) Accept";
		BLUE.."   The Hammer May Fall";
		GREY.."9) Run into Arathi Highlands";
		_RED.."			Next Guide";	


	};
	f9 = {
		ZoneName = "30-30";
		Location = "Arathi Highlands";
		GREY.."1) Do";
		BLUE.."2) The Hammer May Fall(34.45)";
		GREY.."3) Then run to Hammerfall";
		GREY.."4) Accept";
		BLUE.."   Hammerfall";
		GREY.."5) Turn in";
		BLUE.."   Hammerfall";
		GREY.."   Accept";
		BLUE.."   Rising Spirits";
		GREY.."6) Turn in";
		BLUE.."   The Hammer May Fall";
		GREY.."7) Get FP there";
		GREY.."8) Then do";
		BLUE.."   Rising Spirits, turn it in";
		GREY.."   Accept";
		BLUE.."   Rising Spirits(part2)";
		GREY.."9) Turn in";
		BLUE.."   Rising Spirits{part2)";
		GREY.."   Accept";
		BLUE.."   Rising Spirits(part3)";
		GREY.."10) Turn in";
		BLUE.."    Rising Spirits(part3)";
		GREY.."11) Hearth to Orgrimmar";
		GREY.."12) Get on the Zeppelin to go to Grom'Gol";	
		_RED.."			Next Guide";	


	};
	
};

AtlasLVE = {

	g1 = {
		ZoneName = "30-31";
		Location = "Stranglethorn Vale";
		GREY.."1) Get the FP at Grom'Gol";
		GREY.."2) Go north and do the STV hunt quests";
		BLUE.."3) Welcome to the Jungle";
		BLUE.."4) Tiger Mastery";
		BLUE.."5) Panther Mastery";
		BLUE.."6) Panther Mastery";
		BLUE.."7) Tiger Mastery";
		BLUE.."8) Raptor Mastery";
		GREY.."9) Accept";
		BLUE.."   Tiger Mastery";
		GREY.."10) Accept";
		BLUE.."    Raptor Mastery";
		GREY.."12) You should be lvl 31 now, if not grind to it";
		GREY.."13) Hearth to Orgrimmar";
		GREY.."14) Fly to XRs";
		GREY.."15) Run west in the XRs";
		GREY.."    Accept";
		BLUE.."    The Swarm Grows";
		GREY.."16) Then run west from the XRs to the hut";
		GREY.."    Accept";
		BLUE.."    The Kolkar of Desolace";
		GREY.."17) Run back to XRs";
		GREY.."18) Fly to 1K needles";
		GREY.."19) Go to Shimmering Flats";	
		_RED.."			Next Guide";	


	};
	g2 = {
		ZoneName = "31-32";
		Location = "Shimmering Flats";
		GREY.."1) Accept";
		BLUE.."2) Hemet Nesingwary";
		BLUE.."3) Wharfmaster Dizzywig";
		GREY.."4) Accept and do";
		BLUE.."5) A Bump in the Road";
		BLUE.."6) Hardened Shells";
		BLUE.."7) Load Lightening";
		BLUE.."8) Rocket Car Parts";
		BLUE.."9) Salt Flat Venom";
		GREY.."10) Turn them in";
		GREY.."11) Accept";
		BLUE.."12) Goblin Sponsorship";
		BLUE.."13) Martek the Exiled";
		GREY.."15) You should be 32 now, if not grind to it";
		GREY.."16) Go to Tanaris to get FP";
		GREY.."17) Hearth to Orgrimmar";
		GREY.."18) Turn in";
		BLUE.."    The Swarm Grows";
		GREY.."19) Accept";
		BLUE.."    Alliance Relations(Cleft of Shadow)";
		GREY.."20) Then go to Keldran in Orgrimmar,Accept";
		BLUE.."    Alliance Relations(part 2)";
		GREY.."21) Stop at firstaid guy,buy silk bandage training";
		GREY.."22) Then fly to Stonetalon Mountains";
		GREY.."23) Run into Desolace";	
		_RED.."			Next Guide";	


	};
	g3 = {
		ZoneName = "32-32";
		Location = "Desolace";
		GREY.."1) Start killing mobs at the Thunder Axe Fortress";
		GREY.."2) Until this drops [Flayed Demon Skin]";
		GREY.."   Accept";
		BLUE.."   The Corrupter";
		GREY.."3) Then go down the path and do";
		BLUE.."4) Kodo Roundup";
		GREY.."5) Then go to Ghost Walker Post";
		GREY.."6) Turn in";
		BLUE.."   The Kolkar of Desolace";
		GREY.."   Accept";
		BLUE.."   Khan Dez'hepah";
		GREY.."7) Accept";
		BLUE.."   Gelkis Alliance";
		GREY.."8) Turn in";
		BLUE.."   Alliance Relations";
		GREY.."   Accept";
		BLUE.."   Alliance Relations";
		GREY.."   Accept";
		BLUE.."   Befouled by Satyr";
		GREY.."9) Turn in";
		BLUE.."   The Corrupter";
		GREY.."   Accept";
		BLUE.."   The Corrupter(part2)";	
		_RED.."			Next Guide";	


	};
	g4 = {
		ZoneName = "32-33";
		Location = "Desolace";
		GREY.."10) Turn in";
		BLUE.."    Alliance Relations";
		GREY.."    Accept";
		BLUE.."    The Burning of Spirits";
		GREY.."11) Do in the following order";
		BLUE.."12) Befouled by Satyr";
		BLUE.."13) The Corrupter(Part2)";
		BLUE.."14) Khan Dez'hepah";
		BLUE.."15) Gelkis Alliance";
		GREY.."16) Turn them in, collect new quests then do";
		GREY.."17) Then run to Shadowprey Village";
		GREY.."    Turn in along the way";
		BLUE.."    Gelkis Alliance";
		GREY.."    Accept";
		BLUE.."    Stealing Supplies";
		GREY.."18) Accept all quests at Shadowprey Village";
		GREY.."19) Make Shadowprey Village your home";
		GREY.."20) Then do";
		BLUE.."21) Go in the water, collect 10 Shellfish";
		BLUE.."22) Turn those in for 2 Bloodbelly Fish";
		GREY.."23) Collect [Soft-shelled Clam Meat]";	
		_RED.."			Next Guide";	


	};
	g5 = {
		ZoneName = "33-33";
		Location = "Desolace";
		GREY.."24) Then accept";
		BLUE.."    Claim Rackmore's Treasure!";
		GREN.."    the chest/wrecked boat along the shore";
		GREY.."25) Accept";
		BLUE.."    Sceptre of Light";
		GREY.."26) Then go do";
		BLUE.."27) The Burning of Spirits";
		BLUE.."28) Sceptre of Light";
		BLUE.."29) Hand of Iruxos";
		GREY.."30) Grind your way back to the argent dawn dude";
		GREY.."31) Then turn in";
		BLUE.."    Sceptre of Light";
		GREY.."    Accept";
		BLUE.."    Book of the Ancients";
		GREY.."32) Then do this stuff in the water to the west";
		BLUE.."33) Other Fish to Fry";
		BLUE.."34) Clam Bait";
		BLUE.."35) Book of the Ancients";
		BLUE.."36) The Corrupter(Part3)";
		BLUE.."37) Claim Rackmore's Treasure!";
		GREY.."38) Then turn in";
		BLUE.."    Claim Rackmore's Treasure!";
		BLUE.."39) Book of the Ancients";
		_RED.."			Next Guide";	


	};

	g6 = {
		ZoneName = "33-34";
		Location = "Desolace";
		GREY.."40) Then Accept";
		BLUE.."    Bone Collector";
		GREY.."41) Go to Ghost Walker Post, turn in all quests";
		GREY.."    Accept New Quests";
		GREY.."43) Then go do";
		BLUE.."44) Bone Collector";
		BLUE.."45) Centaur Bounty";
		BLUE.."    Stealing Supplies";
		GREY.."46) Then turn in";
		BLUE.."    Bone Collector";
		BLUE.."47) Centaur Bounty";
		GREY.."48) Hearth to Shadowprey Village";
		GREY.."50) Turn in all quests there";
		GREY.."51) You should be level 34 now for sure.";
		GREY.."52) Turn in";
		BLUE.."    Stealing Supplies";
		GREY.."    Accept";
		BLUE.."    Ongeku";
		_RED.."			Next Guide";	


	};	
	
	g7 = {
		ZoneName = "34-34";
		Location = "Desolace";
		GREY.."54) Fly CT";
		GREY.."55) Once at CT, run into Dust Wallowmarsh";
		GREY.."56) Get 3 quest-objects at the Shady Rest Inn";
		BLUE.."57) Suspicious Hoofprints";
		BLUE.."58) Lieutenant Paval Reethe";
		BLUE.."59) The Black Shield";
		GREY.."60) Now run to Brackenwall Village";
		GREY.."61) Turn those 3 quests in";
		GREY.."62) Stop at the troll vendor, buy 3 first aid books";
		GREY.."63) Fly to XRs";
		GREY.."64) Fly to Ratchet to turn in";
		BLUE.."    Goblin Sponsorship";
		BLUE.."    Wharfmaster Dizzywig";
		GREY.."    Accept new quests";
		GREY.."65) Get on the boat to go to BB(build up first aid)";
		_RED.."			Next Guide";	


	};	
	
	g8 = {
		ZoneName = "34-35";
		Location = "Stranglethorn Vale";
		GREY.."1) Grab all quests to do in BB";
		GREY.."3) Make BB your home";
		GREY.."4) Fly to Grom'gol";
		GREY.."5) Grab all quests in grom'gol";
		GREY.."6) Get new spells/abilities";
		GREY.."9) Go complete these quests";
		BLUE.."10) Singing Blue Shards";
		BLUE.."11) Tiger Mastery";
		BLUE.."12) Bloodscalp Ears";
		BLUE.."    Bloodscalp Insight";
		BLUE.."13) Hunt for Yenniku";
		BLUE.."14) Bloody Bone Necklaces";
		BLUE.."15) Raptor Mastery";
		BLUE.."16) The Defense of Grom'gol";
		GREY.."17) Once all those are done, go to Grom'gol";
		GREY.."18) Turn in";
		BLUE.."    Hunt for Yenniku";
		GREY.."    Accept";
		BLUE.."    Headhunting";
		GREY.."19) Turn in";
		BLUE.."    The Defense of Grom'gol";
		GREY.."    Accept";
		BLUE.."    The Defense of Grom'gol(part2)";
		_RED.."			Next Guide";	


	};	
	
	g9 = {
		ZoneName = "35-35";
		Location = "Stranglethorn Vale";
		GREY.."    Also turn in";
		BLUE.."    Bloodscalp Insight";
		GREY.."    Accept";
		BLUE.."    An Unusual Patron";
		GREY.."20) Should be lvl 35 now for sure";
		GREN.."    Buy new water/food/repair";
		GREY.."    Then go do in order";
		BLUE.."21) Headhunting";
		BLUE.."22) An Unusual Patron(19.22)";
		BLUE.."23) The Vile Reef";
		GREY.."24) Then go to Nesingwary's Expedition";
		GREY.."    Turn in quests, accept all new ones, Then do";
		BLUE.."25) Tiger Mastery(31.18), then turn in, Then do";
		BLUE.."26) Hostile Takeover";
		BLUE.."    Goblin Sponsorship";
		BLUE.."27) Panther Mastery";
		BLUE.."    Mok'thardin's Enchantment";
		BLUE.."28) The Defense of Grom'gol(part2)";
		GREY.."29) Hearth to BB, turn in quests";
		GREY.."30) Turn in";
		BLUE.."    Goblin Sponsorship";
		GREY.."    Accept";
		BLUE.."    Goblin Sponsorship(part3)";
		_RED.."			Next Guide";	


	};	
	
	h1 = {
		ZoneName = "35-36";
		Location = "Stranglethorn Vale";
		GREY.."31) Fly to Grom'gol, should be level 36";
		GREY.."    Turn in quests";
		GREY.."    Accept";
		BLUE.."    Trollbane";
		GREY.."32) Get new spells/abilities";
		GREY.."33) Get on the zeppelin to go to the Undercity";
		GREY.."34) Once in the UC, accept";
		BLUE.."    To Steal From Thieves";
		GREY.."35) Then fly to Hammerfall";	
		_RED.."			Next Guide";	


	};	
	
	h2 = {
		ZoneName = "36-37";
		Location = "Arathi Highlands";
		GREY.."1) Make Hammerfall your home";
		GREY.."2) Turn in";
		BLUE.."   Trollbane";
		GREY.."3) Accept";
		BLUE.."   Call to Arms";
		BLUE.."   Foul Magics";
		BLUE.."   Guile of the Raptor";
		GREY.."4) Grind your way down south and do";
		BLUE.."   Call to Arms";
		GREY.."5) Then grind your way up north and accept";
		BLUE.."   The Princess Trapped(59.35)";
		GREY.."6) Then go do";
		BLUE.."   The Princess Trapped";
		GREY.."7) Go in the cave";
		GREY.."8) Then turn in";
		BLUE.."   The Princess Trapped";
		GREY.."   Accept";
		BLUE.."   Stones of Binding";
		GREY.."9) Go to hammerfall, turn in";
		BLUE.."   Call to Arms";
		GREY.."   Accept";
		BLUE.."   Call to Arms";
		GREY.."10) Build up first aid, go do";
		BLUE.."    Triage";	
		_RED.."			Next Guide";	


	};	
	
	h3 = {
		ZoneName = "36-37";
		Location = "Arathi Highlands";
		GREY.."11) Then do";
		BLUE.."12) Stones of Binding(62.35)";
		GREY.."13) Then do";
		BLUE.."    To Steal From Thieves(54.40)";
		BLUE.."14) Get the next key for Stones of Binding(52.50)";
		GREY.."15) Then go down and do";
		BLUE.."16) Call to Arms";
		BLUE.."    Guile of the Raptor";
		GREY.."17) Then go up and do";
		BLUE.."    Foul Magics(31.28)";
		BLUE.."18) Get the last key for Stones of Binding(25.31)";
		GREY.."19) Go discover Stromguard, and turn in";
		BLUE.."    Stones of Binding(35.59)";
		GREY.."21) Hearth to Hammerfall";
		GREY.."22) Turn in";
		BLUE.."    Call to Arms";
		BLUE.."    Foul Magics";
		BLUE.."    Guile of the Raptor";
		GREY.."23) Complete the";
		BLUE.."    Guile of the Raptor quest chain";
		GREN.."24) NOTE: SKIP all stromguard quests";
		GREN.."    unless you can find groups";
		GREY.."25) Fly to Tarren Mill";
		_RED.."			Next Guide";	


	};	
	
	h4 = {
		ZoneName = "37-37";
		Location = "Alterac Mountains";
		GREY.."1) Once at TM, accept";
		BLUE.."   Prison Break In";
		BLUE.."   Stone Tokens";
		GREY.."2) Then go do them in Alteric Mountains";
		GREY.."3) Then turn them in and accept";
		BLUE.."   Dalaran Patrols";
		BLUE.."   Bracers of Binding";
		GREY.."4) Then go do them in Alteric Mountains";
		GREY.."5) Once they are both completed die";
		GREN.."   So u end up at TM";
		GREY.."6) Turn them in, then fly to the UC";
		GREY.."7) Once at UC, turn in";
		BLUE.."   To Steal From Thieves";
		GREY.."9) Then go to the cooking center in UC";
		GREY.."   Buy 3 soothing spices(this is for a later quest)";
		GREY.."10) Get on zeppelin to go to orgrimmar";
		GREY.."11) Once in Orgrimmar, turn in";
		BLUE.."    Alliance Relations(21.53)";
		GREY.."12) Then fly to XRs";
		GREY.."13) Make XRs your home";
		GREY.."14) Fly to Freewind Post";
		_RED.."			Next Guide";	


	};	
	
	h5 = {
		ZoneName = "37-37";
		Location = "Thousand Needles";
		GREY.."2) Run towards the Shimmering Flats";
		GREY.."3) Turn in";
		BLUE.."   The Swarm Grows";
		GREY.."   Accept";
		BLUE.."   The Swarm Grows(part2)";
		GREY.."5) Stop at the goblins and turn in";
		BLUE.."   Delivery to the Gnomes";
		BLUE.."   Parts for Kravel";
		BLUE.."   Goblin Sponsorship(part3)";
		GREY.."6) Accept";
		BLUE.."   The Rumormonger";
		GREY.."   Do";
		BLUE.."8) The Swarm Grows";
		BLUE.."   Parts of the Swarm(item drop)";
		GREY.."9) Then go turn in";
		BLUE.."   The Swarm Grows";
		GREY.."10) Hearth to XRs";
		GREY.."12) Turn in";
		BLUE.."    Parts of the Swarm";
		GREY.."    Accept";
		BLUE.."    Parts of the Swarm(part2)";
		GREY.."13) Fly to Dustwallow Marsh";	
		_RED.."			Next Guide";	


	};	

	h6 = {
		ZoneName = "37-38";
		Location = "Dustwallow Marsh";
		GREY.."1) Accept";
		BLUE.."   Theramore Spies";
		BLUE.."   The Black Shield";
		GREY.."2) Go south of Brackenwall Village and accept";
		BLUE.."   Hungry!(35.37)";
		GREY.." 3)Kill everything while doing these quests";
		BLUE.."4) Theramore Spies";
		BLUE.."   The Black Shield";
		BLUE.."   Hungry!(58.23)";
		GREY.."   Accept";
		BLUE.."6) The Lost Report(55.25)";
		GREY.."   Turn In";
		BLUE.."7) Soothing Spices";
		GREY.."   Accept";
		BLUE.."   Jarl Needs Eyes";
		GREY.."8) Grind at 47.17, clear several times";
		GREY.."9) Do";
		BLUE.."   Stinky's Escape(45.17)";
		GREY.."10) Then go do";
		BLUE.."    Jarl Needs Eyes";
		GREY.."11) Stop at Brackenwall Village";
		GREY.."    Turn in all quests, and Accept all New ones";	
		_RED.."			Next Guide";	


	};		
	
	h7 = {
		ZoneName = "38-38";
		Location = "Dustwallow Marsh";
		GREY.."12) Turn in";
		BLUE.."    Hungry!";
		GREY.."13) Goto Jarl's cabin,Accept";
		BLUE.."    The Severed Head";
		GREY.."14) Turn in";
		BLUE.."    Jarl Needs Eyes";
		GREY.."15) Grind more raptors and such";
		GREY.."16) Do this quest";
		BLUE.."17) The Theramore Docks(71.51)";
		GREY.."18) Then die on purpose";
		GREY.."    You'll end up right at Brackenwall Village";
		GREY.."19) Turn in";
		BLUE.."    The Theramore Docks";
		GREY.."20) Turn in";
		BLUE.."    The Severed Head";
		GREY.."    Accept";
		BLUE.."    The Troll Witchdoctor";
		GREY.."21) Hearth to XRs";
		GREY.."22) Fly to Ratchet, turn in";
		BLUE.."    Stinky's Escape";
		GREY.."23) Get on the boat to go to BB";		
		_RED.."			Next Guide";	


	};			
	
	h8 = {
		ZoneName = "38-39";
		Location = "Stranglethorn Vale";
		GREY.."1) Accept";
		BLUE.."   The Bloodsail Buccaneers";
		BLUE.."   Scaring Shaky";
		BLUE.."   Venture Company Mining";
		GREY.."2) Make BB your home";
		GREY.."3) Fly to Grom'gol";
		GREY.."4) Accept";
		BLUE.."   Mok'thardin's Enchantment";
		GREY.."5) Turn in";
		BLUE.."   The Troll Witchdoctor";
		GREY.."   Right click the cauldron, accept";
		BLUE.."   Marg Speaks";
		GREY.."6) Go do";
		BLUE.."7) Raptor Mastery";
		BLUE.."   Mok'thardin's Enchantment";
		GREY.."8) Grind raptors/cold eye ballisks till level 39";
		GREY.."   Then Do";
		BLUE.."9) Venture Company Mining(40.42)";
		GREY.."10) Then go turn in";
		BLUE.."    Mok'thardin's Enchantment";
		GREY.."    Accept";
		BLUE.."    Mok'thardin's Enchantment(part3)";
		GREY.."11) Then do";
		BLUE.."    Panther Mastery(48.20 or 47.26)";		
		_RED.."			Next Guide";	


	};	

	h9 = {
		ZoneName = "39-39";
		Location = "Stranglethorn Vale";
		GREY.."12) Then turn in";
		BLUE.."    Panther Mastery"; 
		BLUE.."    Raptor Mastery";
		GREY.."13) Accept";
		BLUE.."    Raptor Mastery";
		GREY.."14) Hearth to BB";
		GREY.."15) Turn in";
		BLUE.."    Venture Company Mining";
		GREY.."16) Then go do";
		BLUE.."17) The Bloodsail Buccaneers";
		BLUE.."18) Scaring Shaky";
		BLUE.."    Mok'thardin's Enchantment(part3)";
		GREY.."19) Once that's done run back into BB";
		GREY.."20) Turn in";
		BLUE.."    Scaring Shaky";
		GREY.."    Accept";
		BLUE.."    Return to MacKinley";
		GREY.."21) Turn in";
		BLUE.."    The Bloodsail Buccaneers";
		GREY.."    Accept";
		BLUE.."    The Bloodsail Buccaneers";
		GREY.."22) Turn in";
		BLUE.."    Return to MacKinley";		
		_RED.."			Next Guide";	


	};	

	i1 = {
		ZoneName = "39-40";
		Location = "Stranglethorn Vale";
		GREY.."23) Turn in";
		BLUE.."    The Bloodsail Buccaneers";
		GREY.."24) Fly to Grom'gol";
		GREY.."25) Turn in";
		BLUE.."    Mok'thardin's Enchantment(part3)";
		GREY.."26) Should be a little over half way to 40 now.";
		GREY.."27) Now grind raptors/cold eye ballisks till 40";
		GREN.."28) OPTIONAL:"; 
		GREN.."    Scarlet Monastery instance instead";
		GREY.."29) Once 40, Get new spells/abilities";
		GREY.."30) Then get on the zeppelin to go to the UC";
		GREY.."31) Fly to Hammerfall";
		GREY.."32) Run all the way to the Badlands";
		_RED.."			Next Guide";	


	};		
};


AtlasLVV = {

	i2 = {
		ZoneName = "40-40";
		Location = "Badlands";
		GREY.."1) The goal here is not to leave till level 41";
		GREY.."   so grind mobs every where you go";
		GREY.."2) Turn in";
		BLUE.."   Martek the Exiled(44.53)";
		GREY.."3) Accept";
		BLUE.."   Barbecued Buzzard Wings";
		GREY.."4) Grind your way north-west";
		GREY.."5) Accept";
		BLUE.."   Study of the Elements: Rock";
		GREY.."6) Grind your way west to Kargath";
		GREY.."7) Get FP at Kargath";
		GREN.."8) Do NOT make Kargath your home.";
		GREY.."9) Accept";
		BLUE.."   Unclaimed Baggage";
		BLUE.."   Coyote Thieves";
		BLUE.."   Report to Helgrum"; 
		BLUE.."   Broken Alliances";
		BLUE.."   Badlands Reagent Run";
		GREY.."10) Then go do";
		BLUE.."11) Barbecued Buzzard Wings";
		BLUE.."12) Coyote Thieves";
		BLUE.."13) Broken Alliances";
		BLUE.."14) Badlands Reagent Run";
		BLUE.."15) Unclaimed Baggage";
		GREN.."    done at Angor Fortress, 42.31";
		GREN.."    Pack is in a barrel on the left entrance";
		GREN.."    Rapier is on weapon rack @ right entrance";
		_RED.."			Next Guide";	


	};	

	i3 = {
		ZoneName = "40-41";
		Location = "Badlands";
		GREY.."16) Turn in";
		BLUE.."    Study of the Elements: Rock (lesser)";
		GREY.."17) Then Do";
		BLUE.."    Study of the Elements: Rock (rock)";
		GREY.."    Turn in, then do";
		BLUE.."18) Study of the Elements: Rock (greater)";
		GREY.."19) Make sure all quests are done and turned in";
		GREY.."    Grind your way east discovering new areas";
		GREY.."    End up at Lethlor Ravine grinding whelps";
		GREY.."20) You should be 41 now if not grind to it";
		GREY.."21) Hearth to BB";
		GREY.."22) Fly to Grom'gol";
		GREY.."23) Then run all the way to Swamp of Sorrows.";
		GREY.."24) Stopping along the way to accept";
		BLUE.."    Nothing But the Truth (Duskwood at 87.35)";
		GREY.."25) Then turn in";
		BLUE.."    Nothing But the Truth(guy next to him)";
		GREY.."26) Accept";
		BLUE.."    Nothing But the Truth";
		GREY.."27) Then run into Swamp of Sorrows";
		_RED.."			Next Guide";	


	};	

	i4 = {
		ZoneName = "41-41";
		Location = "Swamp of Sorrows";
		GREY.."1) Start off doing";
		BLUE.."2) Dream Dust in the Swamp";
		BLUE.."3) Nothing But the Truth";
		GREN.."   Kill Mire Lord for the Mire Lord Fungus(6.32)";
		GREY.."4) Find and kill Cudgel";
		GREN.."   Drops Noboru's Cudgel, which starts";
		BLUE.."   Noboru the Cudgel";
		GREY.."5) Go turn in";
		BLUE.."   Noboru the Cudgel";
		GREY.."   Accept";
		BLUE.."   Draenethyst Crystals";
		GREY.."6) Grind to Stonard";
		GREY.."7) Make it your home";
		GREY.."8) Accept";
		BLUE.."   Lack of Surplus";
		BLUE.."   Fresh Meat";
		BLUE.."   Little Morsels";
		GREY.."9) Stable pet.";
		GREY.."10) Get FP";
		GREY.."11) Turn in";
		BLUE.."    Report to Helgrum";
		GREY.."    Accept";
		BLUE.."    Pool of Tears";
		GREY.."14) Then hearth to Stonard";
		_RED.."			Next Guide";	


	};	

		i5 = {
		ZoneName = "41-42";
		Location = "Swamp of Sorrows";
		GREY.."16) Go do the following quests";
		BLUE.."17) Pool of Tears";
		GREN.."    in the water around temple of atal'hakkar";
		BLUE.."18) Lack of Surplus";
		GREY.."    then turn it in";
		GREY.."    Accept";
		BLUE.."    Lack of Surplus part2";
		GREY.."    then go do it";
		BLUE.."19) Fresh Meat";
		BLUE.."20) Nothing But the Truth(shadow panther)";
		BLUE.."21) Ongeku";
		BLUE.."    Draenethyst Crystals";
		BLUE.."    Little Morsels";
		GREY.."22) Go turn in";
		BLUE.."    Draenethyst Crystals";
		BLUE.."23) Lack of Surplus part2";
		GREY.."    Accept";
		BLUE.."    Threat From the Sea";
		GREY.."24) Turn in";
		BLUE.."    Threat From the Sea";
		GREY.."    Accept the next part";
		_RED.."			Next Guide";	


	};	
	
		i6 = {
		ZoneName = "42-42";
		Location = "Swamp of Sorrows";
		GREY.."25) Go do";
		BLUE.."    Threat From the Sea";
		BLUE.."    Fresh Meat";
		GREY.."26) Turn in";
		BLUE.."    Threat From the Sea";
		GREY.."    Accept";
		BLUE.."    Continued Threat";
		GREY.."28) Hearth to Stonard";
		GREY.."29) Turn in";
		BLUE.."    Fresh Meat";
		BLUE.."    Little Morsels";
		BLUE.."    Pool of Tears";
		GREY.."    Accept";
		BLUE.."    The Atal'ai Exile";
		GREY.."30) Should be lvl 42 now, get spells/abilities";
		GREY.."31) Fly to Grom'gol";
		_RED.."			Next Guide";	


	};		
	
		
	
		i7 = {
		ZoneName = "42-42.5";
		Location = "Stranglethorn Vale";
		GREY.."1) Accept";
		BLUE.."   Mok'thardin's Enchantment part4";
		BLUE.."   Split Bone Necklace";
		GREY.."2) Fly to BB";
		GREY.."3) Accept ALL quests in BB";
		GREY.."4) Turn in";
		BLUE.."   Dream Dust in the Swamp";
		GREY.."5) Make BB your home.";
		GREY.."6) Then go do in the following order:";
		BLUE.."7) The Bloodsail Buccaneers";
		BLUE.."   Up to Snuff";
		BLUE.."   Keep An Eye Out";
		BLUE.."8) Mok'thardin's Enchantment part4";
		BLUE.."   Akiris by the Bundle";
		BLUE.."9) Zanzil's Secret";
		BLUE.."   Voodoo Dues";
		BLUE.."10) Skullsplitter Tusks";
		BLUE.."    Split Bone Necklace";
		GREY.."11) Keep grinding away at Skullsplitter trolls";
		GREY.."    until at least 2-3 bars away from 43.";
		GREY.."12) Then hearth to BB";
		GREY.."13) Turn in ALL quests.";
		GREY.."14) Fly to grom'gol";
		_RED.."			Next Guide";	


	};		
	
		i8 = {
		ZoneName = "42.5-43";
		Location = "Stranglethorn Vale";
		GREY.."15) Turn in";
		BLUE.."    Mok'thardin's Enchantment part4";
		BLUE.."    Split Bone Necklace";
		GREY.."16) Accept";
		BLUE.."    Grim Message";
		GREY.."17) Get on the zeppelin to go to Orgrimmar.";
		GREY.."18) Fly to Thunder Bluff";
		GREY.."19) Turn in";
		BLUE.."    Frostmaw";
		GREY.."    Accept";
		BLUE.."    Deadmire";
		GREN.."    Keep Frostmaw's mane in bank";
		GREY.."20) Fly to Desolace (or Dustwallow Marsh)";
		_RED.."			Next Guide";	


	};		
	

		i9 = {
		ZoneName = "43-43(optional)";
		Location = "Desolace";
		GREN.."1) OPTIONAL: This section can be skipped";
		GREN.."   if you are 4-5 blocks or more into lvl 43";
		GREY.."2) Make Shadowprey Village your home.";
		GREY.."3) Accept";
		BLUE.."   Portals of the Legion";
		GREY.."4) Go turn in";
		BLUE.."   Ongeku";
		GREN.."5) While your in Desolace, keep an eye out for";
		GREN.."   Elite Giant for quest: Nothing But the Truth";
		GREY.."7) Then do";
		BLUE.."8) Portals of the Legion";
		BLUE.."9) The Corrupter";
		GREY.."10) Turn in";
		BLUE.."    The Corrupter";
		GREY.."11) Then hearth to Shadowprey Village";
		GREY.."12) Turn in";
		BLUE.."    Portals of the Legion";
		GREY.."13) Fly to Dustwallow Marsh";;
		_RED.."			Next Guide";	


	};		
	
		j1 = {
		ZoneName = "43-43";
		Location = "Dustwallow Marsh";
		GREY.."1) Accept";
		BLUE.."   Identifying the Brood";
		BLUE.."   Army of the Black Dragon";
		BLUE.."   Overlord Mok'Morokk's Concern";
		GREY.."2) Go down to (39.36) and accept then do";
		BLUE.."   Questioning Reethe";
		GREY.."3) Go down and do:";
		BLUE.."4) Deadmire";
		BLUE.."5) Marg Speaks (58.63)";
		BLUE.."6) Identifying the Brood";
		BLUE.."   Army of the Black Dragon";
		BLUE.."7) Overlord Mok'Morokk's Concern";
		BLUE.."   (44.66)(38.65)(36.69)";
		GREY.."8) Then grind back to Brackenwall village";
		GREY.."9) Turn in";
		BLUE.."   Questioning Reethe";
		BLUE.."   Army of the Black Dragon";
		BLUE.."   Overlord Mok'Morokk's Concern";
		BLUE.."   Identifying the Brood";
		GREY.."   Accept";
		BLUE.."   The Brood of Onyxia";
		GREY.."10) Run back and forth until it is done";
		GREY.."11) Turn in";
		BLUE.."    Marg Speaks";
		GREY.."    Accept";
		BLUE.."    Report to Zor";
		GREY.."12) Fly to Tanaris";
		_RED.."			Next Guide";	


	};	
	
		j2 = {
		ZoneName = "43-43.5";
		Location = "Tanaris";
		GREY.."1) Go into Gadgetzan";
		GREY.."2) Accept";
		BLUE.."   WANTED: Andre Firebeard";
		BLUE.."   WANTED: Caliph Scorpidsting";
		GREY.."3) Turn in";
		BLUE.."   Tran'Rek";
		GREY.."4) Accept";
		BLUE.."   Gadgetzan Water Survey";
		BLUE.."   Wastewander Justice";
		BLUE.."   Water Pouch Bounty";
		GREY.."5) Make Gadgetzan your home.";
		GREY.."6) Then grind east to Steamwheedle Port.";
		GREY.."7) Then accept";
		BLUE.."   Pirate Hats Ahoy!";
		BLUE.."   Screecher Spirits";
		BLUE.."   Southsea Shakedown";
		GREY.."8) Turn in";
		BLUE.."   Stoley's Debt";
		GREY.."   Accept";
		BLUE.."   Stoley's Shipment";
		_RED.."			Next Guide";	


	};		

		j3 = {
		ZoneName = "43.5-44";
		Location = "Tanaris";
		GREY.."9) Then go complete these quests";
		BLUE.."10) Wastewander Justice";
		BLUE.."11) Water Pouch Bounty";
		BLUE.."12) Southsea Shakedown";
		BLUE.."13) Pirate Hats Ahoy!";
		BLUE.."14) Stoley's Shipment";
		BLUE.."15) Ship Schedules";
		BLUE.."16) WANTED: Andre Firebeard";
		GREY.."17) Once their all done, hearth to Gadgetzan";
		GREY.."18) Turn in";
		BLUE.."    Water Pouch Bounty";
		BLUE.."    Wastewander Justice";
		GREY.."    Accept";
		BLUE.."    More Wastewander Justice";
		GREY.."19) Go do";
		BLUE.."    Gadgetzan Water Survey(38.29)";
		GREY.."    Turn it in";
		GREY.."20) Go to Steamwheedle Port.";
		GREY.."21) Turn in ALL quests there";
		GREY.."    Accept";
		BLUE.."    Return to MacKinley";
		GREY.."22) Then go do";
		BLUE.."    More Wastewander Justice";
		BLUE.."    WANTED: Caliph Scorpidsting";
		_RED.."			Next Guide";	


	};	

		j4 = {
		ZoneName = "44-44";
		Location = "Tanaris";
		GREY.."23) Then hearth to Gadgetzan.";
		GREN.."    Make sure you save (put in your bank) all the";
		GREN.."    Wastewander Water Pouches you have";
		GREN.."    need them for a later quest";
		GREY.."24) Turn in";
		BLUE.."    More Wastewander Justice";
		BLUE.."    WANTED: Caliph Scorpidsting";
		GREY.."25) Fly to Freewind Post";
		GREY.."26) Run into Feralas";
		_RED.."			Next Guide";	


	};	

		j5 = {
		ZoneName = "44-45";
		Location = "Feralas";
		GREY.."1) Run into Camp Mojache.";
		GREY.."2) Accept ALL quests there.";
		GREY.."3) Get FP.";
		GREY.."4) Make it your home.";
		GREY.."5) Then go do in the following order:";
		BLUE.."6) War on the Woodpaw";
		BLUE.."7) The Ogres of Feralas";
		BLUE.."   Gordunni Cobalt";
		GREY.."8) Make sure you click on one of the";
		GREY.."   scrolls laying on the ground which starts";
		BLUE.."   The Gordunni Scroll";
		GREY.."9) Then go do";
		BLUE.."   A New Cloak's Sheen";
		GREY.."10) Turn ALL those quests in, accept new ones.";
		GREY.."11) Go do";
		BLUE.."    Alpha Strike";
		GREY.."    then turn it in.";
		GREY.."12) Go do";
		BLUE.."    Woodpaw Investigation";
		GREY.."    complete it, accept";
		BLUE.."    The Battle Plans";
		GREY.."13) Then go do";
		BLUE.."    A Grim Discovery";
		GREY.."14) Turn those quests in, accept new ones.";
		_RED.."			Next Guide";	


	};		
	
		j6 = {
		ZoneName = "45-45";
		Location = "Feralas";
		GREY.."15) Then go do";
		BLUE.."16) Stinglasher";
		BLUE.."    Zukk'ash Infestation";
		BLUE.."17) Screecher Spirits";
		BLUE.."18) The Ogres of Feralas part2";
		BLUE.."19) Dark Ceremony";
		BLUE.."20) The Mark of Quality";
		GREY.."21) Turn those quests in, accept new ones.";
		GREN.."22) I tend to get 90+ gold to buy my mount.";
		GREY.."23) I then Fly to Orgrimmar";
		GREY.."24) Once there turn in";
		BLUE.."    Zukk'ash Report";
		GREY.."25) Accept";
		BLUE.."    Ripple Recovery";
		GREY.."26) Then turn in";
		BLUE.."    Ripple Recovery";
		GREY.."    Accept";
		BLUE.."    Ripple Recovery again";
		GREY.."27) Turn in";
		BLUE.."    Parts of the Swarm";
		BLUE.."    A Grim Discovery";
		GREY.."    Accept";
		BLUE.."    Betrayed";
		_RED.."			Next Guide";	


	};		
};

AtlasLVX = {
		j7 = {
		ZoneName = "45-46";
		Location = "Feralas";
		GREY.."28) Go turn in";
		BLUE.."    A Strange Request";
		GREY.."    Accept";
		BLUE.."    Retrun to Witch Doctor Uzer'i(Cleft of S";
		GREY.."29) Go turn in";
		BLUE.."    Report to Zor";
		GREY.."    Accept/complete";
		BLUE.."    Service to the Horde(valley of wisdom)";
		GREY.."30) Go turn in";
		BLUE.."    The Gordunni Orb(valley of spirits)";
		GREY.."31) buy mount";
		GREY.."32) Then hearth back to Feralas";
		GREY.."33) Turn in";
		BLUE.."    Retrun to Witch Doctor Uzer'i";
		GREY.."    Accept";
		BLUE.."    Natural Materials";
		BLUE.."    Testing the Vessel";
		GREY.."34) Then do";
		BLUE.."    Natural Materials";
		GREY.."35) Grind hippogryphs till it's completed.";
		GREN.."36) If the OOX-22/FE Distress Beacon";
		GREN.."    item drops accept the quest Find OOX-22/FE!";
		GREY.."37) Turn in Find OOX-22/FE! (at 51.57)";
		GREY.."38) If your not level 46, grind till you are";
		GREN.."    on hippogryphs.";
		_RED.."			Next Guide";	


	};

		j8 = {
		ZoneName = "46-46";
		Location = "Feralas";
		GREY.."39) Hearth back to Camp Mojache.";
		GREY.."40) Turn in";
		BLUE.."    Natural Materials";
		GREY.."    Accept";
		BLUE.."    The Sunken Temple";
		GREY.."41) Fly to Thunder Bluff";
		GREY.."42) Turn in";
		BLUE.."    Deadmire";
		GREY.."43) Get new spells/abilities.";
		GREY.."44) Fly to Splintertree Post (Ashenvale)";
		GREY.."45) Then go into Azshara";
		_RED.."			Next Guide";	


	};
	
		j9 = {
		ZoneName = "46-46.5";
		Location = "Azshara";
		GREY.."1) Go accept";
		BLUE.."   Spiritual Unrest";
		BLUE.."   A Land Filled with Hatred(10.78)";
		GREY.."2) Then go do them, and turn them in.";
		GREY.."3) Then go to Valormok (at 21.52)";
		GREY.."4) Turn in";
		BLUE.."   Betrayed";
		GREY.."5) Then get FP there and fly to Orgrimmar.";
		GREY.."6) Then head to Under City.";
		GREY.."7) Once at UC, accept";
		BLUE.."   Lines of Communication(magic quarter)";
		GREY.."8) Then go to(apothecarium quarter), accept";
		BLUE.."   Seeping Corruption";
		BLUE.."   Errand for Apothecary Zinge";
		GREY.."9) Then go turn in";
		BLUE.."   Errand for Apothecary Zinge(The other room)";
		GREY.."10) Go return back, and turn in";
		BLUE.."    Errand for Apothecary Zinge";
		GREY.."    Accept";
		BLUE.."    Into the Field";
		GREY.."11) Fly to Tarren Mill.";
		GREY.."12) Make Tarren Mill your home.";
		GREY.."13) Then go into Hinterlands";
		_RED.."			Next Guide";	


	};
		
		k1 = {
		ZoneName = "46.5-47";
		Location = "Hinterlands";
		GREY.."1) Go turn in";
		BLUE.."   Ripple Recovery(at 25.47)";
		GREY.."   Accept";
		BLUE.."   A Sticky Situation";
		GREY.."2) Ride all the way to Revantusk Village(77.80)";
		GREY.."3) Accept";
		BLUE.."   Vilebranch Hooligans";
		BLUE.."   Cannibalistic Cousins";
		BLUE.."   Message to the Wildhammer";
		BLUE.."   Stalking the Stalkers";
		BLUE.."   Hunt the Savages";
		BLUE.."   Avenging the Fallen";
		GREN.."   Before you go start questing make sure you";
		GREN.."   stock up heavily on food/water/supplies";
		GREN.."   you won't be back to town for while.";
		GREY.."4) Then go do the following:";
		BLUE.."5) Whiskey Slim's Lost Grog";
		BLUE.."6) Vilebranch Hooligans";
		BLUE.."7) Cannibalistic Cousins";
		BLUE.."8) A Sticky Situation";
		GREY.."   Turn in later, accept";
		BLUE.."   Ripple Delivery";
		BLUE.."9) Stalking the Stalkers";
		BLUE.."10) Hunt the Savages";
		_RED.."			Next Guide";	


	};
	
		k2 = {
		ZoneName = "47-47 P1";
		Location = "Hinterlands";
		BLUE.."11) Testing the Vessel";
		BLUE.."12) Avenging the Fallen";
		BLUE.."13) Lines of Communication";
		BLUE.."14) Message to the Wildhammer";
		BLUE.."15) Rin'ji is Trapped!";
		GREN.."   (the escort quest, starts at 31.48)";
		BLUE.."16) Grim Message";
		GREN.."    while doing this quest accept";
		BLUE.."    Venom Bottles";
		GREN.."    (one of those little bottles on the table)";
		GREY.."17) Yeah the good 'ol hinterlands grind..";
		GREY.."18) If the OOX-09/HL Distress Beacon drops";
		GREY.."    accept the quest Find OOX-09/HL!";
		GREY.."19) Turn in Find OOX-09/HL! (at 49.38)";
		GREY.."20) Turn in Rin'ji is Trapped! (at 86.59)";
		GREY.."    Accept";
		BLUE.."    Rin'ji's Secret";
		GREY.."21) Go to Revantusk Village.";
		GREY.."22) Turn in ALL quests.";
		GREY.."23) Then get FP and fly to TM.";
		GREY.."24) Turn in";
		BLUE.."    Venom Bottles";
		GREY.."    Accept";
		BLUE.."    Undamaged Venom Sac";
		_RED.."			Next Guide";	


	};

		k3 = {
		ZoneName = "47-47 P2";
		Location = "Hinterlands";
		GREY.."25) Fly to Hammerfall";
		GREY.."26) Then go to Dr Gregory Victor to lvl first aid";
		GREN.."27) Usually able to get to 290 first aid for";
		GREN.."    Heavy Runecloth bandage, try to save";
		GREN.."    60 mageweave cloth for a later quest called";
		GREN.."    A Donation of Mageweave";
		GREY.."28) Then fly back to TM.";
		GREY.."29) Then ride back into Hinterlands (don’t fly)";
		GREY.."30) Go do";
		BLUE.."    Undamaged Venom Sac";
		BLUE.."    The Atal'ai Exile";
		GREY.."    Accept";
		BLUE.."    Return to Fel'Zerul";
		GREY.."31) Then hearth to TM.";
		GREY.."32) Turn in";
		BLUE.."    Undamaged Venom Sac";
		GREY.."33) Fly to the UC.";
		GREY.."34) Go to magic quarter and turn in";
		BLUE.."    A Donation of Mageweave";
		GREY.."35) Then turn in";
		BLUE.."    Lines of Communication";
		BLUE.."    Rin'ji's Secret";
		GREY.."     Then complete";
		BLUE.."    Oran's Gratitude";
		GREY.."36) Get on the zeppelin to go to Grom'gol";
		_RED.."			Next Guide";	


	};

		k4 = {
		ZoneName = "47-47 P3";
		Location = "Stranglethorn Vale";
		GREY.."1) Go do";
		BLUE.."   Raptor Mastery";
		GREY.."   then turn it in.";
		GREY.."2) Accept";
		BLUE.."   Big Game Hunter";
		GREY.."   Go do it, then turn it in.";
		GREY.."3) Go to Grom'gol..";
		GREY.."4) Turn in";
		BLUE.."   Grim Message";
		GREY.."5) Fly to BB.";
		GREY.."6) Accept";
		BLUE.."   The Bloodsail Buccaneers part5";
		GREY.."7) Turn in";
		BLUE.."   Whiskey Slim's Lost Grog";
		GREY.."8) Make BB your home.";
		GREY.."9) Accept";
		BLUE.."   The Captain's Chest";
		GREY.."   Then go do it (at 36.65)";
		GREN.."  NOTE:  This quest is tough to solo";
		GREN.."  it can be soloed, but you should find a group";
		GREN.."  to help you kill Gorlash, I personally skip it";
		GREN.."  while racing to 60.";
		GREY.."10) Go out to the shore east of BB,";
		GREY.."   find a small bottle laying around the shore";
		_RED.."			Next Guide";	


	};
	
		k5 = {
		ZoneName = "47-47 P4";
		Location = "Stranglethorn Vale";
		GREY.."   until this item shows up Carefully Folded Note";
		GREY.."   which starts Message in a Bottle";
		GREY.."12) Go turn in";
		BLUE.."    Message in a Bottle(at 37.82)";
		GREY.."13) Then go do";
		BLUE.."    The Bloodsail Buccaneers part5";
		GREN.."    (kill the three pirates in the three ships)";
		GREN.."    while doing it, find Cortello's Riddle";
		GREN.."    (it's usually downstairs in the middle ship)";
		GREY.."14) Then hearth back to BB";
		GREY.."15) Turn in";
		BLUE.."    The Bloodsail Buccaneers part5";
		BLUE.."    The Captain's Chest";
		GREY.."16) Fly to Kargath (Badlands)";
		GREY.."18) Go into Searing Gorge";
		_RED.."			Next Guide";	


	};	

		k6 = {
		ZoneName = "47-47.5";
		Location = "Searing Gorge";
		GREY.."1) First thing I do here is go south-east and do";
		BLUE.."   Caught! (guy in the outhouse)";
		GREN.."   Need a stack of silk cloth";
		GREY.."   then turn it in";
		GREY.."   Accept";
		BLUE.."   Ledger from Tanaris";
		GREY.."   Click on outhouse to get the";
		BLUE.."   Goodsteel Ledger";
		GREY.."2) Then go start killing Glassweb Spiders for";
		BLUE.."   Ledger from Tanaris quest.";
		GREY.."3) Then go up north-west, Talk to ";
		GREY.."   Kalaran Windblade(39.39) on way";
		GREY.."   to Thorium Point.Do his listen quest";
		BLUE.."   Divine Retribution";
		GREY.."   In order to get";
		BLUE.."   The Flawless Flame";
		GREY.."   Collect all quests at Thorium Point";
		GREY.."   get the FP there too.";
		GREY.."4) Then do the following:";
		BLUE.."5) Fiery Menace!";
		BLUE.."6) Curse These Fat Fingers";
		BLUE.."7) STOLEN: Smithing Tuyere";
		BLUE.."   Lookout's Spyglass";
		GREY.."8) Turn in,then get and do";
		BLUE.."   Forging the Shaft";
		BLUE.."9) JOB OPPORTUNITY: Culling the Competition";
		_RED.."			Next Guide";	


	};	
	
		k7 = {
		ZoneName = "47.5-48";
		Location = "Searing Gorge";
		BLUE.."10) WANTED: Overseer Maltorius";
		GREN.."   (only do this quest with a group";
		BLUE.."11) What the Flux?";
		BLUE.."12) Incendosaurs? Whateverosaur More Like It";
		BLUE.."13) The Key to Freedom";
		GREN.."    Starts from an item Grimsite Outhouse Key";
		GREN.."    Turn in at the outhouse (south-east)";
		GREY.."14) Once all that's done, turn them all in.";
		GREN.."    Make sure you have 20 solid crystal leg shafts.";
		GREY.."15) Head south into Burning Steppes..";
		GREY.."16) Discover some areas";
		GREY.."    Then get FP there(65.25)";
		GREY.."    Fly directly to Stonard (swamp of sorrows)";
		_RED.."			Next Guide";	


	};		

		k8 = {
		ZoneName = "48-48 P1";
		Location = "Swamp of Sorrows";
		GREY.."1) Make Stonard your home";
		GREY.."2) Go to the";
		BLUE.."   Fallen Hero of the Horde(36.64)";
		GREY.."   Keep talking to him till you get the quest";
		BLUE.."   The Disgraced One";
		GREY.."3) Then go do";
		BLUE.."   Cortello's Riddle(22.49 under the bridge)";
		GREY.."Accept the next part to it.";
		GREY.."4) If Nothing But the Truth is completed";
		GREY.."   Go turn it in.";
		GREY.."5) Either way, hearth back to Stonard.";
		GREY.."6) Go turn in";
		BLUE.."   Return to Fel'Zerul";
		BLUE.."   The Disgraced One";
		GREY.."   Accept";
		BLUE.."   The Missing Orders";
		GREY.."7) Get new spells/abilities";
		GREY.."8) Go turn in";
		BLUE.."   The Missing Orders";
		GREY.."   Accept";
		BLUE.."   The Swamp Talker";
		GREY.."9) Go do";
		BLUE.."   The Swamp Talker";
		BLUE.."   Continued Threat(cave at 65.78)";
		GREY.."10) Then go turn in";
		_RED.."			Next Guide";	


	};	
	
		k9 = {
		ZoneName = "48-48 P2";
		Location = "Swamp of Sorrows";
		BLUE.."    Continued Threat";
		GREY.."11) Then kill the mob Jarquia(around 94.48)";
		GREN.."    Drops Goodsteel's Balanced Flameberge";
		GREN.."    For the quest";
		BLUE.."    Ledger from Tanaris";
		GREY.."12) Then die on purpose end up at Stonard.";
		GREY.."13) Go to the";
		BLUE.."    Fallen Hero of the Horde(36.64)";
		GREY.."    turn in";
		BLUE.."    The Swamp Talker";
		GREY.."14) Accept and do";
		BLUE.."    A Tale of Sorrow";
		GREY.."15) Go back to Stonard and fly to Grom'gol";
		GREY.."16) Get on the zeppelin to go to Orgrimmar.";
		GREY.."17) Fly to Brackenwall Village";
		GREY.."    Once there accept";
		BLUE.."    The Brood of Onyxia";
		GREY.."18) Then head south and get";
		GREY.."    The Overdue Package for";
		BLUE.."    Ledger from Tanaris(at 52.53)";
		GREY.."19) Go down a bit and do";
		BLUE.."    The Brood of Onyxia(eggs @ 53.72,48.75)";
		GREY.."20) Head west to Bloodfen Burrow cave(31.67)";
		GREY.."    Do";
		BLUE.."    Cortello's Riddle";
		GREY.."    Accept the next part to it.";
		GREY.."21) Then die on purpose, end up at Brackenwall";
		_RED.."			Next Guide";	


	};		
	
		l1 = {
		ZoneName = "48-48 P3";
		Location = "Swamp of Sorrows";
		GREY.."22) Turn in";
		BLUE.."    The Brood of Onyxia";
		GREY.."23) Then fly to Tanaris";
		GREY.."24) Turn in";
		BLUE.."    Ledger from Tanaris";
		BLUE.."    Into the Field";
		GREY.."    Accept and complete";
		BLUE.."    Slake That Thirst";
		GREY.."25) Then Fly to Feralas";
		_RED.."			Next Guide";	


	};			

		l2 = {
		ZoneName = "48-49 P1";
		Location = "Feralas";
		GREY.."1) Turn in";
		BLUE.."   Testing the Vessel";
		GREY.."   Accept";
		BLUE.."   Hippogryph Muisek";
		GREY.."2) Accept";
		BLUE.."   Improved Quality";
		BLUE.."   Vengeance on the Northspring";
		BLUE.."   Dark Heart";
		GREY.."3) Make it your home.";
		GREY.."4) Go do";
		BLUE.."   Hippogryph Muisek";
		GREY.."5) Then hearth back to Camp Mojache.";
		GREY.."6) Turn in";
		BLUE.."   Hippogryph Muisek";
		GREY.."   Accept";
		BLUE.."   Faerie Dragon Muisek";
		GREY.."7) Go do";
		BLUE.."   Faerie Dragon Muisek";
		GREY.."   Then turn it in, Accept";
		BLUE.."   Treant Muisek";
		GREY.."8) Go do";
		BLUE.."   Treant Muisek";
		GREY.."   then turn it in, Accept";
		BLUE.."   Mountain Giant Muisek";
		_RED.."			Next Guide";	


	};

		l3 = {
		ZoneName = "48-49 P2";
		Location = "Feralas";
		GREY.."10) Go accept";
		BLUE.."    Zapped Giants (at 44.44)";
		GREY.."    Do the following quests:";
		BLUE.."13) Improved Quality";
		BLUE.."14) Perfect Yeti Hide";
		GREN.."   (Might find item/quest Improved Quality)";
		BLUE.."15) Vengeance on the Northspring";
		BLUE.."16) Dark Heart",
		BLUE.."17) Mountain Giant Muisek";
		BLUE.."    Zapped Giants";
		GREY.."18) Once those quests are completed, Turn in";
		BLUE.."    Zapped Giants";
		GREY.."19) Hearth to Camp Mojache.";
		GREY.."21) Turn in";
		BLUE.."    Mountain Giant Muisek";
		GREY.."    Accept";
		BLUE.."    Weapons of Spirit";
		GREY.."    Then turn it in complete it.";
		GREY.."22) Turn in";
		BLUE.."    Improved Quality";
		BLUE.."    Perfect Yeti Hide";
		BLUE.."    Vengeance on the Northspring";
		BLUE.."    Dark Heart";
		GREY.."     Accept";
		BLUE.."    The Strength of Corruption";
		GREY.."24) Fly to Tanaris";
		_RED.."			Next Guide";	

	};

		l4 = {
		ZoneName = "49-50 P1";
		Location = "Tanaris";
		GREY.."1) Make Gadgetzan your home.";
		GREY.."2) Accept";
		BLUE.."   The Thirsty Goblin";
		BLUE.."   Noxious Lair Investigation";
		BLUE.."   Super Sticky";
		BLUE.."   Thistleshrub Valley";
		BLUE.."   The Dunemaul Compound";
		GREY.."3) Go turn in";
		BLUE.."   The Sunken Temple(at 52.46)";
		GREY.."   Accept";
		BLUE.."   The Stone Circle";
		BLUE.."   Gahz'ridian";
		GREY.."4) Go do (in the following order:)";
		BLUE.."5) The Dunemaul Compound";
		BLUE.."   Gahz'ridian";
		BLUE.."6) Noxious Lair Investigation";
		BLUE.."7) Thistleshrub Valley";
		BLUE.."   The Thirsty Goblin";
		BLUE.."8) Tooga's Quest";
		GREY.."9) Then turn in";
		BLUE.."  Tooga's Quest";
		BLUE.."  Screecher Spirits";
		GREY.."10) Hearth to Gadgetzan.";
		_RED.."			Next Guide";	

	};

		l5 = {
		ZoneName = "49-50 P2";
		Location = "Tanaris";
		GREY.."11) Turn in";
		BLUE.."    The Thirsty Goblin";
		GREY.."    Accept";
		BLUE.."    In Good Taste";
		GREY.."    turn it in, Accept";
		BLUE.."    Sprinkle's Secret Ingredient";
		GREY.."12) Turn in";
		BLUE.."    Thistleshrub Valley";
		BLUE.."    The Dunemaul Compound";
		BLUE.."    Noxious Lair Investigation";
		GREY.."13) Accept";
		BLUE.."    The Scrimshank Redemption";
		GREY.."14) Go do:";
		BLUE.."15) Tanaris Field Sampling";
		GREY.."    Turn in";
		BLUE.."    Gahz'ridian";
		GREY.."16) If OOX-17/TN Distress Beacon item drops";
		GREY.."    Accept the quest Find OOX-17/TN!";
		GREY.."17) Turn in Find OOX-17/TN! (at 59.65)";
		GREN.."18) NOTE: I skip all escort robot chicken quests";
		GREY.."19) Once Tanaris Field Sampling is done, go do";
		BLUE.."    The Scrimshank Redemption";
		GREN.."    The secret for finding the item for this quest";
		GREN.."    Keep making right turns in the cave";
		GREN.."    it will lead you to it";
		_RED.."			Next Guide";	

	};
	
		l6 = {
		ZoneName = "49-50 P3";
		Location = "Tanaris";
		GREY.."20) Once The Scrimshank Redemption is done";
		GREY.."    die on purpose";
		GREY.."21) Then turn in";
		BLUE.."    Tanaris Field Sampling";
		GREY.."    Accept";
		BLUE.."    Return to Apothecary Zinge";
		GREY.."22) Turn in";
		BLUE.."    The Scrimshank Redemption";
		GREY.."    Accept";
		BLUE.."    Insect Part Analysis";
		GREY.."23) Turn in";
		BLUE.."    Insect Part Analysis";
		GREY.."    Accept";
		BLUE.."    Insect Part Analysis";
		GREY.."24) Turn in";
		BLUE.."    Insect Part Analysis";
		GREY.."    Accept";
		BLUE.."    Rise of the Silithid";
		GREY.."25) Fly to Orgrimmar";
		GREY.."26) Make Orgrimmar your home.";
		GREY.."27) Fly to Azshara";
		_RED.."			Next Guide";	

	};	

		l7 = {
		ZoneName = "50-50 P1";
		Location = "Azshara";
		GREY.."1) Accept";
		BLUE.."   Stealing Knowledge";
		GREY.."2) Go do";
		BLUE.."3) Stealing Knowledge";
		BLUE.."4) Seeping Corruption";
		GREY.."5) Once their done, turn in";
		BLUE.."   Stealing Knowledge";
		GREY.."   Accept ALL 4 delivery quests";
		GREY.."6) Turn in";
		BLUE.."   Delivery to Archmage Xylem";
		GREY.."   Accept";
		BLUE.."   Xylem's Payment to Jediga";
		GREY.."7) Then fly to Thunder Bluff";
		GREY.."8) Turn in";
		BLUE.."   Delivery to Magatha(Elder Rise)";
		GREY.."   Accept";
		BLUE.."   Magatha's Payment to Jediga";
		GREY.."9) Hearth to Orgrimmar.";
		GREY.."10) Go turn in";
		BLUE.."    Rise of the Silithid";
		GREY.."    Accept";
		BLUE.."    March of the Silithid(55.47)";
		GREY.."11) Turn in";
		BLUE.."    Delivery to Jes'rimon(51.34)";
		_RED.."			Next Guide";	

	};	

		l8 = {
		ZoneName = "50-50 P2";
		Location = "Azshara";
		GREY.."    Accept";
		BLUE.."    Jes'rimon's Payment to Jediga";
		BLUE.."    Bone-Bladed Weapons";
		GREY.."12) Then turn in";
		BLUE.."    Ripple Delivery(55.35)";
		GREY.."13) Then go get new spells/abilities";
		GREY.."14) Then go to The Undercity";
		GREY.."    Head to the Apothecarium Quarter";
		GREY.."15) Turn in";
		BLUE.."    Delivery to Andron Gant";
		GREY.."    Accept";
		BLUE.."    Andron's Payment to Jediga";
		GREY.."16) Then turn in";
		BLUE.."    Seeping Corruption";
		BLUE.."    Return to Apothecary Zinge";
		GREY.."    Accept";
		BLUE.."    Vivian Lagrave";
		GREY.."17) Then accept";
		BLUE.."    Seeping Corruption";
		GREY.."    Then turn it in (the tauren right next to him)";
		GREY.."18) Then complete";
		BLUE.."    Seeping Corruption";
		GREY.."19) Then accept";
		BLUE.."    A Sample of Slime...";
		BLUE.."    ... and a Batch of Ooze";
		GREY.."20) Then fly to Raventusk Village (Hinterlands)";
		_RED.."			Next Guide";	

	};
	
		l9 = {
		ZoneName = "50-50 P3";
		Location = "Hinterlands";
		GREY.."1) Accept";
		BLUE.."   Snapjaws, Mon!";
		BLUE.."   Gammerita, Mon!";
		BLUE.."   Lard Lost His Lunch";
		GREY.."4) Go do in the following order:";
		BLUE.."5) Snapjaws, Mon!";
		BLUE.."   Gammerita, Mon!";
		BLUE.."6) Cortello's Riddle(81.47)";
		BLUE.."7) Lard Lost His Lunch (at 84.42)";
		GREY.."8) Then go turn in";
		BLUE.."   Snapjaws, Mon!";
		BLUE.."   Gammerita, Mon!";
		BLUE.."   Lard Lost His Lunch";
		GREY.."9) Then go do";
		BLUE.."   Sprinkle's Secret Ingredient(at 41.60)";
		GREY.."10) Then hearth to Orgrimmar, Fly to Azshara.";
		GREY.."12) Turn in all 4 delivery quests.";
		GREY.."13) Fly to XRs Make XRs your home.";
		GREY.."15) Fly to Ratchet.";
		GREY.."16) Pick up the";
		BLUE.."    Stone Circle";
		BLUE.."    Volcanic Activity";
		GREY.."17) Get on the boat to go to BB";
		GREY.."18) Fly to Stonard (swamp of sorrows)..";
		GREY.."19) Go into Blasted Lands...";
		_RED.."			Next Guide";	

	};	
};	
	
	AtlasLVY = {	
	
			m1 = {
		ZoneName = "50-51 P1";
		Location = "Blasted Lands";
		GREY.."1) Find all the items for these 5 quests";
		BLUE.."2) A Boar's Vitality";
		BLUE.."3) Snickerfang Jowls";
		BLUE.."4) The Basilisk's Bite";
		BLUE.."5) The Decisive Striker";
		BLUE.."6) Vulture's Vigor";
		GREN.."7) Need to find these many items";
		GREN.."   to complete those quests:";
		_RED.."8) Vulture Gizzards =14";
		_RED.."9) Basilisk Brain =11";
		_RED.."10) Blasted Boar Lungs =6";
		_RED.."11) Scorpok Pincers =6";
		_RED.."12) Snickerfang Jowls =5";
		GREY.."13) Discover most of all the areas for XP";
		GREN.."14) If Imperfect Draenethyst Fragment drops";
		GREN.."    turn in for";
		BLUE.."    Everything Counts In Large Amounts";
		GREY.."16) Turn in all quests.";
		GREY.."17) I turn in, ASAP";
		BLUE.."    The Decisive Striker";
		GREY.."18) Then hearth to XRs.";
		GREY.."19) Fly to Tanaris";
		GREY.."20) Turn in";
		BLUE.."    Sprinkle's Secret Ingredient";
		_RED.."			Next Guide";	

	};	
			m2 = {
		ZoneName = "50-51 P2";
		Location = "Blasted Lands";
		GREY.."    Accept";
		BLUE.."    Delivery for Marin";
		GREY.."21) Turn in";
		BLUE.."    March of the Silithid";
		GREY.."    Accept";
		BLUE.."    Bungle in the Jungle";
		GREY.."22) Turn in";
		BLUE.."    Delivery for Marin";
		GREY.."    Accept";
		BLUE.."    Noggenfogger Elixir";
		GREY.."    then turn it in.";
		GREY.."23) Go turn in";
		BLUE.."    The Stone Circle(52.46 in Tanaris)";
		GREY.."24) Then go into Un'Goro Crater";
		_RED.."			Next Guide";	

	};	
			m3 = {
		ZoneName = "51-52 P1";
		Location = "Un'Goro Crater";
		GREY.."1) Go accept";
		BLUE.."   The Apes of Un'Goro";
		BLUE.."   The Fare of Lar'korwi(69.77)";
		GREY.."2) Go do";
		BLUE.."   The Fare of Lar'korwi(68.56)";
		GREY.."3) Then go start doing";
		BLUE.."   Super Sticky";
		GREY.."   Until [A Mangled Journal] Drops";
		GREY.."4) Then go into Marshal's Refuge";
		GREY.."   Get ALL quests there";
		GREY.."5) Turn in";
		BLUE.."   Williden's Journal";
		GREY.."6) Then go do the Ungoro Grind";
		GREN.."7) Don’t worry about the ungoro dirt mounds";
		GREN.."   you'll find enough soil from mob drops.";
		GREY.."8) Find 7 crystals of each color for the";
		BLUE.."   Crystals of Power";
		BLUE.."9) Super Sticky";
		BLUE.."10) The Apes of Un'Goro";
		BLUE.."    Chasing A-Me 01";
		BLUE.."11) Larion and Muigin";
		BLUE.."12) Beware of Pterrordax";
		BLUE.."13) Roll the Bones";
		BLUE.."14) Expedition Salvation";
		BLUE.."15) ... and a Batch of Ooze";
		_RED.."			Next Guide";	

	};	
			m4 = {
		ZoneName = "51-52 P2";
		Location = "Un'Goro Crater";
		GREY.."16) Go turn in";
		BLUE.."    The Apes of Un'Goro";
		GREY.."    Accept";
		BLUE.."    The Mighty U'cha";
		GREY.."17) Turn in";
		BLUE.."    The Fare of Lar'korwi";
		GREY.."    Accept";
		BLUE.."    The Scent of Lar'korwi";
		GREY.."18) Then go do";
		BLUE.."19) Bone-Bladed Weapons";
		BLUE.."    The Scent of Lar'korwi";
		BLUE.."20) It's a Secret to Everybody";
		GREN.."    (bag under water(63.69))";
		GREY.."21) Then turn in";
		BLUE.."    The Scent of Lar'korwi";
		GREY.."    Accept";
		BLUE.."    The Bait for Lar'korwi";
		GREY.."22) Then go do";
		BLUE.."    Alien Ecology";
		BLUE.."    Bungle in the Jungle";
		GREY.."23) Go accept and do";
		BLUE.."    Finding the Source(30.51)";
		BLUE.."    Volcanic Activity"; 
		GREY.."24) The hotspot path for the quest";
		BLUE.."    Finding the Source";
		GREY.."    starts at 51,42 and the hot spot is at 50,46 ";
		_RED.."			Next Guide";	

	};	
			m5 = {
		ZoneName = "51-52 P3";
		Location = "Un'Goro Crater";
		BLUE.."25) Lost!"..GREN.."Not till other quests are done";
		GREY.."26) Turn in ALL quests, accept new ones.";
		GREY.."27) Then go do (in the following order):";
		BLUE.."28) The Northern Pylon(56.13)";
		BLUE.."29) The Mighty U'cha";
		BLUE.."30) The Eastern Pylon(77.50)";
		BLUE.."31) The Bait for Lar'korwi";
		GREN.."    then turn it in along with The Mighty U'cha";
		GREY.."32) Go west killing oozes along the way";
		GREY.."33) Turn in";
		BLUE.."    Finding the Source";
		GREY.."    Accept";
		BLUE.."    The New Springs";
		BLUE.."34) The Western Pylon(23.58)";
		GREY.."35) Go to Marshal's Refuge kill oozes on the way";
		GREY.."36) Turn in quests. make sure you complete";
		BLUE.."    Making Sense of It";
		GREN.."    (just talk to the gnome in the cave)";
		GREY.."37) Then go to Cenarion Hold, get FP there.";
		GREY.."38) Fly to Tanaris";
		GREY.."39) Turn in";
		BLUE.."    Super Sticky";
		BLUE.."    Bungle in the Jungle";
		GREY.."40) Then fly to Thunder Bluff";
		GREY.."41) Go to Elder Rise";
		_RED.."			Next Guide";	

	};		
			m6 = {
		ZoneName = "51-52 P4";
		Location = "Un'Goro Crater";
		GREY.."42) Accept";
		BLUE.."    Un'goro Soil";
		GREY.."    Then turn it in";
		GREY.."    Accept";
		BLUE.."    Morrowgrain Research";
		GREY.."    Then turn that in";
		GREY.."44) Go get new spells/abilities.";
		GREY.."45) Hearth to XRs.";
		GREY.."46) Then fly to Ratchet";
		GREY.."47) Turn in";
		BLUE.."    Volcanic Activity";
		BLUE.."    Marvon's Workshop";
		GREY.."48) Get on the boat to go to BB";
		GREY.."49) Fly to Kargath";
		GREY.."50) Turn in";
		BLUE.."    Vivian Lagrave";
		GREY.."51) Accept:";
		BLUE.."    Dreadmaul Rock";
		BLUE.."    The Rise of the Machines";
		GREY.."52) Then fly to Burning Steppes";
		_RED.."			Next Guide";	

	};	
			m7 = {
		ZoneName = "52-53";
		Location = "Burning Steppes";
		GREY.."1) Accept";
		BLUE.."   Broodling Essence";
		BLUE.."   Tablet of the Seven";
		GREY.."2) Then go do:";
		BLUE.."3) Broodling Essence"..GREN.." kill all dragon whelps";
		BLUE.."4) Dreadmaul Rock";
		BLUE.."   Krom'Grul";
		BLUE.."5) Tablet of the Seven(54.40)";
		BLUE.."6) The Rise of the Machines";
		GREY.."7) Go turn in";
		BLUE.."   Tablet of the Seven";
		BLUE.."   Broodling Essence";
		GREY.."   Accept";
		BLUE.."   Felnok Steelspring";
		GREY.."8) Then fly to Kargath and turn in";
		BLUE.."   Krom'Grul";
		GREY.."10) Turn in";
		BLUE.."    The Rise of the Machines";
		GREY.."    Accept";
		BLUE.."    The Rise of the Machines part2";
		GREY.."11) Go turn in";
		BLUE.."    The Rise of the Machines part2(25.46)";
		GREY.."12) Then hearth to XRs, fly to Org";
		GREY.."14) Make Orgrimmar your home.";
		GREY.."15) Fly to Azshara...";
		_RED.."			Next Guide";	

	};	
			m8 = {
		ZoneName = "53-54 P1";
		Location = "Azshara";
		GREY.."1) Accept";
		BLUE.."   Betrayed";
		GREY.."   Accept";
		BLUE.."   Courser Antlers";
		GREY.."3) Go accept";
		BLUE.."   Kim'jael Indeed!(52.22)";
		GREY.."4) Then go do";
		BLUE.."5) Courser Antlers";
		BLUE.."6) Betrayed";
		BLUE.."7) Kim'jael Indeed!";
		GREN.."8) Grind away at bloodelfs for a while";
		GREY.."9) Once those 3 quests are done, go turn in";
		BLUE.."   Kim'jael Indeed!";
		GREY.."   Accept";
		BLUE.."   Kim'jael's Missing Equipment";
		GREY.."10) Turn in";
		BLUE.."    Courser Antlers";
		GREY.."    Accept";
		BLUE.."    Wavethrashing";
		GREY.."11) Then go do";
		BLUE.."12) Kim'jael's Missing Equipment";
		BLUE.."13) Wavethrashing";
		GREY.."14) Once both are done, Hearth to Orgrimmar.";
		GREY.."15) Then Fly to Azshara..";
		_RED.."			Next Guide";	

	};		
			m9 = {
		ZoneName = "53-54 P2";
		Location = "Azshara";
		GREY.."16) Turn in";
		BLUE.."    Betrayed";
		GREY.."    Accept";
		BLUE.."    Betrayed";
		GREY.."17) Turn in";
		BLUE.."    Wavethrashing";
		GREY.."18) Turn in";
		BLUE.."    Kim'jael's Missing Equipment";
		GREY.."19) At this point should be about 3/4th to 54";
		GREY.."    Grind your way to level 54 on BloodElfs.";
		GREN.."21) OPTIONAL: Do BRD instance instead.";
		GREY.."22) Once you hit 54 hearth to Orgrimmar.";
		GREY.."23) Then go turn in";
		BLUE.."    Bone-Bladed Weapons";
		BLUE.."    Betrayed";
		GREY.."24) Then fly to Splintertree Post";
		GREY.."25) Then go into Felwood";
		_RED.."			Next Guide";	

	};	
			n1 = {
		ZoneName = "54-54";
		Location = "Felwood";
		GREY.."1) Go accept";
		BLUE.."   Forces of Jaedenar";
		BLUE.."   Verifying the Corruption(at 50.81)";
		GREY.."2) Go accept";
		BLUE.."   Cleansing Felwood(46.84)";
		GREY.."3) I start killing oozes";
		GREN.."   Kill 30-40 oozes here total for";
		BLUE.."   A Sample of Slime...";
		GREY.."4) Then go complete";
		BLUE.."   Forces of Jaedenar";
		GREY.."5) Then go to BloodVenom Post";
		GREY.."6) Accept";
		BLUE.."   Well of Corruption";
		BLUE.."	  A Husband's Last Battle";
		BLUE.."   Wild Guardians";
		GREY.."7) Get FP there.";
		GREY.."8) Then go do in the following order";
		BLUE.."9) Verifying the Corruption";
		BLUE.."10) Cleansing Felwood";
		BLUE.."11) The Strength of Corruption";
		GREY.."12) Go accept";
		BLUE.."    Deadwood of the North(64.8)";
		GREY.."13) Grind way through the cave to Winterspring";
		_RED.."			Next Guide";	

	};	
			n2 = {
		ZoneName = "54-55 P1";
		Location = "Winterspring";
		GREY.."1) Exit the cave and accept";
		BLUE.."   Winterfall Activity";
		GREY.."2) Go to Donova Snowden(31.46)";
		GREY.."3) Turn in";
		BLUE.."   The New Springs";
		BLUE.."   It's a Secret to Everybody";
		GREY.."   Accept";
		BLUE.."   Strange Sources";
		BLUE.."	  Threat of the Winterfall";
		GREY.."5) Go to Everlook";
		GREY.."6) Accept";
		BLUE.."   Are We There, Yeti?";
		BLUE.."	  The Everlook Report";
		BLUE.."   Duke Nicholas Zverenhoff";
		BLUE.."   Sister Pamela";
		GREY.."7) Turn in";
		BLUE.."   Felnok Steelspring";
		GREY.."   Accept";
		BLUE.."   Chillwind Horns";
		GREY.."8) Make Everlook your home.";
		GREY.."9) Go Discover Darkwhisper Gorge for the quest";
		BLUE.."   Strange Sources";
		GREY.."10) Then hearth back to Everlook.";
		_RED.."			Next Guide";	

	};
			n3 = {
		ZoneName = "54-55 P2";
		Location = "Winterspring";
		GREY.."11) Then go do the following quests";
		BLUE.."12) Are We There, Yeti?";
		BLUE.."13) Threat of the Winterfall";
		GREN.."    You should find Empty Firewater Flask";
		GREN.."    Starts Winterfall Firewater";
		BLUE.."14) Wild Guardians";
		BLUE.."15) Chillwind Horns";
		GREY.."16) Once these are done turn in";
		BLUE.."    Threat of the Winterfall";
		BLUE.."    Winterfall Firewater";
		GREY.."    Accept";
		BLUE.."    Falling to Corruption";
		GREY.."17) Once the rest of the quests are complete";
		GREY.."18) Goto Everlook,Turn in all quests";
		GREY.."    Accept new ones";
		GREY.."19) Then go do:";
		BLUE.."20) Winterfall Activity";
		BLUE.."21) Are We There, Yeti?";
		GREY.."22) Then hearth to Everlook";
		GREY.."23) Go turn in";
		BLUE.."    Are We There, Yeti?";
		GREY.."    Accept";
		BLUE.."    Are We There, Yeti? part3";
		GREY.."24) Go scare Legacki for the quest";
		BLUE.."    Are We There, Yeti? part3";
		GREY.."25) Then fly to Felwood";
		_RED.."			Next Guide";	

	};		
			n4 = {
		ZoneName = "55-55 P1";
		Location = "Felwood";
		GREY.."1) Turn in";
		BLUE.."   Wild Guardians";
		GREY.."   Accept";
		BLUE.."   Wild Guardians part2";
		GREY.."2) Go turn in";
		BLUE.."   Cleansing Felwood";
		GREY.."   Then get a cenarion beacon for the quest";
		BLUE.."   Salve Via Hunting";
		GREY.."3) Go turn in";
		BLUE.."   Verifying the Corruption";
		BLUE.."   Forces of Jaedenar";
		GREY.."   Accept";
		BLUE.."   Collection of the Corrupt Water";
		GREY.."4) Go do in the following order:";
		BLUE.."5) A Husband's Last Battle";
		BLUE.."6) Well of Corruption";
		GREY.."   Collect 6 Corrupted Soul Shard for the quest";
		BLUE.."   Salve Via Hunting";
		BLUE.."7) Collection of the Corrupt Water";
		GREY.."8) Then go to Bloodvenom Post";
		GREY.."9) Turn in";
		BLUE.."   A Husband's Last Battle";
		BLUE.."   Well of Corruption";
		_RED.."			Next Guide";	

	};	
			n5 = {
		ZoneName = "55-55 P2";
		Location = "Felwood";
		GREY.."   Accept";
		BLUE.."   Corrupted Sabers";
		GREY.."10) Go turn in";
		BLUE.."    Salve Via Hunting";
		GREY.."11) Go turn in";
		BLUE.."    Collection of the Corrupt Water";
		GREY.."12) Go do";
		BLUE.."    Corrupted Sabers";
		GREY.."    Then turn it in";
		GREY.."13) Then go up north and do:";
		BLUE.."14) Deadwood of the North";
		BLUE.."15) Falling to Corruption";
		GREY.."    Then accept";
		BLUE.."    Mystery Goo";
		GREY.."16) Go turn in";
		BLUE.."    Deadwood of the North";
		GREY.."17) Then fight your way through the cave";
		GREY.."18) Turn in";
		BLUE.."    Winterfall Activity";
		_RED.."			Next Guide";	

	};	
			n6 = {
		ZoneName = "55-55 P3";
		Location = "Felwood";
		GREY.."19) Then go turn in";
		BLUE.."    Mystery Goo";
		GREY.."20) Then hearth to Everlook.";
		GREY.."21) Fly to Orgrimmar..";
		GREY.."22) Make Orgrimmar your home.";
		GREY.."23) Fly to Camp Mojache, Feralas.";
		GREY.."24) Turn in";
		BLUE.."    The Strength of Corruption";
		GREY.."25) Then fly to Tanaris.";
		GREY.."26) Go scare Sprinkle for the quest";
		BLUE.."    Are We There, Yeti? part3";
		GREY.."27) Then fly to Silithus";
		_RED.."			Next Guide";	

	};
			n7 = {
		ZoneName = "55-55 P4";
		Location = "Silithus";
		GREY.."1) Accept";
		BLUE.."   Report to General Kirika";
		BLUE.."   The Twilight Mystery";
		BLUE.."   Securing the Supply Lines";
		BLUE.."   Deadly Desert Venom";
		GREY.."2) Go do";
		BLUE.."   Securing the Supply Lines";
		BLUE.."   Deadly Desert Venom";
		GREY.."3) Then turn them in and accept new quests.";
		GREY.."4) Then go do:";
		BLUE.."5) Stepping Up Security";
		BLUE.."6) The Twilight Mystery";
		GREY.."7) Go turn in";
		BLUE.."   Report to General Kirika(50.69)";
		GREY.."   Accept";
		BLUE.."   Scouring the Desert";
		GREY.."8) Go do";
		BLUE.."   Noggle's Last Hope";
		BLUE.."   Scouring the Desert";
		GREN.."   Once you find the Silithyst item which";
		GREN.."   looks like a glowing red thing, bring it back";
		GREN.."   to the PVP horde base stand in the teleporter";
		GREY.."   Then turn the quest in for 6,600 XP!";
		BLUE.."9) Wanted - Deathclasp, Terror of the Sands";
		_RED.."			Next Guide";	

	};	
		n8 = {
		ZoneName = "55-55 P5";
		Location = "Silithus";
		GREY.."10) Once those are done";
		GREY.."    Turn them in, accept new ones.";
		GREY.."11) Go do";
		BLUE.."    Noggle's Lost Satchel(40.90)";
		BLUE.."12) The Deserter(67.71)";
		GREY.."13) Die on purpose, end up at Cenarion Hold.";
		GREY.."14) Turn in";
		BLUE.."    Noggle's Lost Satchel";
		GREY.."15) Then go to Marshal's Refuge";
		GREY.."16) Go scare Quixxil for";
		BLUE.."    Are We There, Yeti? part3";
		GREY.."17) Then hearth to Orgrimmar.";
		GREY.."18) Go to the UnderCity.";
		GREY.."19) Go complete";
		BLUE.."    A Sample of Slime...";
		BLUE.."    ... and a Batch of Ooze";
		GREY.."20) Go accept";
		BLUE.."    A Call To Arms: The Plaguelands!";
		GREY.."21) Make Under City your home.";
		GREY.."22) Go to the Bulwark.";
		_RED.."			Next Guide";
		
	};		
};

	AtlasLVZ = {	

		n9 = {
		ZoneName = "55-56 P1";
		Location = "Western Plaguelands";
		GREY.."1) Turn in";
		BLUE.."   A Call To Arms: The Plaguelands!";
		GREY.."   Accept";
		BLUE.."   Scarlet Diversions";
		GREN.."2) Get Flame in a Bottle first, it's in the box";
		GREY.."3) Turn in";
		BLUE.."   The Everlook Report";
		GREY.."4) Accept and complete";
		BLUE.."   Argent Dawn Commission";
		GREY.."5) Accept";
		BLUE.."   The So-Called Mark of the Lightbringer";
		BLUE.."   A Plague Upon Thee";
		GREY.."6) Go to the Western Plaguelands(field 38.55)";
		GREY.."7) Accept";
		BLUE.."   Better Late Than Never(in the house)";
		GREY.."8) Then go to the barn next door";
		GREY.."9) Complete";
		BLUE.."   Better Late Than Never";
		GREY.."   Click on the chest again to accept";
		BLUE.."   Better Late Than Never AGAIN";
		GREY.."10) Go do";
		BLUE.."    Scarlet Diversions";
		GREY.."11) Go back to the Bulwark";
		GREY.."12) Turn in";
		BLUE.."    Scarlet Diversions";
		_RED.."			Next Guide";
		
	};	

		o1 = {
		ZoneName = "55-56 P2";
		Location = "Western Plaguelands";
		GREY.."    Accept";
		BLUE.."    All Along the Watchtowers";
		GREY.."13) Accept";
		BLUE.."    The Scourge Cauldrons";
		GREY.."14) Go do the whole Cauldron quest chain";
		BLUE.."15) Target: Felstone Field";
		BLUE.."16) Target: Dalson's Tears";
		BLUE.."17) Target: Writhing Haunt";
		GREY.."    While your there accept";
		BLUE.."    The Wildlife Suffers(54.65)";
		BLUE.."18) Target: Gahrron's Withering";
		GREY.."19) Keep going back and forth completing them.";
		GREY.."20) Then go accept and complete";
		BLUE.."    Mission Accomplished!";
		GREY.."21) Then head into Eastern Plaguelands";
		_RED.."			Next Guide";
		
	};	

		o2 = {
		ZoneName = "56-57 P1";
		Location = "Eastern Plaguelands";
		GREY.."1) Go accept";
		BLUE.."   Demon Dogs";
		BLUE.."   Blood Tinged Skies";
		BLUE.."   Carrion Grubbage(6.44)";
		GREY.."2) Grind your way to(26.75), accept";
		BLUE.."   To Kill With Purpose";
		BLUE.."   Un-Life's Little Annoyances";
		GREY.."4) Grind to Darrowshire doing these quests";
		BLUE.."5) Demon Dogs";
		BLUE.."6) Blood Tinged Skies";
		BLUE.."7) Carrion Grubbage";
		GREY.."8) Then turn in";
		BLUE.."   Sister Pamela";
		GREY.."   Accept and do";
		BLUE.."   Pamela's Doll";
		GREY.."9) Turn in";
		BLUE.."   Pamela's Doll";
		GREY.."   Accept";
		BLUE.."   Auntie Marlene";
		BLUE.."   Uncle Carlin";
		GREY.."10) Then go complete";
		BLUE.."    Blood Tinged Skies";
		GREY.."11) Make sure you kill 20 Plaguehound Runts for";
		BLUE.."    Demon Dogs";
		_RED.."			Next Guide";
		
	};		
	
		o3 = {
		ZoneName = "56-57 P2";
		Location = "Eastern Plaguelands";
		GREY.."12) Then go to Light's Hope Chapel (81.60)";
		GREY.."13) Accept";
		BLUE.."    Zaeldarr the Outcast";
		BLUE.."    The Restless Souls";
		GREY.."14) Turn in";
		BLUE.."    Duke Nicholas Zverenhoff";
		BLUE.."    Uncle Carlin";
		GREY.."    Accept";
		BLUE.."    Defenders of Darrowshire";
		GREY.."15) Get FP there.";
		GREY.."16) Then go do:";
		BLUE.."17) To Kill With Purpose";
		BLUE.."18) Defenders of Darrowshire";
		BLUE.."19) Demon Dogs";
		BLUE.."20) Carrion Grubbage";
		BLUE.."21) Un-Life's Little Annoyances";
		BLUE.."22) A Plague Upon Thee";
		BLUE.."23) Augustus' Receipt Book";
		GREN.."    Get this quest in the hut at 13.34";
		GREN.."    The book is upstairs in the inn at 15.33";
		BLUE.."24) The Restless Souls (Egans in the hut 13.34)";
		GREY.."25) Then go turn in";
		BLUE.."    Augustus' Receipt Book";
		_RED.."			Next Guide";
		
	};	

		o4 = {
		ZoneName = "56-57 P3";
		Location = "Eastern Plaguelands";
		GREY.."26) Go through the cave and then turn in";
		BLUE.."    Demon Dogs";
		BLUE.."    Blood Tinged Skies";
		BLUE.."    Carrion Grubbage";
		GREY.."    Accept";
		BLUE.."    Redemption";
		GREY.."27) Then go turn in";
		BLUE.."    To Kill With Purpose";
		BLUE.."    Un-Life's Little Annoyances";
		GREY.."28) Then go do";
		BLUE.."     Zaeldarr the Outcast";
		GREY.."29) Then turn in";
		BLUE.."    Zaeldarr the Outcast";
		BLUE.."    Defenders of Darrowshire";
		GREY.."30) Hearth to UnderCity";
		GREY.."31) Turn in";
		BLUE.."    Better Late Than Never";
		GREY.."    Accept";
		BLUE.."    The Jeremiah Blues";
		GREY.."32) Turn in";
		BLUE.."    The Jeremiah Blues (UNDER BANK)";
		GREY.."    Accept";
		BLUE.."    Good Luck Charm";
		GREY.."33) Go back to the Bulwark";
		_RED.."			Next Guide";
		
	};			

		o5 = {
		ZoneName = "57-58 P1";
		Location = "Western Plaguelands";
		GREY.."1) Turn in";
		BLUE.."   A Plague Upon Thee";
		GREY.."   Accept";
		BLUE.."   A Plague Upon Thee part2";
		GREY.."2) Go turn in Good Luck Charm";
		GREY.."   Accept";
		BLUE.."   Two Halves Become One";
		GREY.."3) Do";
		BLUE.."   Two Halves Become One";
		GREY.."   Then turn it in.";
		GREY.."4) Then do";
		BLUE.."   A Plague Upon Thee part2";
		GREY.."   Accept";
		BLUE.."   A Plague Upon Thee part3 (46.32)";
		GREY.."5) Then go accept";
		BLUE.."   Unfinished Business part1";
		GREY.."   Then do it at 50.42 and 53.44";
		GREY.."6) Turn in";
		BLUE.."   Unfinished Business part1";
		GREY.."   Accept";
		BLUE.."   Unfinished Business part2";
		GREY.."   Then go do it. The 2 mobs are at (57.37 and 54.24)";
		GREY.."   While doing this quest make sure you do";
		BLUE.."   The So-Called Mark of the Lightbringer";
		GREN.."   (top of the tower 54.23)";
		_RED.."			Next Guide";
		
	};
	
		o6 = {
		ZoneName = "57-58 P2";
		Location = "Western Plaguelands";
		GREY.."7) Turn in";
		BLUE.."   Unfinished Business part2";
		GREY.."   Accept";
		BLUE.."   Unfinished Business part3";
		GREY.."   Then go do it go up in the tower (at 45.19)";
		GREY.."8) Then turn in";
		BLUE.."   Unfinished Business part3";
		GREY.."9) Then go complete and turn in";
		BLUE.."   The Wildlife Suffers Too";
		GREY.."   Accept";
		BLUE.."   The Wildlife Suffers Too part2";
		GREY.."10) Do";
		BLUE.."    The Wildlife Suffers Too part2";
		GREY.."    Then turn it in and accept";
		BLUE.."    Glyphed Oaken Branch";
		GREY.."11) Go turn in";
		BLUE.."    Auntie Marlene (48.78)";
		GREY.."    Accept";
		BLUE.."    A Strange Historian";
		GREY.."12) Go do";
		BLUE.."    A Strange Historian";
		GREN.."    (the ring is in the graveyard)";
		GREY.."13) Go into Andorhal and do";
		BLUE.."14) All Along the Watchtowers";
		_RED.."			Next Guide";
		
	};	

		o7 = {
		ZoneName = "57-58 P3";
		Location = "Western Plaguelands";
		GREY.."15) Turn in";
		BLUE.."    A Strange Historian(at Chromie)";
		GREY.."    Accept";
		BLUE.."    The Annals of Darrowshire";
		BLUE.."    A Matter of Time";
		GREY.."16) Then go do(while grinding away at mobs)";
		BLUE.."17) All Along the Watchtowers";
		BLUE.."18) A Matter of Time";
		BLUE.."19) The Annals of Darrowshire";
		GREN.."    the book for this is in the building at(42.67)";
		GREY.."20) Go turn in";
		BLUE.."    A Matter of Time";
		BLUE.."    The Annals of Darrowshire";
		GREY.."    Accept";
		BLUE.."21) Counting Out Time";
		GREY.."22) Go do";
		BLUE.."    Counting Out Time";
		GREY.."    then turn it in";
		GREN.."23) Keep grinding mobs in Andorhal till Friendly";
		GREN.."    With the Argent Dawn, So your able to buy";
		GREN.."    Enriched Manna Biscuits";
		GREY.."24) Once you hit Friendly go back to the Bulwark";
		GREY.."25) Turn in";
		BLUE.."    A Plague Upon Thee part3";
		BLUE.."    The So-Called Mark of the Lightbringer";
		_RED.."			Next Guide";
		
	};

		o8 = {
		ZoneName = "57-58 P4";
		Location = "Western Plaguelands";
		GREY.."26) Turn in";
		BLUE.."    All Along the Watchtowers";
		GREY.."    Accept";
		BLUE.."    Scholomance";
		GREY.."27) Turn in";
		BLUE.."    Scholomance";
		GREY.."    Accept";
		BLUE.."    Skeletal Fragments";
		GREY.."28) Then go back to Andorhal";
		GREY.."    Grind all the way to level 58, while doing";
		BLUE.."    Skeletal Fragments";
		GREY.."29) Once your 58 go to the Bulwark, turn in";
		BLUE.."    Skeletal Fragments";
		GREY.."30) I turn in any scourge stones, I have.";
		GREY.."31) stock up on Enriched Manna Biscuits";
		GREY.."32) Then go get on the zeppelin to go to Org";
		GREY.."33) Once in Orgrimmar get new spells/abilities.";
		GREY.."35) Then fly to Winterspring";
		_RED.."			Next Guide";
		
	};

		o9 = {
		ZoneName = "58-60 P1";
		Location = "Winterspring";
		GREY.."2) Then make Everlook your home.";
		GREY.."3) Turn in";
		BLUE.."   Are We There, Yeti? part3";
		GREY.."4) Accept";
		BLUE.."   Luck Be With You";
		BLUE.."   Ursius of the Shardtooth";
		GREY.."   Then do";
		BLUE.."   Luck Be With You";
		GREY.."7) Then hearth to Everlook.";
		GREY.."8) Go do";
		BLUE.."   Ursius of the Shardtooth";
		GREN.."   Grind on the hill north of everlook";
		GREN.."   Till Ursius shows up";
		GREY.."9) Go turn in";
		BLUE.."   Luck Be With You";
		BLUE.."   Ursius of the Shardtooth";
		GREY.."   Accept";
		BLUE.."   Brumeran of the Chillwind";
		GREY.."10) Then go south and do:";
		BLUE.."11) Brumeran of the Chillwind";
		BLUE.."13) Wild Guardians part2";
		GREY.."14) When a few bars from 59 go to Everlook";
		GREY.."15) Turn in";
		BLUE.."    Brumeran of the Chillwind";
		GREY.."16) Fly to Bloodvenom Post(felwood)";
		_RED.."			Next Guide";
		
	};
	
		p1 = {
		ZoneName = "58-60 P2";
		Location = "Winterspring";
		GREY.."17) Turn in";
		BLUE.."    Wild Guardians part2";
		GREY.."    Accept";
		BLUE.."    Wild Guardians part3";
		GREY.."18) Then hearth back to Everlook.";
		GREY.."19) Go down to the Owl Wing Thicket and do";
		BLUE.."    Wild Guardians part3";
		GREY.."20) Keep grinding away at Owls till 59 1/2.";
		GREY.."21) Die on purpose, end up at Everlook";
		GREY.."22) Then Fly to Bloodvenom Post(Felwood)";
		GREY.."23) Turn in";
		BLUE.."    Wild Guardians part3";
		BLUE.."    Guarding Secrets";
		GREY.."    Accept";
		BLUE.."    Guarding Secrets part2";
		GREY.."24) Then fly to Thunderbluff, go to Elder Rise";
		GREY.."25) Turn in";
		BLUE.."    Guarding Secrets part2";
		BLUE.."    Glyphed Oaken Branch";
		GREY.."26) Hearth back to Everlook.";
		GREY.."27) Should be about 3/4 way to 60";
		GREY.."28) Then go back down to the Owl Wing Thicket";
		GREY.."    Grind to 60";
		_RED.."			Congrats on Level 60";
		
	};	
	
};

		


