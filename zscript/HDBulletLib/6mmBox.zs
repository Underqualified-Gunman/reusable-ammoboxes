class Legacy_6mmBox : Legacy_AmmoBox {
	default {
		scale 0.3;
		HDMagAmmo.MaxPerUnit 100;
		HDMagAmmo.RoundType "HD6mmFlechetteAmmo";
		HDMagAmmo.RoundBulk ENC_6MMFLECHETTE_LOADED;
		tag "$TAG_6MM_BOX";
//		Inventory.PickupMessage "$PICKUP_6MM_BOX";
		HDPickup.refid LEGACY_HDLD_6MMFLECHETTEBOX;

		Legacy_AmmoBox.extractMin 1;
		Legacy_AmmoBox.extractMax 12;
	}

	override string pickupmessage() {
	    return Stringtable.Localize("$PICKUP_6MM_BOX");
    }

	override string,string,name,double getmagsprite(int thismagamt) {
		string magsprite=(thismagamt>0)?"ACRPK0":"ACRPW0";
		return magsprite,"ACRPI0","HD6mmFlechetteAmmo",0.6;
	}

	States {
		Spawn:
			ACRP K -1;
			stop;
		spawnempty:
			ACRP W -1{
				brollsprite=true;brollcenter=true;
				roll=180;
			}stop;
	}
}