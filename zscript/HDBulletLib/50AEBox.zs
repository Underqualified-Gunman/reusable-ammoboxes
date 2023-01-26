class Legacy_50AEBox : ReusableAmmobox {
	default {
		scale 0.32;

		HDMagAmmo.MaxPerUnit 50;
		HDMagAmmo.RoundType "HD50AEAmmo";
		HDMagAmmo.RoundBulk .65;

		tag "$TAG_50AE_BOX";
		Inventory.PickupMessage "$PICKUP_50AE_BOX";
		HDPickup.refid LEGACY_HDLD_50AEBOX;
	}

	override string,string,name,double getmagsprite(int thismagamt) {
		string magsprite=(thismagamt>0)?"50AEX0":"50AEW0";
		return magsprite,"PRNDA0","HD50AEAmmo",0.6;
	}

	States {
		Spawn:
			50AE X -1;
			stop;
		spawnempty:
			50AE W -1{
				brollsprite=true;brollcenter=true;
				roll=180;
			}stop;
	}
}