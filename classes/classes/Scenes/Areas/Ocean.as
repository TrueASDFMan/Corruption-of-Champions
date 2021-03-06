/**
 * @author Stadler (mostly) and Ormael (choice of enemies encounters and other events)
 * Area with lvl 30-45 enemies.
 * Currently a Work in Progress.
 */

package classes.Scenes.Areas 
{
	import classes.*;
	import classes.GlobalFlags.kFLAGS;
	import classes.GlobalFlags.kGAMECLASS;
	import classes.Scenes.Areas.Ocean.*;
	
	use namespace kGAMECLASS;
	
	public class Ocean extends BaseContent
	{
		
		public function Ocean() 
		{
		}
		
		public function exploreOcean():void {
			flags[kFLAGS.DISCOVERED_OCEAN]++
			
			var choice:Array = [];
			var select:int;
			
			//Build choice list!
			choice[choice.length] = 0;	//SeaAnemone
			//choice[choice.length] = 1;	//Scylla?
			//choice[choice.length] = 2;	//Shark girl
			if (rand(4) == 0) choice[choice.length] = 1;	 //Find nothing! The rand will be removed from this once the Ocean is populated with more encounters.
			
			select = choice[rand(choice.length)];
			switch(select) {
				case 0:
					flags[kFLAGS.ANEMONE_OR_SEA_ANEMONE] = 2;
					kGAMECLASS.anemoneScene.mortalAnemoneeeeee();
					break;
			/*	case 1:
					kGAMECLASS.exploration.genericImpEncounters2();
					break;
				case 2:
					kGAMECLASS.exploration.genericDemonsEncounters1();
					break;
			*/	default:
					outputText("You row for over an hour, until your arms practically burn with exhaustion from all the rowing.\n\n", true);
					if (rand(2) == 0) {
						//50/50 strength/speed
						if (rand(2) == 0 && player.str < 150) {
							outputText("Despite tiredness you feel that you became stronger.", false);
							dynStats("str", .5);
						}
						//Toughness
						else if (player.spe < 150) {
							outputText("Despite tiredness you feel that you became faster.", false);
							dynStats("spe", .5);
						}
					}
					doNext(camp.returnToCampUseTwoHours);
			}
			
		}
		
	}

}