{ config, ... }:
{
	boot = {
     loader = {
         efi = {
             canTouchEfiVariables = true;
             efiSysMountPoint = "/boot";
         };
         grub = {
             enable = true;
             efiSupport = true;
             device = "nodev";
             useOSProber = true;
         };
     };
     # Fix F keys on QK75 keyboard
     kernelParams =  [ "hid_apple.fnmode=2" ];
 };
}
