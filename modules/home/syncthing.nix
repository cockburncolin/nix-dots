{ config, lib, ... }:
{
	
	services.syncthing = {
		enable = true;
		overrideDevices = true;
		overrideFolders = true;
		settings = {
			devices = {
				"NAS" = { id = "F4RNKCJ-A6M6TCD-SOGKRQY-LTGBEW2-ZB2IT4N-S4H5LJX-IYSIBTJ-GOO2BAC"; };
				"Laptop" = { id = "WUVSTY2-G6Q3IW5-EWPTL6O-3ROJ3RO-HNBYFEW-AGVIBV2-TMRJR5X-3FAAXAE"; };
				"Steamdeck" = { id = "6A25FDO-HBP5SST-D3VNY4P-7CSIGHW-4TOJGE2-OVXUE27-A4AU2I7-AYTLBAJ"; };
				"Desktop" = { id = "JH73IEG-I3NQVQN-WGOD6OE-3VRKKNS-AHIJOBQ-N4LBQDH-6KLT2EG-FNL3RAJ"; };
			};
			folders = {
				Roms = {
					id = "2mysu-dxmjr";
					path = "${config.home.homeDirectory}/Games/Roms}";
					devices = [ "NAS" "Steamdeck" ];
				};
			};
		};
	};
}
