/**
 * ...
 * @author Ormael
 */
package classes.Scenes.Monsters 
{

	import classes.*;
	import classes.internals.*;
	import classes.GlobalFlags.kGAMECLASS;
	import classes.GlobalFlags.kFLAGS;
	
	public class GolemDummyImproved extends Monster
	{
		public function backhand():void {
			outputText("The golem's visage twists into a grimace of irritation, and it swings its hand at you in a vicious backhand.");
			var damage:Number = int ((str + weaponAttack) - rand(player.tou) - player.armorDef);
			//Dodge
			if (damage <= 0 || (player.getEvasionRoll())) outputText(" You slide underneath the surprise swing!");
			else
			{
				outputText(" It chits you square in the chest. ");
				damage = player.takeDamage(damage, true);
			}
		}
		
		override protected function performCombatAction():void
		{
			var choice:Number = rand(4);
			if (choice < 3) eAttack();
			if (choice == 3) backhand();
			combatRoundOver();
		}
		
		public function GolemDummyImproved() 
		{
			this.a = "the ";
			this.short = "improved dummy golem";
			this.imageName = "dummy golem";
			this.long = "You're currently fighting improved dummy golem. It's six and half feet tall without any sexual characteristics, it stone body covered in cracks and using it bare stone fists to smash enemies.";
			this.plural = false;
			initStrTouSpeInte(40, 40, 20, 10);
			initLibSensCor(10, 10, 50);
			this.lustVuln = 0;
			this.tallness = 78;
			this.createBreastRow(0, 1);
			initGenderless();
			this.drop = new ChainedDrop()
					.add(useables.GOLCORE, 1/4);
			this.level = 12;
			this.bonusHP = 100;
			this.additionalXP = 100;
			this.weaponName = "stone fists";
			this.weaponVerb = "smash";
			this.weaponAttack = 15 + (4 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.armorName = "cracked stone";
			this.armorDef = 15 + (2 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.createPerk(PerkLib.RefinedBodyI, 0, 0, 0, 0);
			this.createPerk(PerkLib.TankI, 0, 0, 0, 0);
			this.str += 8 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.tou += 8 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.spe += 4 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.inte += 2 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];			
			this.lib += 2 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.newgamebonusHP = 480;
			checkMonster();
		}
		
	}

}