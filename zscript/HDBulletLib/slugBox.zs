class Legacy_SlugBox : ReusableAmmobox {
	default {
		scale 0.4;

		HDMagAmmo.inserttime 6;
		HDMagAmmo.extracttime 10;

		HDMagAmmo.MaxPerUnit 20;
		HDMagAmmo.RoundType "HDSlugAmmo";
		HDMagAmmo.RoundBulk ENC_SHELLLOADED;

		tag "$TAG_SLUG_BOX";
//		Inventory.PickupMessage "$PICKUP_SLUG_BOX";
		HDPickup.refid LEGACY_HDLD_SLUGBOX;

		ReusableAmmobox.extractMax 4;
	}

	override string pickupmessage() {
	    return Stringtable.Localize("$PICKUP_SLUG_BOX");
    }

	override string,string,name,double getmagsprite(int thismagamt) {
		string magsprite=(thismagamt>0)?"SLBXA0":"SLBXW0";
		return magsprite,"SLG1A0","HDSlugAmmo",0.6;
	}

	States {
		Spawn:
			SLBX A -1;
			stop;
		spawnempty:
			SLBX W -1{
				brollsprite=true;brollcenter=true;
				roll=180;
			}stop;
	}
}