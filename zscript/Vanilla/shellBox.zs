class Legacy_ShellBox : Legacy_AmmoBox {
	default {
		scale 0.4;
		HDMagAmmo.MaxPerUnit 20;
		HDMagAmmo.RoundType "HDShellAmmo";
		HDMagAmmo.RoundBulk ENC_SHELLLOADED;
		tag "$TAG_SHELL_BOX";
		Inventory.PickupMessage "Picked up a box of 12ga shells.";
		translation "160:167=80:105";
		HDPickup.refid LEGACY_HDLD_SHELLBOX;
	}

	override string,string,name,double getmagsprite(int thismagamt) {
		string magsprite=(thismagamt>0)?"SBOXA0":"SBOXW0";
		return magsprite,"SHL1A0","HDShellAmmo",0.6;
	}

	override void GetItemsThatUseThis() {
		itemsthatusethis.push("Hunter");
		itemsthatusethis.push("Slayer");
	}

	States {
		Spawn:
			SBOX A -1;
			stop;
		spawnempty:
			SBOX W -1{
				brollsprite=true;brollcenter=true;
				roll=180;
			}stop;
	}
}