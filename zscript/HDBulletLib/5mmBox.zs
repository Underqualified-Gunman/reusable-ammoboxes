class Legacy_5mmBox : Legacy_AmmoBox {
	default {
		scale 0.4;
		HDMagAmmo.MaxPerUnit 160;
		HDMagAmmo.RoundType "HD5mm_Ammo";
		HDMagAmmo.RoundBulk ENC_5MM_LOADED;
		tag "$TAG_5MM_BOX";
//		Inventory.PickupMessage "$PICKUP_5MM_BOX";
		HDPickup.refid LEGACY_HDLD_5MMBOX;

		Legacy_AmmoBox.extractMin 1;
		Legacy_AmmoBox.extractMax 16;
	}

	override string pickupmessage() {
	    return Stringtable.Localize("$PICKUP_5MM_BOX");
    }

	override string,string,name,double getmagsprite(int thismagamt) {
		string magsprite=(thismagamt>0)?"5MBXA0":"5MBXW0";
		return magsprite,"5MMZA0","HD5mm_Ammo",0.6;
	}

	States {
		Spawn:
			5MBX A -1;
			stop;
		spawnempty:
			5MBX W -1{
				brollsprite=true;brollcenter=true;
				roll=180;
			}stop;
	}
}