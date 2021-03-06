/**
 * Created by aimozg on 26.01.14.
 */
package classes
{
	import classes.Perks.*;
	import classes.GlobalFlags.*;

	public class PerkLib
	{

		// UNSORTED perks TODO these are mostly incorrect perks: tested but never created
		public static const Buttslut:PerkType = mk("Buttslut", "Buttslut",
				"");
		public static const Focused:PerkType = mk("Focused", "Focused",
				"");
/* Never used, removed because it used a numbered event. Could be re-implemented differently if some new monster actually uses it
		public static const LastStrike:PerkType = mk("Last Strike", "Last Strike",
				"");
		public static const AnalFertility:PerkType = mk("Anal Fertility", "Anal Fertility", //Not implemented
				"Unlocks the ability to get anally pregnant other than Satyrs.");
				
*/
		// Player creation perks
		public static const Fast:PerkType = mk("Fast", "Fast",
				"Gains speed 25% faster.", null, true);
		public static const Lusty:PerkType = mk("Lusty", "Lusty",
				"Gains lust 25% faster.", null, true);
		public static const Pervert:PerkType = mk("Pervert", "Pervert",
				"Gains corruption 25% faster. Reduces corruption requirement for high-corruption variant of scenes.", null, true);
		public static const Sensitive:PerkType = mk("Sensitive", "Sensitive",
				"Gains sensitivity 25% faster.", null, true);
		public static const Smart:PerkType = mk("Smart", "Smart",
				"Gains intelligence 25% faster.", null, true);
		public static const Strong:PerkType = mk("Strong", "Strong",
				"Gains strength 25% faster.", null, true);
		public static const Tough:PerkType = mk("Tough", "Tough",
				"Gains toughness 25% faster.", null, true);
		// Female creation perks
		public static const BigClit:PerkType = mk("Big Clit", "Big Clit",
				"Allows your clit to grow larger more easily and faster.", null, true);
		public static const BigTits:PerkType = mk("Big Tits", "Big Tits",
				"Makes your tits grow larger more easily.", null, true);
		public static const Fertile:PerkType = mk("Fertile", "Fertile",
				"Makes you 15% more likely to become pregnant.", null, true);
		public static const WetPussy:PerkType = mk("Wet Pussy", "Wet Pussy",
				"Keeps your pussy wet and provides a bonus to capacity.", null, true);
		// Male creation perks
		public static const BigCock:PerkType = mk("Big Cock", "Big Cock",
				"Gains cock size 25% faster and with less limitations.", null, true);
		public static const MessyOrgasms:PerkType = mk("Messy Orgasms", "Messy Orgasms",
				"Produces 50% more cum volume.", null, true);
				
		// Ascension perks
		public static const AscensionDesires:AscensionDesiresPerk = new AscensionDesiresPerk();
		public static const AscensionEndurance:AscensionEndurancePerk = new AscensionEndurancePerk();
		public static const AscensionHardiness:AscensionHardinessPerk = new AscensionHardinessPerk();
		public static const AscensionFertility:AscensionFertilityPerk = new AscensionFertilityPerk();
		public static const AscensionFortune:AscensionFortunePerk = new AscensionFortunePerk();
		public static const AscensionMoralShifter:AscensionMoralShifterPerk = new AscensionMoralShifterPerk();
		public static const AscensionMysticality:AscensionMysticalityPerk = new AscensionMysticalityPerk();
		public static const AscensionSoulPurity:AscensionSoulPurityPerk = new AscensionSoulPurityPerk();
		public static const AscensionSpiritualEnlightenment:AscensionSpiritualEnlightenmentPerk = new AscensionSpiritualEnlightenmentPerk();
		public static const AscensionTolerance:AscensionTolerancePerk = new AscensionTolerancePerk();
		public static const AscensionTranshumanism:AscensionTranshumanismPerk = new AscensionTranshumanismPerk();
		public static const AscensionVirility:AscensionVirilityPerk = new AscensionVirilityPerk();
		public static const AscensionWisdom:AscensionWisdomPerk = new AscensionWisdomPerk();
		
		// Ascension Rare perks
		public static const AscensionHerosHeritage:PerkType = mk("Ascension: Hero's Heritage", "Ascension: Hero's Heritage",
				"After reincarnation you ended in body of local hero descendant possesing much more firm body and resolve giving you a slight easier start of your quest in Mareth.");
		public static const AscensionHybridTheory:PerkType = mk("Ascension: Hybrid Theory", "Ascension: Hybrid Theory",
				"Allows you to reduce by one needed to accumulate mutations into non-human species to attain race specific enhancing effects.");
		public static const AscensionNaturalMetamorph:PerkType = mk("Ascension: Natural Metamorph", "Ascension: Natural Metamorph",
				"When others needs to work hard on unlocking their metamorph potential you never had to do it. Whatever the reason for that is... truth be told you try not to think about it, effraid of what it might mean for you. You do not want to care about it as long as it's nothing harmfull for you in the long run.");
		public static const AscensionUnderdog:PerkType = mk("Ascension: Underdog", "Ascension: Underdog",
				"You're underdog. Gains twice more exp for beating up enemies above your current level with doubled limit after which increase to gained exp stops.");
				// Also allow to use 'accidentally' finding all forgotten or hidden legacies from times before the demon invasion.");
		public static const AscensionUnlockedPotential:PerkType = mk("Ascension: Unlocked Potential", "Ascension: Unlocked Potential",
				"Due to reincarnation experience your body becoming strong faster than in previous life (increased passive gains at lvl-up).");
	//	public static const Ascension:PerkType = mk("Ascension: Artifical-made Metamorph", "Ascension: Artifical-made Metamorph",
	//			".");
	//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
	//			".");
	//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
	//			".");
		
		// History perks
		public static const HistoryAlchemist:PerkType = mk("History: Alchemist", "History: Alchemist",
				"Alchemical experience makes items more reactive to your body.");
		public static const PastLifeAlchemist:PerkType = mk("Past Life: Alchemist", "Past Life: Alchemist",
				"Alchemical experience makes items more reactive to your body.", null, true);
		public static const HistoryCultivator:PerkType = mk("History: Cultivator", "History: Cultivator",
				"Soulforce is easier to kept giving you 10% increase to it maximum amount.");
		public static const PastLifeCultivator:PerkType = mk("Past Life: Cultivator", "Past Life: Cultivator",
				"Soulforce is easier to kept giving you 10% increase to it maximum amount.", null, true);
		public static const HistoryFighter:PerkType = mk("History: Fighter", "History: Fighter",
				"A Past full of conflict increases physical melee damage dealt by 10%.");
		public static const PastLifeFighter:PerkType = mk("Past Life: Fighter", "Past Life: Fighter",
				"A Past full of conflict increases physical melee damage dealt by 10%.", null, true);
		public static const HistoryFortune:PerkType = mk("History: Fortune", "History: Fortune",
				"Your luck and skills at gathering currency allows you to get 15% more gems from victories.");
		public static const PastLifeFortune:PerkType = mk("Past Life: Fortune", "Past Life: Fortune",
				"Your luck and skills at gathering currency allows you to get 15% more gems from victories.", null, true);
		public static const HistoryHealer:PerkType = mk("History: Healer", "History: Healer",
				"Healing experience increases HP gains by 20%.");
		public static const PastLifeHealer:PerkType = mk("Past Life: Healer", "Past Life: Healer",
				"Healing experience increases HP gains by 20%.", null, true);
		public static const HistoryReligious:PerkType = mk("History: Religious", "History: Religious",
				"Replaces masturbate with meditate when corruption less than or equal to 66. Reduces minimum libido slightly.");
		public static const PastLifeReligious:PerkType = mk("Past Life: Religious", "Past Life: Religious",
				"Replaces masturbate with meditate when corruption less than or equal to 66. Reduces minimum libido slightly.", null, true);
		public static const HistoryScholar:PerkType = mk("History: Scholar", "History: Scholar",
				"Time spent focusing your mind makes spellcasting 20% less fatiguing.");
		public static const PastLifeScholar:PerkType = mk("Past Life: Scholar", "Past Life: Scholar",
				"Time spent focusing your mind makes spellcasting 20% less fatiguing.", null, true);
		public static const HistoryScout:PerkType = mk("History: Scout", "History: Scout",
				"A Past full of archery training increases physical range damage dealt by 10% and acc by 20%.");
		public static const PastLifeScout:PerkType = mk("Past Life: Scout", "Past Life: Scout",
				"A Past full of archery training increases physical range damage dealt by 10% and acc by 20%.", null, true);
		public static const HistorySlacker:PerkType = mk("History: Slacker", "History: Slacker",
				"Regenerate fatigue 20% faster.");
		public static const PastLifeSlacker:PerkType = mk("Past Life: Slacker", "Past Life: Slacker",
				"Regenerate fatigue 20% faster.", null, true);
		public static const HistorySlut:PerkType = mk("History: Slut", "History: Slut",
				"Sexual experience has made you more able to handle large insertions and more resistant to stretching.");
		public static const PastLifeSlut:PerkType = mk("Past Life: Slut", "Past Life: Slut",
				"Sexual experience has made you more able to handle large insertions and more resistant to stretching.", null, true);
		public static const HistorySmith:PerkType = mk("History: Smith", "History: Smith",
				"Knowledge of armor and fitting increases armor effectiveness by roughly 10%.");
		public static const PastLifeSmith:PerkType = mk("Past Life: Smith", "Past Life: Smith",
				"Knowledge of armor and fitting increases armor effectiveness by roughly 10%.", null, true);
		public static const HistoryWhore:PerkType = mk("History: Whore", "History: Whore",
				"Seductive experience causes your tease attacks to be 15% more effective.");
		public static const PastLifeWhore:PerkType = mk("Past Life: Whore", "Past Life: Whore",
				"Seductive experience causes your tease attacks to be 15% more effective.", null, true);
		
		// Ordinary (levelup) perks
		public static const Acclimation:PerkType = mk("Acclimation", "Acclimation",
				"Reduces lust gain by 15%.",
				"You choose the 'Acclimation' perk, making your body 15% more resistant to lust, up to a maximum of 75%.");
		public static const AdvancedEndurance:PerkType = mk("Advanced Endurance", "Advanced Endurance",
				"Increases maximum fatigue by 200.",
				"You choose the 'Advanced Endurance' perk. Thanks to your advanced physical conditioning, your maximum fatigue has been increased by 200!");	
		public static const AdvancedSelfControl:PerkType = mk("Advanced Self-Control", "Advanced Self-Control",
				"Increases maximum lust by 100.",
				"You choose the 'Advanced Self-Control' perk. Thanks to your advanced mental conditioning, your maximum lust has been increased by 100!");
		public static const Agility:PerkType = mk("Agility", "Agility",
				"Boosts armor points by a portion of your speed on light/medium armors.",
				"You choose the 'Agility' perk, increasing the effectiveness of Light/Medium armors by a portion of your speed.");
		public static const ArchersStaminaI:PerkType = mk("Archer's Stamina I", "Archer's Stamina I",
				"+1 extra fatigue per point of speed.",
				"You choose the 'Archer's Stamina I' perk, granting +1 extra maximum fatigue for each point of speed.");
		public static const ArchersStaminaII:PerkType = mk("Archer's Stamina II", "Archer's Stamina II",
				"+1 extra fatigue per point of speed.",
				"You choose the 'Archer's Stamina II' perk, granting +1 extra maximum fatigue for each point of speed.");
		public static const ArchersStaminaIII:PerkType = mk("Archer's Stamina III", "Archer's Stamina III",
				"+1 extra fatigue per point of speed.",
				"You choose the 'Archer's Stamina III' perk, granting +1 extra maximum fatigue for each point of speed.");
		public static const ArchersStaminaIV:PerkType = mk("Archer's Stamina IV", "Archer's Stamina IV",
				"+1 extra fatigue per point of speed.",
				"You choose the 'Archer's Stamina IV' perk, granting +1 extra maximum fatigue for each point of speed.");
		public static const ArchersStaminaV:PerkType = mk("Archer's Stamina V", "Archer's Stamina V",
				"+1 extra fatigue per point of speed.",
				"You choose the 'Archer's Stamina V' perk, granting +1 extra maximum fatigue for each point of speed.");
		public static const Archmage:PerkType = mk("Archmage", "Archmage",
				"[if (player.inte>=75)" +
						"Increases base spell strength by 30% and base mana pool by 45." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Archmage' perk, increasing base spell strength by 30% and base mana pool by 45.");
		public static const ArcaneLash:PerkType = mk("Arcane Lash", "Arcane Lash",
				"Your whip act as a catalyst for your lust inducing spells as well as for magic weapon.",
				"You choose the 'Arcane Lash' perk, causing you to increase effects of lust inducing spells and weapon when using whip.");
		public static const ArousingAura:PerkType = mk("Arousing Aura", "Arousing Aura",
				"Exude a lust-inducing aura (Req's corruption of 70 or more)",
				"You choose the 'Arousing Aura' perk, causing you to radiate an aura of lust when your corruption is over 70.");
		public static const AyoArmorProficiency:PerkType = mk("Ayo Armor Proficiency", "Ayo Armor Proficiency",
				"Wearing Ayo Armor's grants 10% damage reduction.",
				"You choose the 'Ayo Armor Proficiency' perk.  Due to your specialization in wearing ayo armor's you gain a little bit of damage reduction.");
		public static const BasicEndurance:PerkType = mk("Basic Endurance", "Basic Endurance",
				"Increases maximum fatigue by 30.",
				"You choose the 'Basic Endurance' perk. Thanks to your basic physical conditioning, your maximum fatigue has been increased by 30!");	
		public static const BasicSelfControl:PerkType = mk("Basic Self-Control", "Basic Self-Control",
				"Increases maximum lust by 15.",
				"You choose the 'Basic Self-Control' perk. Thanks to your basic mental conditioning, your maximum lust has been increased by 15!");
		public static const Battleflash:PerkType = mk("Battleflash", "Battleflash",
				"Start every battle with Blink enabled, if you meet Black Magic requirements before it starts.",
				"You choose the 'Battleflash' perk. You start every battle with Blink effect, as long as your Lust is sufficient to cast it before battle.");
		public static const Battlemage:PerkType = mk("Battlemage", "Battlemage",
				"Start every battle with Might enabled, if you meet Black Magic requirements before it starts.",
				"You choose the 'Battlemage' perk. You start every battle with Might effect, as long as your Lust is sufficient to cast it before battle.");
		public static const Berzerker:PerkType = mk("Berzerker", "Berserker",
				"[if(player.str>=75)" +
						"Grants 'Berserk' ability." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Berserker' perk, which unlocks the 'Berserk' magical ability.  Berserking increases attack and lust resistance but reduces physical defenses.");
		public static const BlackHeart:PerkType = mk("Black Heart", "Black Heart",
				"You intelligence to increase power of lust strike as well making fascinate slightly stronger.",
				"You choose the 'Black Heart' perk. Your heart due to repeadly exposition to corruption turned black.");
		public static const Blademaster:PerkType = mk("Blademaster", "Blademaster",
				"Gain +5% to critical strike chance when wielding a sword and not using a shield.",
				"You choose the 'Blademaster' perk.  Your chance of critical hit is increased by 5% as long as you're wielding a sword and not using a shield.");
		public static const BodyCultivator:PerkType = mk("Body Cultivator", "Body Cultivator",
				"Allow you to train the body of soul cultivator.",
				"You choose the 'Body Cultivator' perk, starting journey of the body cultivators path!");
		public static const Brawler:PerkType = mk("Brawler", "Brawler",
				"Brawling experience allows you to make two unarmed attacks in a turn.",
				"You choose the 'Brawler' perk, allowing you to make two unarmed attacks in a turn!");
		public static const BrutalBlows:PerkType = mk("Brutal Blows", "Brutal Blows",
				"[if(player.str>=75)" +
						"Reduces enemy armor with each hit." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Brutal Blows' perk, which reduces enemy armor with each hit.");
		public static const CarefulButRecklessAimAndShooting:PerkType = mk("Careful but Reckless Aim and Shooting", "Careful but Reckless Aim and Shooting",
				"Increase accuracy by 30% at cost of loosing 15 Tou.",
				"You choose the 'Careful but Reckless Aim and Shooting' perk, improving your accuracy by 30% at the cost of lowering by 15 your toughness.");
		public static const CatlikeNimbleness:PerkType = mk("Cat-like Nimbleness", "Cat-like Nimbleness",
				"Your transformed joins allows you to move more swiftly and with greater nimbleness.",
				"You choose the 'Cat-like Nimbleness' perk. Your body joints due to repeadly usage of cat-like flexibility became more nimble.");
		public static const Channeling:PerkType = mk("Channeling", "Channeling",
				"[if (player.inte>=60)" +
						"Increases base spell strength by 10% and base mana pool by 15." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Channeling' perk, boosting the strength of your spellcasting and expanding your mana pool!");
		public static const ChimericalBodyAdvancedStage:PerkType = mk("Chimerical Body: Advanced Stage", "Chimerical Body: Advanced Stage",
				".",
				"You choose the 'Chimerical Body: Advanced Stage' perk.  Coś coś!");	
		public static const ChimericalBodyBasicStage:PerkType = mk("Chimerical Body: Basic Stage", "Chimerical Body: Basic Stage",
				"Your metabolic adaptation reached level possesed by most simplest and weakest chimeras.",
				"You choose the 'Chimerical Body: Basic Stage' perk. Your body reach adaptation stage for most base chimeras.");	
		public static const ChimericalBodyInitialStage:PerkType = mk("Chimerical Body: Initial Stage", "Chimerical Body: Initial Stage",
				"Constant mutations resulted in your body developing the most basic resistance to increased stress put on your metabolism by that.",
				"You choose the 'Chimerical Body: Initial Stage' perk. Constant mutations causing your body to forcefully adapt to increased metabolism needs.");	
		public static const ChimericalBodyPerfectStage:PerkType = mk("Chimerical Body: Perfect Stage", "Chimerical Body: Perfect Stage",
				".",
				"You choose the 'Chimerical Body: Perfect Stage' perk.  Coś coś!");	
		public static const ChimericalBodyUltimateStage:PerkType = mk("Chimerical Body: Ultimate Stage", "Chimerical Body: Ultimate Stage",
				".",
				"You choose the 'Chimerical Body: Ultimate Stage' perk.  Coś coś!");	
		public static const ChimericalBodyStage:PerkType = mk("Chimerical Body:  Stage", "Chimerical Body:  Stage",
				"prless lub completed stage.",
				"You choose the 'Chimerical Body:  Stage' perk.  Coś coś!");	
		public static const ColdBlooded:PerkType = mk("Cold Blooded", "Cold Blooded",
				"Reduces minimum lust by up to 20, down to min of 20. Caps min lust at 80.",
				"You choose the 'Cold Blooded' perk.  Thanks to increased control over your desires, your minimum lust is reduced! (Caps minimum lust at 80. Won't reduce minimum lust below 20 though.)");
		public static const ColdAim:PerkType = mk("Cold Aim", "Cold Aim",
				"Careful but Reckless Aim and Shooting does not reduce your max Toughness.",
				"You choose the 'Cold Aim' perk, causing Careful but Reckless Aim and Shooting to not reduce your Toughness.");
		public static const ColdFury:PerkType = mk("Cold Fury", "Cold Fury",
				"Berserking does not reduce your armor.",
				"You choose the 'Cold Fury' perk, causing Berserking to not reduce your armor.");
		public static const CorruptedLibido:PerkType = mk("Corrupted Libido", "Corrupted Libido",
				"Reduces lust gain by 10%.",
				"You choose the 'Corrupted Libido' perk.  As a result of your body's corruption, you've become a bit harder to turn on. (Lust gain reduced by 10%!)");
		public static const Cupid:PerkType = mk("Cupid", "Cupid",
				"You arrows are charged with heavy black magic inflicting lust on those pierced by them.",
				"You choose the 'Cupid' perk, allowing you to shoot arrows inflicting lust.");
		public static const DancersVitalityI:PerkType = mk("Dancer's Vitality I", "Dancer's Vitality I",
				"+1.5 extra fatigue per point of speed.",
				"You choose the 'Dancer's Vitality I' perk, granting +1.5 extra maximum fatigue for each point of speed.");
		public static const DancersVitalityII:PerkType = mk("Dancer's Vitality II", "Dancer's Vitality II",
				"+1.5 extra fatigue per point of speed.",
				"You choose the 'Dancer's Vitality II' perk, granting +1.5 extra maximum fatigue for each point of speed.");
		public static const DancersVitalityIII:PerkType = mk("Dancer's Vitality III", "Dancer's Vitality III",
				"+1.5 extra fatigue per point of speed.",
				"You choose the 'Dancer's Vitality III' perk, granting +1.5 extra maximum fatigue for each point of speed.");
		public static const DancersVitalityIV:PerkType = mk("Dancer's Vitality IV", "Dancer's Vitality IV",
				"+1.5 extra fatigue per point of speed.",
				"You choose the 'Dancer's Vitality IV' perk, granting +1.5 extra maximum fatigue for each point of speed.");
		public static const DancersVitalityV:PerkType = mk("Dancer's Vitality V", "Dancer's Vitality V",
				"+1.5 extra fatigue per point of speed.",
				"You choose the 'Dancer's Vitality V' perk, granting +1.5 extra maximum fatigue for each point of speed.");
		public static const Dantain:PerkType = mk("Dantain", "Dantain",
				"Increase max soulforce by 10% plus 10% to 15% per each attained cultivation stage.",
				"You choose the 'Dantain' perk.  As a result of many cultivation sessions you managed to find dantain in your body, which resulted in increased capacity to store soulforce.");
		public static const DeadlyAim:PerkType = mk("Deadly Aim", "Deadly Aim",
				"Arrows/Bolts ignore damage reductions piercing right through your opponent armor weak points (ignore enemy dmg red).",
				"You choose the 'Deadly Aim' perk, causing arrows/bolts to ignore the damage reductions of opponent.");
		public static const DemonicDesireI:PerkType = mk("Demonic Desire I", "Demonic Desire I",
				"+1 extra LP per point of libido.",
				"You choose the 'Demonic Desire I' perk, granting an extra maximum LP for each point of libido.");
		public static const DemonicDesireII:PerkType = mk("Demonic Desire II", "Demonic Desire II",
				"+1 extra LP per point of libido.",
				"You choose the 'Demonic Desire II' perk, granting an extra maximum LP for each point of libido.");
		public static const DemonicDesireIII:PerkType = mk("Demonic Desire III", "Demonic Desire III",
				"+1 extra LP per point of libido.",
				"You choose the 'Demonic Desire III' perk, granting an extra maximum LP for each point of libido.");
		public static const DemonicDesireIV:PerkType = mk("Demonic Desire IV", "Demonic Desire IV",
				"+1 extra LP per point of libido.",
				"You choose the 'Demonic Desire IV' perk, granting an extra maximum LP for each point of libido.");
		public static const DemonicDesireV:PerkType = mk("Demonic Desire V", "Demonic Desire V",
				"+1 extra LP per point of libido.",
				"You choose the 'Demonic Desire V' perk, granting an extra maximum LP for each point of libido.");
		public static const DoubleAttack:PerkType = mk("Double Attack", "Double Attack",
				"Allows you to perform two melee attacks with non-large weapons per round.",
				"You choose the 'Double Attack' perk.  This allows you to make two melee attacks with non-large weapons.");
		public static const DoubleStrike:PerkType = mk("Double Strike", "Double Strike",
				"Allows you to perform two range attacks per round.",
				"You choose the 'Double Strike' perk.  This allows you to make two range attacks.");
		public static const DraconicLungs:PerkType = mk("Draconic Lungs", "Draconic Lungs",
				"Draconic Lungs giving you increased threefold power of the dragon breath attacks.",
				"You choose the 'Draconic Lungs' perk. Your lungs due to repeadly usage of dragon breath attacks turned into draconic lungs.");
		public static const DualWield:PerkType = mk("Dual Wield", "Dual Wield",
				"Allows you to wield two weapons (excluding large ones, staffs, with special perks and range ones).",
				"You choose the 'Dual Wield' perk, training skill of using two weapons with a few limitation.");
		public static const DualWieldLarge:PerkType = mk("Dual Wield (Large)", "Dual Wield (Large)",
				"Allows you to wield two weapons of any large type.",
				"You choose the 'Dual Wield (Large)' perk, training skill of using two large weapons.");
		public static const ElementalArrows:PerkType = mk("Elemental Arrows", "Elemental Arrows",
				"Shoot elemental arrows adding your intelligence to your damage.",
				"You choose the 'Elemental Arrows' perk, allowing you to shoot elemental arrows.");
		public static const EnvenomedBolt:PerkType = mk("Envenomed Bolt", "Envenomed Bolt",
				"By carefully collecting your venom you can apply poison to your arrows and bolts.",
				"You choose the 'Envenomed Bolt' perk, allowing you to apply your own venom to arrows and bolts.");
		public static const Evade:PerkType = mk("Evade", "Evade",
				"Increases chances of evading enemy attacks.",
				"You choose the 'Evade' perk, allowing you to avoid enemy attacks more often!");
		public static const FertilityMinus:PerkType = mk("Fertility-", "Fertility-",
				"Decreases fertility rating by 15 and cum volume by up to 30%. (Req's libido of less than 25.)",
				"You choose the 'Fertility-' perk, making it harder to get pregnant.  It also decreases your cum volume by up to 30% (if appropriate)!");
		public static const FertilityPlus:PerkType = mk("Fertility+", "Fertility+",
				"Increases fertility rating by 15 and cum volume by up to 50%.",
				"You choose the 'Fertility+' perk, making it easier to get pregnant.  It also increases your cum volume by up to 50% (if appropriate)!");
		public static const FleshBodyApprenticeStage:PerkType = mk("Flesh Body: Apprentice Stage", "Flesh Body: Apprentice Stage",
				"Your reached first stage of body cultivating.",
				"You choose the 'Flesh Body: Apprentice Stage' perk, working on cultivating power of your fleshy body.");
		public static const FleshBodyOverlordStage:PerkType = mk("Flesh Body: Overlord Stage", "Flesh Body: Overlord Stage",
				"Your reached third stage of body cultivating.",
				"You choose the 'Flesh Body: Overlord Stage' perk, working on cultivating power of your fleshy body.");
		public static const FleshBodyTyrantStage:PerkType = mk("Flesh Body: Tyrant Stage", "Flesh Body: Tyrant Stage",
				"Your reached fourth stage of body cultivating.",
				"You choose the 'Flesh Body: Tyrant Stage' perk, working on cultivating power of your fleshy body.");
		public static const FleshBodyWarriorStage:PerkType = mk("Flesh Body: Warrior Stage", "Flesh Body: Warrior Stage",
				"Your reached second stage of body cultivating.",
				"You choose the 'Flesh Body: Warrior Stage' perk, working on cultivating power of your fleshy body.");
		public static const FocusedMind:PerkType = mk("Focused Mind", "Focused Mind",
				"Black Magic is less likely to backfire and White Magic threshold is increased.",
				"You choose the 'Focused Mind' perk. Black Magic is less likely to backfire and White Magic threshold is increased.");
		public static const GlacialStorm:PerkType = mk("Glacial Storm", "Glacial Storm",
				"Cumulative 20% damage increase for every subsequent ice spell without interruption.",
				"You choose the 'Glacial Storm' perk. Cumulative 20% damage increase for every subsequent ice spell without interruption.");
		public static const GorgonsEyes:PerkType = mk("Gorgon's Eyes", "Gorgon's Eyes",
				"Your eyes mutated and now even with any type of eyes you can use petrifying gaze. Additionaly it makes you more immune to all types of attack that are related to sight.",
				"You choose the 'Gorgon's Eyes' perk. Prolonged using petrifying caused your eyes to change even more like those of gorgons.");
		public static const GrandArchmage:PerkType = mk("Grand Archmage", "Grand Archmage",
				"[if (player.inte>=100)" +
						"Increases base spell strength by 40% and mana pool by 60." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Grand Archmage' perk, increasing base spell strength by 40% and mana pool by 60.");
		public static const GreyArchmage:PerkType = mk("Grey Archmage", "Grey Archmage",
				"[if (player.inte>=150)" +
						"Increases base spell strength by 100%, mana pool by 150 and regain fatigue 100% faster." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Grey Archmage' perk, increasing base spell strength by 100%, mana pool by 150 and boosting fatigue recovery.");
		public static const GreyMage:PerkType = mk("Grey Mage", "Grey Mage",
				"[if (player.inte>=125)" +
						"Increases base spell strength by 70% and mana pool by 105, treshold for Black Magic is 30 lust and for White 30 lust below current max." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Grey Mage' perk. Your base spell and mana pool are greatly increased, treshold for White Magic rised and for Black lowered.");
		public static const HeavyArmorProficiency:PerkType = mk("Heavy Armor Proficiency", "Heavy Armor Proficiency",
				"Wearing Heavy Armor's grants 10% damage reduction.",
				"You choose the 'Heavy Armor Proficiency' perk.  Due to your specialization in wearing heavy armor's you gain a little bit of damage reduction.");
		public static const HalfStepToAdvancedEndurance:PerkType = mk("Half-step-to Advanced Endurance", "Half-step-to Advanced Endurance",
				"Increases maximum fatigue by 120.",
				"You choose the 'Half-step-to Advanced Endurance' perk. Thanks to your advanced physical conditioning, your maximum fatigue has been increased by 120!");	
		public static const HalfStepToAdvancedSelfControl:PerkType = mk("Half-step-to Advanced Self-Control", "Half-step-to Advanced Self-Control",
				"Increases maximum lust by 60.",
				"You choose the 'Half-step-to Advanced Self-Control' perk. Thanks to your advanced mental conditioning, your maximum lust has been increased by 60!");
		public static const HalfStepToImprovedEndurance:PerkType = mk("Half-step-to Improved Endurance", "Half-step-to Improved Endurance",
				"Increases maximum fatigue by 50.",
				"You choose the 'Half-step-to Improved Endurance' perk. Thanks to your improved physical conditioning, your maximum fatigue has been increased by 50!");
		public static const HalfStepToImprovedSelfControl:PerkType = mk("Half-step-to Improved Self-Control", "Half-step-to Improved Self-Control",
				"Increases maximum lust by 25.",
				"You choose the 'Half-step-to Improved Self-Control' perk. Thanks to your improved mental conditioning, your maximum lust has been increased by 25!");
		public static const HalfStepToPeerlessEndurance:PerkType = mk("Half-step-to Peerless Endurance", "Half-step-to Peerless Endurance",
				"Increases maximum fatigue by 700.",
				"You choose the 'Half-step-to Peerless Endurance' perk. Thanks to your peerless physical conditioning, your maximum fatigue has been increased by 700!");
		public static const HalfStepToPeerlessSelfControl:PerkType = mk("Half-step-to Peerless Self-Control", "Half-step-to Peerless Self-Control",
				"Increases maximum lust by 350.",
				"You choose the 'Half-step-to Peerless Self-Control' perk. Thanks to your peerless mental conditioning, your maximum lust has been increased by 350!");
		public static const HalfStepToSuperiorEndurance:PerkType = mk("Half-step-to Superior Endurance", "Half-step-to Superior Endurance",
				"Increases maximum fatigue by 320.",
				"You choose the 'Half-step-to Superior Endurance' perk. Thanks to your superior physical conditioning, your maximum fatigue has been increased by 320!");
		public static const HalfStepToSuperiorSelfControl:PerkType = mk("Half-step-to Superior Self-Control", "Half-step-to Superior Self-Control",
				"Increases maximum lust by 160.",
				"You choose the 'Half-step-to Superior Self-Control' perk. Thanks to your superior mental conditioning, your maximum lust has been increased by 160!");
		public static const Heroism:PerkType = mk("Heroism", "Heroism",
				"Allows you to deal double damage toward boss or gigant sized enemies.",
				"You choose the 'Heroism' perk.  Due to your heroic stance you can now deal more damage toward boss or gigant type enemies.");
		public static const HexaAttack:PerkType = mk("Hexa Attack", "Hexa Attack",
				"Allows you to perform six melee attacks with non-large weapons per round.",
				"You choose the 'Hexa Attack' perk.  This allows you to make six melee attacks with non-large weapons.");
		public static const HoldWithBothHands:PerkType = mk("Hold With Both Hands", "Hold With Both Hands",
				"Gain +20% strength modifier with melee weapons when not using a shield.",
				"You choose the 'Hold With Both Hands' perk.  As long as you're wielding a melee weapon and you're not using a shield, you gain 20% strength modifier to damage.");
		public static const HotBlooded:PerkType = mk("Hot Blooded", "Hot Blooded",
				"Raises minimum lust by up to 20.",
				"You choose the 'Hot Blooded' perk.  As a result of your enhanced libido, your lust no longer drops below 20! (If you already have some minimum lust, it will be increased by 10)");
		public static const ImmovableObject:PerkType = mk("Immovable Object", "Immovable Object",
				"[if(player.tou>=75)" +
						"Grants 10% physical damage reduction.</b>" +
						"|" +
						"<b>You aren't tough enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Immovable Object' perk, granting 10% physical damage reduction.</b>");
		public static const ImprovedEndurance:PerkType = mk("Improved Endurance", "Improved Endurance",
				"Increases maximum fatigue by 80.",
				"You choose the 'Improved Endurance' perk. Thanks to your physical conditioning, your maximum fatigue has been increased by 80!");
		public static const ImprovedSelfControl:PerkType = mk("Improved Self-Control", "Improved Self-Control",
				"Increases maximum lust by 40.",
				"You choose the 'Improved Self-Control' perk. Thanks to your mental conditioning, your maximum lust has been increased by 40!");
		public static const InhumanDesireI:PerkType = mk("Inhuman Desire I", "Inhuman Desire I",
				"Raises max LP by 20.",
				"You choose the 'Inhuman Desire I' perk, giving you an additional 20 LP!");
		public static const InhumanDesireII:PerkType = mk("Inhuman Desire II", "Inhuman Desire II",
				"Raises max LP by 20.",
				"You choose the 'Inhuman Desire II' perk, giving you an additional 20 LP!");
		public static const InhumanDesireIII:PerkType = mk("Inhuman Desire III", "Inhuman Desire III",
				"Raises max LP by 20.",
				"You choose the 'Inhuman Desire III' perk, giving you an additional 20 LP!");
		public static const InhumanDesireIV:PerkType = mk("Inhuman Desire IV", "Inhuman Desire IV",
				"Raises max LP by 20.",
				"You choose the 'Inhuman Desire IV' perk, giving you an additional 20 LP!");
		public static const InhumanDesireV:PerkType = mk("Inhuman Desire V", "Inhuman Desire V",
				"Raises max LP by 20.",
				"You choose the 'Inhuman Desire V' perk, giving you an additional 20 LP!");
		public static const IronFistsI:PerkType = mk("Iron Fists I", "Iron Fists I",
				"Hardens your fists to increase attack rating by 10.",
				"You choose the 'Iron Fists I' perk, hardening your fists. This increases attack power by 10.");
		public static const IronFistsII:PerkType = mk("Iron Fists II", "Iron Fists II",
				"Further hardens your fists to increase attack rating by another 10.",
				"You choose the 'Iron Fists II' perk, further hardening your fists. This increases attack power by another 10.");
		public static const IronFistsIII:PerkType = mk("Iron Fists III", "Iron Fists III",
				"Even more hardens your fists to increase attack rating again by 10.",
				"You choose the 'Iron Fists III' perk, even further hardening your fists. This increases attack power again by 10.");				
		public static const IronFistsIV:PerkType = mk("Iron Fists IV", "Iron Fists IV",
				"Next training to harden your fists increased their attack rating by 10.",
				"You choose the 'Iron Fists IV' perk, again hardening your fists. This increases attack power for another 10.");
		public static const IronFistsV:PerkType = mk("Iron Fists V", "Iron Fists V",
				"Almost hellish taining increeased your fists attack rating by another 10.",
				"You choose the 'Iron Fists V' perk, to once again make your first more tough. This increases attack power once more for 10.");
		public static const IronMan:PerkType = mk("Iron Man", "Iron Man",
				"Reduces the fatigue cost of physical specials by 50%.",
				"You choose the 'Iron Man' perk, reducing the fatigue cost of physical special attacks by 50%");
		public static const JobAllRounder:PerkType = mk("Job: All-Rounder", "Job: All-Rounder",
				"You've combined all basic jobs training effects into an all-round fighting style.",
				"You choose 'Job: All-Rounder' perk, to combine effects of training in all six basic jobs.");
		public static const JobArcaneArcher:PerkType = mk("Job: Arcane Archer", "Job: Arcane Archer",
				"You've trained in art of combining magic and arrows.",
				"You choose 'Job: Arcane Archer' perk, training yourself to became Arcane Archer.");
		public static const JobBarbarian:PerkType = mk("Job: Barbarian", "Job: Barbarian",
				"You've trained in combat using large weapons.",
				"You choose 'Job: Barbarian' perk, training yourself to became Barbarian.");
		public static const JobBrawler:PerkType = mk("Job: Brawler", "Job: Brawler",
				"You've trained in unarmed combat.",
				"You choose 'Job: Brawler' perk, training yourself to became Brawler.");
		public static const JobDervish:PerkType = mk("Job: Dervish", "Job: Dervish",
				"You've trained in multi meele attacks combat and using of medium sized dual weapons.",
				"You choose 'Job: Dervish' perk, training yourself to became Dervish.");
		public static const JobEnchanter:PerkType = mk("Job: Enchanter", "Job: Enchanter",
				"You've trained in casting empowered buffs.",
				"You choose 'Job: Enchanter' perk, training yourself to became Enchanter.");
		public static const JobEromancer:PerkType = mk("Job: Eromancer", "Job: Eromancer",
				"You've mastered the power of erotic magics.",
				"You choose 'Job: Eromancer' perk, training yourself to became Eromancer.");
		public static const JobGuardian:PerkType = mk("Job: Guardian", "Job: Guardian",
				"You've trained in defensive combat.",
				"You choose 'Job: Guardian' perk, training yourself to became Guardian.");
		public static const JobMonk:PerkType = mk("Job: Monk", "Job: Monk",
				"You've trained in unarmed combat.",
				"You choose 'Job: Monk' perk, training yourself to became Monk.");
		public static const JobMunchkin:PerkType = mk("Job: Munchkin", "Job: Munchkin",
				"You're Munchkin, an ultimate being that possess a god-like body and powers.",
				"You choose 'Job: Munchkin' perk, becoming an ultimate being with a god-like body and powers.");
		public static const JobRanger:PerkType = mk("Job: Ranger", "Job: Ranger",
				"You've trained in ranged combat.",
				"You choose 'Job: Ranger' perk, training yourself to became Ranger.");
		public static const JobSeducer:PerkType = mk("Job: Seducer", "Job: Seducer",
				"You've trained the art of seduction.",
				"You choose 'Job: Seducer' perk, training yourself to became Seducer.");
		public static const JobSorcerer:PerkType = mk("Job: Sorcerer", "Job: Sorcerer",
				"You've trained in magic combat.",
				"You choose 'Job: Sorcerer' perk, training yourself to became Sorcerer.");
		public static const JobSoulArcher:PerkType = mk("Job: Soul Archer", "Job: Soul Archer",
				"You've trained in art of combining soulforce and arrows.",
				"You choose 'Job: Soul Archer' perk, training yourself to became Soul Archer.");
		public static const JobSoulCultivator:PerkType = mk("Job: Soul Cultivator", "Job: Soul Cultivator",
				"You've cultivated powers of your soul.",
				"You choose the 'Job: Soul Cultivator' perk, starting journey of the soul cultivation path!");
		public static const JobWarrior:PerkType = mk("Job: Warrior", "Job: Warrior",
				"You've trained in melee combat.",
				"You choose 'Job: Warrior' perk, training yourself to became Warrior.");
		public static const Juggernaut:PerkType = mk("Juggernaut", "Juggernaut",
				"When wearing heavy armor, you have extra 10% damage resistance and are immune to damage from being constricted/squeezed (req. 100+ tou).",
				"You choose the 'Juggernaut' perk, granting extra 10% damage resistance when wearing heavy armor and immunity to damage from been constricted/squeezed.");
		public static const KitsuneThyroidGland:PerkType = mk("Kitsune Thyroid Gland", "Kitsune Thyroid Gland",
				"Kitsune Thyroid Gland lower cooldowns for Illusion and Terror by one turn and speed of the recovery after using magic increased too. IF PC posses both pure and corrupted Fox Fire allows to fuse them into one much stronger Fox Fire and if PC not have enough kitsune traits allows to use weakened base Fox Fire.",
				"You choose the 'Kitsune Thyroid Gland' perk. Some time after you grew ninth tail your enlightened entered on new level allowing you to form hoshi no tama inside your body.");
		public static const LightningStrikes:PerkType = mk("Lightning Strikes", "Lightning Strikes",
				"[if(player.spe>=60)" +
						"Increases the attack damage for non-heavy weapons.</b>" +
						"|" +
						"<b>You are too slow to benefit from this perk.</b>" +
						"]",
				"You choose the 'Lightning Strikes' perk, increasing the attack damage for non-heavy weapons.</b>");
		public static const LizanMarrow:PerkType = mk("Lizan Marrow", "Lizan Marrow",
				"Regenerates 0.5% of HP per round in combat and 1% of HP per hour. Additionaly your limit for innate self-regeneration rate increased.",
				"You choose the 'Lizan Marrow' perk. Constant regenerating your body caused pernamently change to your body marrow.");
		public static const LungingAttacks:PerkType = mk("Lunging Attacks", "Lunging Attacks",
				"[if(player.spe>=75)" +
						"Grants 50% armor penetration for standard attacks." +
						"|" +
						"<b>You are too slow to benefit from this perk.</b>" +
						"]",
				"You choose the 'Lunging Attacks' perk, granting 50% armor penetration for standard attacks.");
		public static const Mage:PerkType = mk("Mage", "Mage",
				"[if (player.inte>=50)" +
						"Increases base spell strength by 20% and mana pool by 30." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Mage' perk.  You are able to focus your magical abilities even more keenly, boosting your base spell effects by 20% and mana pool by 30.");
		public static const HiddenDualMomentum:PerkType = mk("Hidden Dual Momentum", "Hidden Dual Momentum",
				"You've trained in using your speed to enhance power of your dual large weapons swings.",
				"You choose 'Hidden Dual Momentum' perk, allowing to use your speed to enhance power of your attacks with dual large weapons.");
		public static const ManaAffinityI:PerkType = mk("Mana Affinity I", "Mana Affinity I",
				"Raises max fatigue by 35 and regain fatigue 10% faster.",
				"You choose the 'Mana Affinity I' perk, giving you an additional 35 fatigue and boosting your fatigue recovery rate.");
		public static const ManaAffinityII:PerkType = mk("Mana Affinity II", "Mana Affinity II",
				"Raises max fatigue by 35 and regain fatigue 10% faster.",
				"You choose the 'Mana Affinity II' perk, giving you an additional 35 fatigue and boosting your fatigue recovery rate.");
		public static const ManaAffinityIII:PerkType = mk("Mana Affinity III", "Mana Affinity III",
				"Raises max fatigue by 35 and regain fatigue 10% faster.",
				"You choose the 'Mana Affinity III' perk, giving you an additional 35 fatigue and boosting your fatigue recovery rate.");
		public static const ManaAffinityIV:PerkType = mk("Mana Affinity IV", "Mana Affinity IV",
				"Raises max fatigue by 35 and regain fatigue 10% faster.",
				"You choose the 'Mana Affinity IV' perk, giving you an additional 35 fatigue and boosting your fatigue recovery rate.");
		public static const ManaAffinityV:PerkType = mk("Mana Affinity V", "Mana Affinity V",
				"Raises max fatigue by 35 and regain fatigue 10% faster.",
				"You choose the 'Mana Affinity V' perk, giving you an additional 35 fatigue and boosting your fatigue recovery rate.");
		public static const ManticoreMetabolism:PerkType = mk("Manticore Metabolism", "Manticore Metabolism",
				"Allows you to gain a boost of speed for a few hours after an intake of cum.",
				"You choose the 'Manticore Metabolism' perk, allows you to gain a boost of speed after an intake of cum.");
		public static const MantislikeAgility:PerkType = mk("Mantis-like Agility", "Mantis-like Agility",
				"Your altered musculature allows to increase your natural agility and speed. If somehow you would have some type of natural armor or even thicker skin this increase could be even greater...",
				"You choose the 'Mantis-like Agility' perk, by becoming much more mantis-like your body musculature started to slowly adapt to existance of exoskeleton.");
		public static const Manyshot:PerkType = mk("Manyshot", "Manyshot",
				"You always shoot two arrows instead of one on your first strike.",
				"You choose the 'Manyshot' perk, to always shoot two arrows instead of one on your first strike.");
		public static const Masochist:PerkType = mk("Masochist", "Masochist",
				"Take 20% less physical damage but gain lust when you take damage.",
				"You choose the 'Masochist' perk, reducing the damage you take but raising your lust each time!  This perk only functions while your libido is at or above 60!");
		public static const Medicine:PerkType = mk("Medicine", "Medicine",
				"Grants 15% chance per round of cleansing poisons/drugs from your body. Increases HP restoration on rest.",
				"You choose the 'Medicine' perk, giving you a chance to remove debilitating poisons automatically! Also, increases HP restoration on rest.");
		public static const Metamorph:PerkType = mk("Metamorph", "Metamorph",
				"Mold your own body using genetic memory and soulforce.",
				"You choose the 'Metamorph' perk, giving you a chance to mold your own body.");
		public static const MindOverBodyI:PerkType = mk("Mind over Body I", "Mind over Body I",
				"+2 extra fatigue per point of intelligence.",
				"You choose the 'Mind over Body I' perk, granting +2 extra maximum fatigue for each point of intelligence.");
		public static const MindOverBodyII:PerkType = mk("Mind over Body II", "Mind over Body II",
				"+2 extra fatigue per point of intelligence.",
				"You choose the 'Mind over Body II' perk, granting +2 extra maximum fatigue for each point of intelligence.");
		public static const MindOverBodyIII:PerkType = mk("Mind over Body III", "Mind over Body III",
				"+2 extra fatigue per point of intelligence.",
				"You choose the 'Mind over Body III' perk, granting +2 extra maximum fatigue for each point of intelligence.");
		public static const MindOverBodyIV:PerkType = mk("Mind over Body IV", "Mind over Body IV",
				"+2 extra fatigue per point of intelligence.",
				"You choose the 'Mind over Body IV' perk, granting +2 extra maximum fatigue for each point of intelligence.");
		public static const MindOverBodyV:PerkType = mk("Mind over Body V", "Mind over Body V",
				"+2 extra fatigue per point of intelligence.",
				"You choose the 'Mind over Body V' perk, granting +2 extra maximum fatigue for each point of intelligence.");
		public static const HiddenMomentum:PerkType = mk("Hidden Momentum", "Hidden Momentum",
				"You've trained in using your speed to enhance power of your single large weapons swings.",
				"You choose 'Hidden Momentum' perk, allowing to use your speed to enhance power of your attacks with single large weapons.");
		public static const NakedTruth:PerkType = mk("Naked Truth", "Naked Truth",
				"Opponent have a hard time dealing serious damage as the sight of your naked body distract them (+10% dmg reduction).",
				"You choose the 'Naked Truth' perk, causing opponent have a hard time dealing serious damage as the sight of your naked body distract them.");
		public static const Naturaljouster:PerkType = mk("Natural jouster", "Natural jouster",
				"Increase attack power of spears when you attack once each turn and have taur/drider lower body or twice higher speed if you not have one of this specific lower body types (60+ for taurs/drider and 120+ for others).",
				"You've chosen the 'Natural jouster' perk. As long you will have taur or drider lower body and attack once per turn your spear attack power will be three time higher.");
		public static const NaturesSpringI:PerkType = mk("Nature's Spring I", "Nature's Spring I",
				"Raises max fatigue by 20 and regain fatigue 5% faster.",
				"You choose the 'Nature's Spring I' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.");
		public static const NaturesSpringII:PerkType = mk("Nature's Spring II", "Nature's Spring II",
				"Raises max fatigue by 20 and regain fatigue 5% faster.",
				"You choose the 'Nature's Spring II' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.");
		public static const NaturesSpringIII:PerkType = mk("Nature's Spring III", "Nature's Spring III",
				"Raises max fatigue by 20 and regain fatigue 5% faster.",
				"You choose the 'Nature's Spring III' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.");
		public static const NaturesSpringIV:PerkType = mk("Nature's Spring IV", "Nature's Spring IV",
				"Raises max fatigue by 20 and regain fatigue 5% faster.",
				"You choose the 'Nature's Spring IV' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.");
		public static const NaturesSpringV:PerkType = mk("Nature's Spring V", "Nature's Spring V",
				"Raises max fatigue by 20 and regain fatigue 5% faster.",
				"You choose the 'Nature's Spring V' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.");
		public static const Nymphomania:PerkType = mk("Nymphomania", "Nymphomania",
				"Raises minimum lust by up to 30.",
				"You've chosen the 'Nymphomania' perk.  Due to the incredible amount of corruption you've been exposed to, you've begun to live in a state of minor constant arousal.  Your minimum lust will be increased by as much as 30 (If you already have minimum lust, the increase is 10-15).");
		public static const Parry:PerkType = mk("Parry", "Parry",
				"[if(player.spe>=50)" +
						"Increases deflect chance by up to 10% while wielding a weapon. (Speed-based)." +
						"|" +
						"<b>You are not durable enough to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Parry' perk, giving you a chance to deflect blow with your weapon. (Speed-based).");
		public static const PeerlessEndurance:PerkType = mk("Peerless Endurance", "Peerless Endurance",
				"Increases maximum fatigue by 1000.",
				"You choose the 'Peerless Endurance' perk. Thanks to your peerless physical conditioning, your maximum fatigue has been increased by 1000!</b>");
		public static const PeerlessSelfControl:PerkType = mk("Peerless Self-Control", "Peerless Self-Control",
				"Increases maximum lust by 500.",
				"You choose the 'Peerless Self-Control' perk. Thanks to your peerless mental conditioning, your maximum lust has been increased by 500!</b>");
		public static const PentaAttack:PerkType = mk("Penta Attack", "Penta Attack",
				"Allows you to perform five melee attacks with non-large weapons per round.",
				"You choose the 'Penta Attack' perk.  This allows you to make five melee attacks with non-large weapons.");
		public static const Precision:PerkType = mk("Precision", "Precision",
				"Reduces enemy armor by 10. (Req's 25+ Intelligence)",
				"You've chosen the 'Precision' perk.  Thanks to your intelligence, you're now more adept at finding and striking an enemy's weak points, reducing their damage resistance from armor by 10.  If your intelligence ever drops below 25 you'll no longer be smart enough to benefit from this perk.");
		public static const PrestigeJobSoulArcher:PerkType = mk("Prestige Job: Soul Archer", "Prestige Job: Soul Archer",
				"You've trained in prestige art of combining soulforce and arrows.",
				"You choose 'Prestige Job: Soul Archer' perk, training yourself to became Soul Archer.");
		public static const QuadrupleAttack:PerkType = mk("Quadruple Attack", "Quadruple Attack",
				"Allows you to perform four melee attacks with non-large weapons per round.",
				"You choose the 'Quadruple Attack' perk.  This allows you to make four melee attacks with non-large weapons.");
		public static const RagingInferno:PerkType = mk("Raging Inferno", "Raging Inferno",
				"Cumulative 20% damage increase for every subsequent fire spell without interruption.",
				"You choose the 'Raging Inferno' perk. Cumulative 20% damage increase for every subsequent fire spell without interruption.");
		public static const RefinedBodyI:PerkType = mk("Refined Body I", "Refined Body I",
				"Raises max HP by 50.",
				"You choose the 'Refined Body I' perk, giving you an additional 50 HP!");
		public static const RefinedBodyII:PerkType = mk("Refined Body II", "Refined Body II",
				"Raises max HP by 50.",
				"You choose the 'Refined Body II' perk, giving you an additional 50 HP!");
		public static const RefinedBodyIII:PerkType = mk("Refined Body III", "Refined Body III",
				"Raises max HP by 50.",
				"You choose the 'Refined Body III' perk, giving you an additional 50 HP!");
		public static const RefinedBodyIV:PerkType = mk("Refined Body IV", "Refined Body IV",
				"Raises max HP by 50.",
				"You choose the 'Refined Body IV' perk, giving you an additional 50 HP!");
		public static const RefinedBodyV:PerkType = mk("Refined Body V", "Refined Body V",
				"Raises max HP by 50.",
				"You choose the 'Refined Body V' perk, giving you an additional 50 HP!");
		public static const Regeneration:RegenerationPerk = new RegenerationPerk();
		public static const Regeneration2:Regeneration2Perk = new Regeneration2Perk();
		public static const Regeneration3:Regeneration3Perk = new Regeneration3Perk();
		public static const Regeneration4:Regeneration4Perk = new Regeneration4Perk();
		public static const Regeneration5:Regeneration5Perk = new Regeneration5Perk();
		public static const ResistanceI:PerkType = mk("Resistance I", "Resistance I",
				"Reduces lust gain by 5%.",
				"You choose the 'Resistance I' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceII:PerkType = mk("Resistance II", "Resistance II",
				"Reduces lust gain by 5%.",
				"You choose the 'Resistance II' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceIII:PerkType = mk("Resistance III", "Resistance III",
				"Reduces lust gain by 5%.",
				"You choose the 'Resistance III' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceIV:PerkType = mk("Resistance IV", "Resistance IV",
				"Reduces lust gain by 5%.",
				"You choose the 'Resistance IV' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceV:PerkType = mk("Resistance V", "Resistance V",
				"Reduces lust gain by 5%.",
				"You choose the 'Resistance V' perk, reducing the rate at which your lust increases by 5%.");
		public static const Resolute:PerkType = mk("Resolute", "Resolute",
				"[if(player.tou>=75)" +
						"Grants immunity to stuns and some statuses.</b>" +
						"|" +
						"<b>You aren't tough enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Resolute' perk, granting immunity to stuns and some statuses.</b>");
		public static const Runner:PerkType = mk("Runner", "Runner",
				"Increases chances of escaping combat.",
				"You choose the 'Runner' perk, increasing your chances to escape from your foes when fleeing!");
		public static const Sadist:PerkType = mk("Sadist", "Sadist",
				"Deal 20% more damage, but gain lust at the same time.",
				"You choose the 'Sadist' perk, increasing damage by 20 percent but causing you to gain lust from dealing damage.");
		public static const SalamanderAdrenalGlands:PerkType = mk("Salamander Adrenal Glands", "Salamander Adrenal Glands",
				"Your Salamander adrenal glands giving you slight boost to your natural stamina and libido.",
				"You choose the 'Salamander Adrenal Glands' perk, due to repeadly exposure to effects of lustzerk your adrenal glands mutated.");
		public static const ScyllaInkGlands:PerkType = mk("Scylla Ink Glands", "Scylla Ink Glands",
				"Your Scylla Ink Glands increase rate at which your body produce ink and slight boost to your natural strength.",
				"You choose the 'Scylla Ink Glands' perk, due to repeadly use of ink attack leading to denveloping ink glands!");
		public static const Seduction:PerkType = mk("Seduction", "Seduction",
				"Upgrades your tease attack, making it more effective.",
				"You choose the 'Seduction' perk, upgrading the 'tease' attack with a more powerful damage and a higher chance of success.");
		public static const Sharpshooter:PerkType = mk("Sharpshooter", "Sharpshooter",
				"Allow to increase non-bow range weapons attack up to 200% (Intelligence-based).",
				"You choose the 'Sharpshooter' perk, allowing to slightly increase non-bow range weapons attack.");
		public static const ShieldMastery:PerkType = mk("Shield Mastery", "Shield Mastery",
				"[if(player.tou>=50)" +
						"Increases block chance by up to 10% while using a shield (Toughness-based)." +
						"|" +
						"<b>You are not durable enough to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Shield Mastery' perk, increasing block chance by up to 10% as long as you're wielding a shield (Toughness-based).");
		public static const ShieldSlam:PerkType = mk("Shield Slam", "Shield Slam",
				"Reduces shield bash diminishing returns by 50% and increases bash damage by 20%.",
				"You choose the 'Shield Slam' perk.  Stun diminishing returns is reduced by 50% and shield bash damage is increased by 20%.");
		public static const SluttySimplicity:PerkType = mk("Slutty Simplicity", "Slutty Simplicity",
				"Increases by 10% tease effect when you are naked. (Undergarments won't disable this perk.)",
				"You choose the 'Slutty Simplicity' perk, granting increased tease effect when you are naked.");
		public static const SoulApprentice:PerkType = mk("Soul Apprentice", "Soul Apprentice",
				"Allow reaching 1st stage of soul cultivation.",
				"You choose the 'Soul Apprentice' perk, reaching 1st stage of soul cultivation!");
		public static const SoulEmperor:PerkType = mk("Soul Emperor", "Soul Emperor",
				"Allow reaching 9th stage of soul cultivation.",
				"You choose the 'Soul Emperor' perk, reaching 9th stage of soul cultivation!");
		public static const SoulExalt:PerkType = mk("Soul Exalt", "Soul Exalt",
				"Allow reaching 5th stage of soul cultivation.",
				"You choose the 'Soul Exalt' perk, reaching 5th stage of soul cultivation!");
		public static const SoulKing:PerkType = mk("Soul King", "Soul King",
				"Allow reaching 8th stage of soul cultivation.",
				"You choose the 'Soul King' perk, reaching 8th stage of soul cultivation!");
		public static const SoulOverlord:PerkType = mk("Soul Overlord", "Soul Overlord",
				"Allow reaching 6th stage of soul cultivation.",
				"You choose the 'Soul Overlord' perk, reaching 6th stage of soul cultivation!");
		public static const SoulPersonage:PerkType = mk("Soul Personage", "Soul Personage",
				"Allow reaching 2nd stage of soul cultivation.",
				"You choose the 'Soul Personage' perk, reaching 2nd stage of soul cultivation!");
		public static const SoulSprite:PerkType = mk("Soul Sprite", "Soul Sprite",
				"Allow reaching 4th stage of soul cultivation.",
				"You choose the 'Soul Sprite' perk, reaching 4th stage of soul cultivation!");
		public static const SoulTyrant:PerkType = mk("Soul Tyrant", "Soul Tyrant",
				"Allow reaching 7th stage of soul cultivation.",
				"You choose the 'Soul Tyrant' perk, reaching 7th stage of soul cultivation!");
		public static const SoulWarrior:PerkType = mk("Soul Warrior", "Soul Warrior",
				"Allow reaching 3rd stage of soul cultivation.",
				"You choose the 'Soul Warrior' perk, reaching 3rd stage of soul cultivation!");
		public static const SpeedyRecovery:PerkType = mk("Speedy Recovery", "Speedy Recovery",
				"Regain fatigue 50% faster.",
				"You choose the 'Speedy Recovery' perk, boosting your fatigue recovery rate!");
		public static const Spellarmor:PerkType = mk("Spellarmor", "Spellarmor",
				"Start every battle with Charge Armor enabled, if you meet White Magic requirements before it starts.",
				"You choose the 'Spellarmor' perk. You start every battle with Charge Armor effect, as long as your Lust is not preventing you from casting it before battle.");
		public static const Spellpower:PerkType = mk("Spellpower", "Spellpower",
				"[if (player.inte>=50)" +
						"Increases base spell strength by 20% and mana pool by 30." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Spellpower' perk.  Thanks to your sizeable intellect and willpower, you are able to more effectively use magic, boosting base spell effects by 20% and mana pool by 30.");
		public static const Spellsword:PerkType = mk("Spellsword", "Spellsword",
				"Start every battle with Charge Weapon enabled, if you meet White Magic requirements before it starts.",
				"You choose the 'Spellsword' perk. You start every battle with Charge Weapon effect, as long as your Lust is not preventing you from casting it before battle.");
		public static const SuperiorEndurance:PerkType = mk("Superior Endurance", "Superior Endurance",
				"Increases maximum fatigue by 500.",
				"You choose the 'Superior Endurance' perk. Thanks to your superior physical conditioning, your maximum fatigue has been increased by 500!</b>");
		public static const SuperiorSelfControl:PerkType = mk("Superior Self-Control", "Superior Self-Control",
				"Increases maximum lust by 250.",
				"You choose the 'Superior Self-Control' perk. Thanks to your superior mental conditioning, your maximum lust has been increased by 250!</b>");
		public static const Survivalist:PerkType = mk("Survivalist", "Survivalist",
				"Slows hunger rate by 20%.",
				"You choose the 'Survivalist' perk.  With this perk, your hunger rate is reduced by 20%.");
		public static const Survivalist2:PerkType = mk("Survivalist 2", "Survivalist 2",
				"Slows hunger rate by further 20%.",
				"You choose the 'Survivalist 2' perk.  With this perk, your hunger rate is reduced by another 20%.");
		public static const StaffChanneling:PerkType = mk("Staff Channeling", "Staff Channeling",
				"Basic attack with wizard's staff is replaced with ranged magic bolt.",
				"You choose the 'Staff Channeling' perk. Basic attack with wizard's staff is replaced with ranged magic bolt.");
		public static const StrongBack:PerkType = mk("Strong Back", "Strong Back",
				"Enables fourth item slot.",
				"You choose the 'Strong Back' perk, enabling a fourth item slot.");
		public static const StrongBack2:PerkType = mk("Strong Back 2: Strong Harder", "Strong Back 2: Strong Harder",
				"Enables fifth item slot.",
				"You choose the 'Strong Back 2: Strong Harder' perk, enabling a fifth item slot.");
		public static const Tactician:PerkType = mk("Tactician", "Tactician",
				"[if(player.inte>=50)" +
						"Increases critical hit chance by up to 10% (Intelligence-based)." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You choose the 'Tactician' perk, increasing critical hit chance by up to 10% (Intelligence-based).");
		public static const TankI:PerkType = mk("Tank I", "Tank I",
				"+3 extra HP per point of toughness.",
				"You choose the 'Tank I' perk, granting +3 extra maximum HP for each point of toughness.");
		public static const TankII:PerkType = mk("Tank II", "Tank II",
				"+3 extra HP per point of toughness.",
				"You choose the 'Tank II' perk, granting +3 extra maximum HP for each point of toughness.");
		public static const TankIII:PerkType = mk("Tank III", "Tank III",
				"+3 extra HP per point of toughness.",
				"You choose the 'Tank III' perk, granting +3 extra maximum HP for each point of toughness.");
		public static const TankIV:PerkType = mk("Tank IV", "Tank IV",
				"+3 extra HP per point of toughness.",
				"You choose the 'Tank IV' perk, granting +3 extra maximum HP for each point of toughness.");
		public static const TankV:PerkType = mk("Tank V", "Tank V",
				"+3 extra HP per point of toughness.",
				"You choose the 'Tank V' perk, granting +3 extra maximum HP for each point of toughness.");
		public static const TitanGrip:PerkType = mk("Titan Grip", "Titan Grip",
				"Gain an ability to wield large weapons in one hand.",
				"You choose the 'Titan Grip' perk, gaining an ability to wield large weapons in one hand.");
		public static const ThunderousStrikes:PerkType = mk("Thunderous Strikes", "Thunderous Strikes",
				"+20% 'Attack' damage while strength is at or above 80.",
				"You choose the 'Thunderous Strikes' perk, increasing normal damage by 20% while your strength is over 80.");
		public static const TrachealSystem:PerkType = mk("Tracheal System", "Tracheal System",
				"Your body posses rudimentary respiratory system of the insects.",
				"You choose the 'Tracheal System' perk, by becoming much more insect-like your body started to denvelop crude version of insects breathing system.");
		public static const TrachealSystemEvolved:PerkType = mk("Tracheal System (Evolved)", "Tracheal System (Evolved)",
				".",
				"You choose the 'Tracheal System (Evolved)' perk, continuous exposition to insectidal changes caused your tracheal system evolution into more complete form.");
		public static const Transference:PerkType = mk("Transference", "Transference",
				"Your mastery of lust and desire allows you to transfer 15% of your current arousal to your opponent.",
				"You choose the 'Transference' perk, granting ability to transfer your own arousal to your opponent.");
		public static const TripleAttack:PerkType = mk("Triple Attack", "Triple Attack",
				"Allows you to perform three melee attacks with non-large weapons per round.",
				"You choose the 'Triple Attack' perk.  This allows you to make three melee attacks with non-large weapons.");
		public static const TripleStrike:PerkType = mk("Triple Strike", "Triple Strike",
				"Allows you to perform three range attacks per round.",
				"You choose the 'Triple Strike' perk.  This allows you to make three range attacks.");
		public static const Unhindered:PerkType = mk("Unhindered", "Unhindered",
				"Increases chances of evading enemy attacks when you are naked. (Undergarments won't disable this perk.)",
				"You choose the 'Unhindered' perk, granting chance to evade when you are naked.");
		public static const UnlockBody:PerkType = mk("Unlock: Body", "Unlock: Body",
				"Unlocking body potential grants additional 15 HP on each lvl-up (retroactive effect).",
				"You choose the 'Unlock: Body' perk, allowing you to increase passive HP gains on lvl-up!");
		public static const UnlockId:PerkType = mk("Unlock: Id", "Unlock: Id",
				"Unlocking id grants additional 1 Lust on each lvl-up (retroactive effect).",
				"You choose the 'Unlock: Id' perk, allowing you to increase passive Lust gains on lvl-up!");
		public static const UnlockMind:PerkType = mk("Unlock: Mind", "Unlock: Mind",
				"Unlocking mind potential grants additional 5 Fatigue on each lvl-up (retroactive effect).",
				"You choose the 'Unlock: Mind' perk, allowing you to increase passive Fatigue gains on lvl-up!");
		public static const VitalShot:PerkType = mk("Vital Shot", "Vital Shot",
				"Gain a +10% chance to do a critical strike with arrows.",
				"You choose the 'Vital Shot' perk, gaining an additional +10% chance to cause a critical hit with arrows.");
		public static const WeaponGrandMastery:PerkType = mk("Weapon Grandmastery", "Weapon Grandmastery",
				"[if(player.str>139)" +
						"Double damage bonus of weapons classified as 'Large' and 'Dual Large'. Additionaly 10% higher chance to crit with dual large weapons." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Weapon Grandmastery' perk, doubling the effectiveness of large or dual large weapons.");
		public static const WeaponMastery:PerkType = mk("Weapon Mastery", "Weapon Mastery",
				"[if(player.str>99)" +
						"One and half damage bonus of weapons classified as 'Large'. Additionaly 10% higher chance to crit with those weapons." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You choose the 'Weapon Mastery' perk, getting one and half of the effectiveness of large weapons.");
		public static const WellAdjusted:PerkType = mk("Well Adjusted", "Well Adjusted",
				"You gain half as much lust as time passes in Mareth.",
				"You choose the 'Well Adjusted' perk, reducing the amount of lust you naturally gain over time while in this strange land!");
		public static const WildQuiver:PerkType = mk("Wild Quiver", "Wild Quiver",
				"You grab and shoot arrows at blinding speed, gaining an extra shot.",
				"You choose the 'Wild Quiver' perk, you combine it with triple attack and manyshot to shoot up to 5 times.");
		public static const JobArcher:PerkType = mk("Job: Archer", "Job: Archer",
				"You've trained in ranged combat.",
				"You choose 'Job: Archer' perk, training yourself to became Archer.");//perk później do usuniecia
		

		// Needlework perks
		public static const ChiReflowAttack:PerkType = mk("Chi Reflow - Attack", "Chi Reflow - Attack",
				"Regular attacks boosted, but damage resistance decreased.");
		public static const ChiReflowDefense:PerkType = mk("Chi Reflow - Defense", "Chi Reflow - Defense",
				"Passive damage resistance, but caps speed");
		public static const ChiReflowLust:PerkType = mk("Chi Reflow - Lust", "Chi Reflow - Lust",
				"Lust resistance and Tease are enhanced, but Libido and Sensitivity gains increased.");
		public static const ChiReflowMagic:PerkType = mk("Chi Reflow - Magic", "Chi Reflow - Magic",
				"Magic attacks boosted, but regular attacks are weaker.");
		public static const ChiReflowSpeed:PerkType = mk("Chi Reflow - Speed", "Chi Reflow - Speed",
				"Speed reductions are halved but caps strength");

		// Piercing perks
		public static const PiercedCrimstone:PiercedCrimstonePerk = new PiercedCrimstonePerk();
		public static const PiercedIcestone:PiercedIcestonePerk = new PiercedIcestonePerk();
		public static const PiercedFertite:PiercedFertitePerk = new PiercedFertitePerk();
		public static const PiercedFurrite:PerkType = mk("Pierced: Furrite", "Pierced: Furrite",
				"Increases chances of encountering 'furry' foes.");
		public static const PiercedLethite:PerkType = mk("Pierced: Lethite", "Pierced: Lethite",
				"Increases chances of encountering demonic foes.");

		// Cock sock perks
		public static const LustyRegeneration:PerkType = mk("Lusty Regeneration", "Lusty Regeneration",
				"Regenerates 0,5% of HP per round in combat and 1% of HP per hour.");
		public static const MidasCock:PerkType = mk("Midas Cock", "Midas Cock",
				"Increases the gems awarded from victory in battle.");
		public static const PentUp:PentUpPerk = new PentUpPerk();
		public static const PhallicPotential:PerkType = mk("Phallic Potential", "Phallic Potential",
				"Increases the effects of penis-enlarging transformations.");
		public static const PhallicRestraint:PerkType = mk("Phallic Restraint", "Phallic Restraint",
				"Reduces the effects of penis-enlarging transformations.");

		// Armor perks
		public static const BloodMage:PerkType = mk("Blood Mage", "Blood Mage",
				"Spellcasting now consumes health instead of fatigue!",null,true);
		public static const SluttySeduction:SluttySeductionPerk = new SluttySeductionPerk();
		public static const WellspringOfLust:PerkType = mk("Wellspring of Lust", "Wellspring of Lust",
				"At the beginning of combat, gain lust up to black magic threshold if lust is bellow black magic threshold.",null,true);
		public static const WizardsEnduranceAndSluttySeduction:WizardsEnduranceAndSluttySeductionPerk = new WizardsEnduranceAndSluttySeductionPerk();
		public static const WizardsAndSoulcultivatorsEndurance:WizardsAndSoulcultivatorsEndurancePerk = new WizardsAndSoulcultivatorsEndurancePerk();
		public static const WizardsEndurance:WizardsEndurancePerk = new WizardsEndurancePerk();

		// Weapon perks
		public static const WizardsFocus:WizardsFocusPerk = new WizardsFocusPerk();
		public static const Accuracy1:Accuracy1Perk = new Accuracy1Perk();
		public static const Accuracy2:Accuracy2Perk = new Accuracy2Perk();

		// Achievement perks
		public static const BowShooting:BowShootingPerk = new BowShootingPerk();
		public static const BroodMother:PerkType = mk("Brood Mother", "Brood Mother",
				"Pregnancy moves twice as fast as a normal woman's.");
		public static const SpellcastingAffinity:SpellcastingAffinityPerk = new SpellcastingAffinityPerk();
		public static const Cultivation:PerkType = mk("Cultivation", "Cultivation",
				"Allow to cultivate powers of the soul.",
				"You choose the 'Cultivation' perk, starting journey of the soul cultivation path!");//potem przerobić na coć innego - moze jak perki do czarów i łuku bedzie dawać jakieś korzyści do soul skills po odpowiednio dużej ilości ich użycia czy cos xD

		// Mutation perks
		public static const Androgyny:PerkType = mk("Androgyny", "Androgyny",
				"No gender limits on facial masculinity or femininity.");
		public static const BasiliskWomb:PerkType = mk("Basilisk Womb", "Basilisk Womb",
				"Enables your eggs to be properly fertilized into basilisks of both genders!");
		public static const BeeOvipositor:PerkType = mk("Bee Ovipositor", "Bee Ovipositor",
				"Allows you to lay eggs through a special organ on your insect abdomen, though you need at least 10 eggs to lay.");
		public static const BimboBody:PerkType = mk("Bimbo Body", "Bimbo Body",
				"Gives the body of a bimbo.  Tits will never stay below a 'DD' cup, libido is raised, lust resistance is raised, and upgrades tease.");
		public static const BimboBrains:PerkType = mk("Bimbo Brains", "Bimbo Brains",
				"Now that you've drank bimbo liquer, you'll never, like, have the attention span and intelligence you once did!  But it's okay, 'cause you get to be so horny an' stuff!");
		public static const BroBody:PerkType = mk("Bro Body", "Bro Body",
				"Grants an ubermasculine body that's sure to impress.");
		public static const BroBrains:PerkType = mk("Bro Brains", "Bro Brains",
				"Makes thou... thin... fuck, that shit's for nerds.");
		public static const BunnyEggs:PerkType = mk("Bunny Eggs", "Bunny Eggs",
				"Laying eggs has become a normal part of your bunny-body's routine.");
		public static const ColdAffinity:PerkType = mk("Cold Affinity", "Cold Affinity",
				"You have high resistance to cold effects, immunity to the frozen condition, and mastery over ice abilities and magic. However, you are highly susceptible to fire.");
		public static const ColdMastery:PerkType = mk("Cold Mastery", "Cold Mastery",
				"You now have complete control over the ice element adding your own inner power to all cold based attack.");
		public static const CorruptedKitsune:PerkType = mk("Corrupted Kitsune", "Corrupted Kitsune",
				"The mystical energy of the kitsunes surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells, but your method of attaining it has corrupted the transformation, preventing you from achieving true enlightenment.",null,true);
		public static const CorruptedNinetails:PerkType = mk("Corrupted Nine-tails", "Corrupted Nine-tails",
				"The mystical energy of the nine-tails surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells, but your method of attaining it has corrupted the transformation, preventing you from achieving true enlightenment.",null,true);
		public static const DarkCharm:PerkType = mk("Dark Charm", "Dark Charm",
				"Allows access to demons charm attacks.");
		public static const Diapause:PerkType = mk("Diapause", "Diapause",
				"Pregnancy does not advance normally, but develops quickly after taking in fluids.");
		public static const DragonFireBreath:PerkType = mk("Dragon fire breath", "Dragon fire breath",
				"Allows access to a dragon fire breath attack.");
		public static const DragonIceBreath:PerkType = mk("Dragon ice breath", "Dragon ice breath",
				"Allows access to a dragon ice breath attack.");
		public static const EnlightenedKitsune:PerkType = mk("Enlightened Kitsune", "Enlightened Kitsune",
				"The mystical energy of the kitsunes surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells.",null,true);
		public static const EnlightenedNinetails:PerkType = mk("Enlightened Nine-tails", "Enlightened Nine-tails",
				"The mystical energy of the nine-tails surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells.",null,true);
		public static const EzekielBlessing:PerkType = mk("Ezekiel Blessing", "Ezekiel Blessing",
				"You've recived blessing of Ezekiel enhancing your body and mind.");
		public static const Feeder:PerkType = mk("Feeder", "Feeder",
				"Lactation does not decrease and gives a compulsion to breastfeed others.");
		public static const FenrirSpikedCollar:PerkType = mk("Fenrir spiked collar", "Fenrir spiked collar",
				"The magical chain as well as the strongly enchanted collar increase damage reduction by 10%.");
		public static const FireAffinity:PerkType = mk("Fire Affinity", "Fire Affinity",
				"You have high resistance to fire effects, immunity to the burn condition, and mastery over fire abilities and magic. However, you are highly susceptible to ice.");
		public static const Flexibility:PerkType = mk("Flexibility", "Flexibility",
				"Grants cat-like flexibility.  Useful for dodging and 'fun'.");
		public static const FreezingBreath:PerkType = mk("Freezing Breath (F)", "Freezing Breath (F)",
				"Allows access to Fenrir (AoE) freezing breath attack.");
		public static const FreezingBreathYeti:PerkType = mk("Freezing Breath (Y)", "Freezing Breath (Y)",
				"Allows access to Yeti freezing breath attack.");
		public static const FromTheFrozenWaste:PerkType = mk("From the frozen waste", "From the frozen waste",
				"You are resistant to cold but gain a weakness to fire.");
		public static const FutaFaculties:PerkType = mk("Futa Faculties", "Futa Faculties",
				"It's super hard to think about stuff that like, isn't working out or fucking!");
		public static const FutaForm:PerkType = mk("Futa Form", "Futa Form",
				"Ensures that your body fits the Futa look (Tits DD+, Dick 8\"+, & Pussy).  Also keeps your lusts burning bright and improves the tease skill.");
		public static const GeneticMemory:PerkType = mk("Genetic Memory", "Genetic Memory",
				"Your body can remember almost any transformation it undergone.");
		public static const HarpyWomb:PerkType = mk("Harpy Womb", "Harpy Womb",
				"Increases all laid eggs to large size so long as you have harpy legs and a harpy tail.");
		public static const Incorporeality:PerkType = mk("Incorporeality", "Incorporeality",
				"Allows you to fade into a ghost-like state and temporarily possess others.");
		public static const InkSpray:PerkType = mk("Ink Spray", "Ink Spray",
				"Allows you to shoot blinding and probably slightly arousing ink out of your genitalia similar like octopus.");
		public static const LizanRegeneration:PerkType = mk("Lizan Regeneration", "Lizan Regeneration",
				"Regenerates 1.5% of HP per round in combat and 3% of HP per hour and additional slightly increasing maximal attainable natural healing rate.");
		public static const Lustzerker:PerkType = mk("Lustzerker", "Lustzerker",
				"Lustserking increases attack and physical defenses resistance but reduces lust resistance.");
		public static const ManticoreCumAddict:PerkType = mk("Manticore Cum Addict", "Manticore Cum Addict",
				"Causes you to crave cum frequently.  Yet at the same time grants you immunity to Minotaur Cum addiction.");
		public static const MantisOvipositor:PerkType = mk("Mantis Ovipositor", "Mantis Ovipositor",
				"Allows you to lay eggs through a special organ on your insect abdomen, though you need at least 10 eggs to lay.");
		public static const MilkMaid:MilkMaidPerk = new MilkMaidPerk();
		public static const MinotaurCumAddict:PerkType = mk("Minotaur Cum Addict", "Minotaur Cum Addict",
				"Causes you to crave minotaur cum frequently.  You cannot shake this addiction.");
		public static const MinotaurCumResistance:PerkType = mk("Minotaur Cum Resistance", "Minotaur Cum Resistance",
				"You can never become a Minotaur Cum Addict. Grants immunity to Minotaur Cum addiction.");
		public static const Oviposition:PerkType = mk("Oviposition", "Oviposition",
				"Causes you to regularly lay eggs when not otherwise pregnant.");
		public static const PhoenixFireBreath:PerkType = mk("Phoenix fire breath", "Phoenix fire breath",
				"Allows access to a phoenix fire breath attack.");
		public static const PurityBlessing:PerkType = mk("Purity Blessing", "Purity Blessing",
				"Reduces the rate at which your corruption, libido, and lust increase. Reduces minimum libido and lust slightly.");
		public static const RapierTraining:PerkType = mk("Rapier Training", "Rapier Training",
				"After finishing of your training, increase attack power of any rapier you're using.");
		public static const SatyrSexuality:PerkType = mk("Satyr Sexuality", "Satyr Sexuality",
				"Thanks to your satyr biology, you now have the ability to impregnate both vaginas and asses. Also increases your virility rating. (Anal impregnation not implemented yet)");
		public static const SlimeCore:PerkType = mk("Slime Core", "Slime Core",
				"Grants more control over your slimy body, allowing you to go twice as long without fluids.");
		public static const SpiderOvipositor:PerkType = mk("Spider Ovipositor", "Spider Ovipositor",
				"Allows you to lay eggs through a special organ on your arachnid abdomen, though you need at least 10 eggs to lay.");
		public static const ThickSkin:PerkType = mk("Thick Skin", "Thick Skin",
				"Toughens your dermis to provide 2 points of armor.");
		public static const TransformationResistance:PerkType = mk("Transformation Resistance", "Transformation Resistance",
				"Reduces the likelihood of undergoing a transformation. Disables Bad Ends from transformative items.");
				
		// Quest, Event & NPC perks
		public static const BasiliskResistance:PerkType = mk("Basilisk Resistance", "Basilisk Resistance",
				"Grants immunity to Basilisk's paralyzing gaze. Disables Basilisk Bad End.");
		public static const BulgeArmor:PerkType = mk("Bulge Armor", "Bulge Armor",
				"Grants a 5 point damage bonus to dick-based tease attacks.");
		public static const Cornucopia:PerkType = mk("Cornucopia", "Cornucopia",
				"Vaginal and Anal capacities increased by 30.");
		public static const ElvenBounty:ElvenBountyPerk = new ElvenBountyPerk();
		public static const FerasBoonAlpha:PerkType = mk("Fera's Boon - Alpha", "Fera's Boon - Alpha",
				"Increases the rate your cum builds up and cum production in general.");
		public static const FerasBoonBreedingBitch:PerkType = mk("Fera's Boon - Breeding Bitch", "Fera's Boon - Breeding Bitch",
				"Increases fertility and reduces the time it takes to birth young.");
		public static const FerasBoonMilkingTwat:PerkType = mk("Fera's Boon - Milking Twat", "Fera's Boon - Milking Twat",
				"Keeps your pussy from ever getting too loose and increases pregnancy speed.");
		public static const FerasBoonSeeder:PerkType = mk("Fera's Boon - Seeder", "Fera's Boon - Seeder",
				"Increases cum output by 1,000 mLs.");
		public static const FerasBoonWideOpen:PerkType = mk("Fera's Boon - Wide Open", "Fera's Boon - Wide Open",
				"Keeps your pussy permanently gaped and increases pregnancy speed.");
		public static const FireLord:PerkType = mk("Fire Lord", "Fire Lord",
				"Akbal's blessings grant the ability to breathe burning green flames.");
		public static const GclassHeavenTribulationSurvivor:PerkType = mk("G class Heaven Tribulation Survivor", "G class Heaven Tribulation Survivor",
				"You have survived second trial on cultivation path: G class Heaven Tribulation.");
		public static const HclassHeavenTribulationSurvivor:PerkType = mk("H class Heaven Tribulation Survivor", "H class Heaven Tribulation Survivor",
				"You have survived first trial on cultivation path: H class Heaven Tribulation.");
		public static const Hellfire:PerkType = mk("Hellfire", "Hellfire",
				"Grants a corrupted fire breath attack, like the hellhounds in the mountains.");
		public static const LuststickAdapted:PerkType = mk("Luststick Adapted", "Luststick Adapted",
				"Grants immunity to the lust-increasing effects of lust-stick and allows its use.");
		public static const MagicalFertility:MagicalFertilityPerk = new MagicalFertilityPerk();
		public static const MagicalVirility:MagicalVirilityPerk = new MagicalVirilityPerk();
		public static const MaraesGiftButtslut:PerkType = mk("Marae's Gift - Buttslut", "Marae's Gift - Buttslut",
				"Makes your anus provide lubrication when aroused.");
		public static const MaraesGiftFertility:PerkType = mk("Marae's Gift - Fertility", "Marae's Gift - Fertility",
				"Greatly increases fertility and halves base pregnancy speed.");
		public static const MaraesGiftProfractory:PerkType = mk("Marae's Gift - Profractory", "Marae's Gift - Profractory",
				"Causes your cum to build up at 3x the normal rate.");
		public static const MaraesGiftStud:PerkType = mk("Marae's Gift - Stud", "Marae's Gift - Stud",
				"Increases your cum production and potency greatly.");
		public static const MarbleResistant:PerkType = mk("Marble Resistant", "Marble Resistant",
				"Provides resistance to the addictive effects of bottled LaBova milk.");
		public static const MarblesMilk:PerkType = mk("Marble's Milk", "Marble's Milk",
				"Requires you to drink LaBova milk frequently or eventually die.  You cannot shake this addiction.");
		public static const Misdirection:PerkType = mk("Misdirection", "Misdirection",
				"Grants additional evasion chances while wearing Raphael's red bodysuit.");
		public static const OmnibusGift:PerkType = mk("Omnibus' Gift", "Omnibus' Gift",
				"Increases minimum lust but provides some lust resistance.");
		public static const OneTrackMind:PerkType = mk("One Track Mind", "One Track Mind",
				"Your constant desire for sex causes your sexual organs to be able to take larger insertions and disgorge greater amounts of fluid.");
		public static const PilgrimsBounty:PerkType = mk("Pilgrim's Bounty", "Pilgrim's Bounty",
				"Causes you to always cum as hard as if you had max lust.");
		public static const PureAndLoving:PerkType = mk("Pure and Loving", "Pure and Loving",
				"Your caring attitude towards love and romance makes you slightly more resistant to lust and corruption.");
		public static const SensualLover:PerkType = mk("Sensual Lover", "Sensual Lover",
				"Your sensual attitude towards love and romance makes your tease ability slightly more effective.");
		public static const SoulSense:PerkType = mk("Soul Sense", "Soul Sense",
				"Your strong affinity toward soullforce helped to denvelop another sense called 'Soul Sense' by a fellow soul cultivators.");
		public static const Whispered:PerkType = mk("Whispered", "Whispered",
				"Akbal's blessings grant limited telepathy that can induce fear.");
				
		public static const ControlledBreath:ControlledBreathPerk = new ControlledBreathPerk();
		public static const CleansingPalm:CleansingPalmPerk = new CleansingPalmPerk();
		public static const Enlightened:EnlightenedPerk = new EnlightenedPerk();
		public static const StarSphereMastery:StarSphereMasteryPerk = new StarSphereMasteryPerk();

		// Monster perks
		public static const Acid:PerkType = mk("Acid", "Acid", "");
		public static const EnemyBossType:PerkType = mk("Boss-type enemy", "Boss-type enemy", "");
		public static const EnemyGigantType:PerkType = mk("Gigant-sized type enemy", "Gigant-sized type enemy", "");
		public static const EnemyGodType:PerkType = mk("God-type enemy", "God-type enemy", "");
		public static const EnemyGroupType:PerkType = mk("Group-type enemy", "Group-type enemy", "");
		public static const FireNature:PerkType = mk("Fire Nature", "Fire Nature", "");
		public static const FireVulnerability:PerkType = mk("Fire Vulnerability", "Fire Vulnerability", "");
		public static const IceNature:PerkType = mk("Ice Nature", "Ice Nature", "");
		public static const IceVulnerability:PerkType = mk("Ice Vulnerability", "Ice Vulnerability", "");
		public static const ShieldWielder:PerkType = mk("Shield wielder", "Shield wielder", "");
		//public static const :PerkType = mk("", "", "");
		//public static const :PerkType = mk("", "", "");
		//public static const :PerkType = mk("", "", "");
		//public static const :PerkType = mk("", "", ""); na poźniej dopisane perki wzór
//dodać także typy perków dla poszczególnych ras przeciwników tak, ze bedą mogły one mieć jakieś korzyści też (np. jak ma Dragon nature to bonusy jak PC miałby dragon score > 6))
		private static function mk(id:String, name:String, desc:String, longDesc:String = null, keepOnAscension:Boolean = false):PerkType
		{
			return new PerkType(id, name, desc, longDesc, keepOnAscension);
		}
	}
}
