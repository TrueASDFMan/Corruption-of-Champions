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
	
	public class GolemTrueImproved extends Monster
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
		
		public function overhandSmash():void {
			outputText("Raising its fist high overhead, the golem swiftly brings it down in a punishing strike!");
			
			var damage:Number = 100 + int((str + weaponAttack) - rand(player.tou) - player.armorDef);
			if (damage <= 0 || rand(100) < 25 || player.getEvasionRoll()) outputText(" You're able to sidestep it just in time.");
			else
			{
				outputText(" The concussive strike impacts you with bonecrushing force. ");
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
		
		public function GolemTrueImproved() 
		{
			this.a = "the ";
			this.short = "improved true golem";
			this.imageName = "improved true golem";
			this.long = "You're currently fighting improved true golem. It's seven and half feet tall without any sexual characteristics, it stone body lacking any cracks dummy ones possesed and using it bare stone fists to smash enemies.";
			this.plural = false;
			initStrTouSpeInte(200, 160, 120, 10);
			initLibSensCor(10, 10, 50);
			this.lustVuln = 0;
			this.tallness = 90;
			this.createBreastRow(0, 1);
			initGenderless();
			this.drop = new ChainedDrop()
					.add(useables.GOLCORE, 1/4);
			this.level = 42;
			this.bonusHP = 500;
			this.additionalXP = 500;
			this.weaponName = "stone fists";
			this.weaponVerb = "smash";
			this.weaponAttack = 55 + (12 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.armorName = "stone";
			this.armorDef = 55 + (6 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL]);
			this.createPerk(PerkLib.RefinedBodyI, 0, 0, 0, 0);
			this.createPerk(PerkLib.TankI, 0, 0, 0, 0);
			this.str += 60 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.tou += 48 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.spe += 36 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.inte += 3 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];			
			this.lib += 3 * flags[kFLAGS.NEW_GAME_PLUS_LEVEL];
			this.newgamebonusHP = 7500;
			checkMonster();
		}
		
	}

}