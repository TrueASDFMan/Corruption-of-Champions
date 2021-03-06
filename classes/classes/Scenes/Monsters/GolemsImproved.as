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
	
	public class GolemsImproved extends Monster
	{
		public function backhand():void {
			outputText("The golems visage twists into a grimace of irritation, and few of them swings their hands at you in a vicious backhand.");
			var damage:Number = int (((str + weaponAttack) * 6) - rand(player.tou) - player.armorDef);
			//Dodge
			if (damage <= 0 || (player.getEvasionRoll())) outputText(" You slide underneath the surprise swings!");
			else
			{
				outputText(" They chits you square in the chest from a few different angles. ");
				damage = player.takeDamage(damage, true);
			}
			combatRoundOver();
		}
		
		public function overhandSmash():void {
			outputText("Raising their fists high overhead, the golems swiftly brings them down in a punishing strike!");
			
			var damage:Number = 150 + int(((str + weaponAttack) * 6) - rand(player.tou) - player.armorDef);
			if (damage <= 0 || rand(100) < 25 || player.getEvasionRoll()) outputText(" You're able to sidestep it just in time.");
			else
			{
				outputText(" The concussive strikes impacts you with a bonecrushing force. ");
				damage = player.takeDamage(damage, true);
			}
		}
		
		override protected function performCombatAction():void
		{
			var choice:Number = rand(6);
			if (choice < 3) eAttack();
			if (choice == 3 || choice == 4) backhand();
			if (choice == 5) overhandSmash();
			combatRoundOver();
		}
		
		public function GolemsImproved() 
		{
			this.a = "the ";
			this.short = "improved golems";
			this.imageName = "improved golems";
			this.long = "You're currently improved fighting golems. They're all around seven and half feet tall without any sexual characteristics, their stone body covered in cracks and using bare stone fists to smash enemies.";
			this.plural = true;
			initStrTouSpeInte(260, 200, 140, 10);
			initLibSensCor(10, 10, 50);
			this.lustVuln = 0;
			this.tallness = 90;
			this.createBreastRow(0, 1);
			initGenderless();
			this.drop = new ChainedDrop()
					.add(useables.GOLCORE, 1);
			this.level = 42;
			this.bonusHP = 700;
			this.additionalXP = 700;
			this.weaponName = "stone fists";
			this.weaponVerb = "smash";
			this.weaponAttack = 75 + (16 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.armorName = "stone";
			this.armorDef = 75 + (8 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.createPerk(PerkLib.RefinedBodyI, 0, 0, 0, 0);
			this.createPerk(PerkLib.TankI, 0, 0, 0, 0);
			this.createPerk(PerkLib.EnemyGroupType, 0, 0, 0, 0);
			this.str += 78 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.tou += 60 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.spe += 42 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.inte += 3 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];			
			this.lib += 3 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.newgamebonusHP = 9300;
			checkMonster();
		}
		
	}

}