/**
 * ...
 * @author Ormael
 */
package classes.Perks 
{
	import classes.PerkClass;
	import classes.PerkType;

	public class WizardsEnduranceAndSluttySeductionPerk extends PerkType
	{

		override public function desc(params:PerkClass = null):String
		{
			return "Reduces fatigue cost of spells by " + params.value1 + "% and increases odds of successfully teasing and lust damage of successful teases by " + params.value2 + " points.";
		}

		public function WizardsEnduranceAndSluttySeductionPerk()
		{
			super("Wizard's Endurance/Slutty Seduction", "Wizard's Endurance/Slutty Seduction",
					"Your spellcasting equipment makes it harder for spell-casting to fatigue you and allows access to 'Seduce', an improved form of 'Tease'.!");
		}
		
		override public function keepOnAscension(respec:Boolean = false):Boolean 
		{
			return true;
		}		
	}

}