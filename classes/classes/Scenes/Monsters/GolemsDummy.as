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
	
	public class GolemsDummy extends Monster
	{
		public function backhand():void {
			outputText("The golems visage twists into a grimace of irritation, and few of them swings their hands at you in a vicious backhand.");
			var damage:Number = int (((str + weaponAttack) * 5) - rand(player.tou) - player.armorDef);
			//Dodge
			if (damage <= 0 || (player.getEvasionRoll())) outputText(" You slide underneath the surprise swings!");
			else
			{
				outputText(" They chits you square in the chest from a few different angles. ");
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
		
		public function GolemsDummy() 
		{
			this.a = "the ";
			this.short = "dummy golems";
			this.imageName = "dummy golems";
			this.long = "You're currently fighting dummy golems. They're all around six feet tall without any sexual characteristics, their stone body covered in cracks and using bare stone fists to smash enemies.";
			this.plural = true;
			initStrTouSpeInte(20, 20, 10, 10);
			initLibSensCor(10, 10, 50);
			this.lustVuln = 0;
			this.tallness = 72;
			this.createBreastRow(0, 1);
			initGenderless();
			this.drop = new ChainedDrop()
					.add(useables.GOLCORE, 1);
			this.level = 6;
			this.bonusHP = 50;
			this.additionalXP = 50;
			this.weaponName = "stone fists";
			this.weaponVerb = "smash";
			this.weaponAttack = 10 + (3 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.armorName = "cracked stone";
			this.armorDef = 10 + (2 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.createPerk(PerkLib.RefinedBodyI, 0, 0, 0, 0);
			this.createPerk(PerkLib.TankI, 0, 0, 0, 0);
			this.createPerk(PerkLib.EnemyGroupType, 0, 0, 0, 0);
			this.str += 4 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.tou += 4 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.spe += 2 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.inte += 2 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];			
			this.lib += 2 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.newgamebonusHP = 140;
			checkMonster();
		}
		
	}

}