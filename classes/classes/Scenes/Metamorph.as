/**
 * ...
 * @author Ormael, TrueASDFMan
 */
package classes.Scenes 
{
	import classes.*
	import classes.BaseContent;
	import classes.GlobalFlags.kGAMECLASS;
	
	use namespace kGAMECLASS;
	
	public class Metamorph extends BaseContent
	{
		
		public function Metamorph() 
		{
			
		}
	public function accessMetamorphMenu():void {
		accessMetamorphMenuPage1();
	}	
	
	private function accessMetamorphMenuPage1():void {
		clearOutput();
		outputText("Your body remebers everything it has ever been. If you so desire, you can change back to what you once were.");
		menu();
		addButton(0, "Unlock", unlockAll);
		addButton(1, "Hair", accessHairPage);
		addButton(2, "Skin", accessSkinPage1);
		addButton(3, "Face", accessFacePage1);
		addButton(4, "Next", accessMetamorphMenuPage2);
		addButton(5, "Tongue", accessTonguePage);
		addButton(6, "Eye", accessEyePage);
		addButton(7, "Ear", accessEarPage1);
		addButton(8, "Horn", accessHornPage1);
		addButton(9, "Antennae", accessAntennaePage);
		addButton(10, "Gill", accessGillPage);
		addButton(11, "Arm", accessArmPage1);
		addButton(12, "Tail", accessTailPage1);
		addButton(13, "Wing", accessWingPage1);
		addButton(14, "Back", kGAMECLASS.soulforce.accessSoulforceMenu);
	}
	
	private function accessMetamorphMenuPage2():void {
		menu();		
		addButton(0, "Previous", accessMetamorphMenuPage1);
		addButton(1, "Lower Body", accessLowerBodyPage);
		addButton(2, "Rear Body", accessRearBodyPage);
		addButton(3, "Vagina", accessVaginaPage);
		addButtonDisabled(4, "Next", "");
		addButton(5, "Cock", accessCockNumberPage);
		addButton(6, "Misc", accessMiscPage);
		addButton(14, "Back", kGAMECLASS.soulforce.accessSoulforceMenu);
	}
	
	private function accessMetamorphMenuPage3():void {
		menu();		
		addButton(0, "Previous", accessMetamorphMenuPage1);
		addButton(14, "Back", kGAMECLASS.soulforce.accessSoulforceMenu);
	}
	
	private function accessHairPage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");	
	//Normal/Human Hair
		addMorphButton(StatusAffects.UnlockedHumanHair, player.hairType, HAIR_NORMAL, 1, "Human", morphHairHuman);
	//Feather Hair
		addMorphButton(StatusAffects.UnlockedFeatherHair, player.hairType, HAIR_FEATHER, 2, "Feather", morphHairFeather);
	//Ghost Hair
		addMorphButton(StatusAffects.UnlockedGhostHair, player.hairType, HAIR_GHOST, 3, "Ghost", morphHairGhost);
	//Next	
		addButtonDisabled(4, "Next", "");	
	//Goo Hair
		addMorphButton(StatusAffects.UnlockedGooHair, player.hairType, HAIR_GOO, 5, "Goo", morphHairGoo);
	//Anemone Hair
		addMorphButton(StatusAffects.UnlockedAnemoneHair, player.hairType, HAIR_ANEMONE, 6, "Anemone", morphHairAnemone);
	//Quill Hair
		addMorphButton(StatusAffects.UnlockedQuillHair, player.hairType, HAIR_QUILL, 7, "Quill", morphHairQuill);
	//Gorgon Hair
		addMorphButton(StatusAffects.UnlockedGorgonHair, player.hairType, HAIR_GORGON, 8, "Gorgon", morphHairGorgon);
	//Leaf Hair
		addMorphButton(StatusAffects.UnlockedLeafHair, player.hairType, HAIR_LEAF, 9, "Leaf", morphHairLeaf);
	//Fluffy Hair
		addMorphButton(StatusAffects.UnlockedFluffyHair, player.hairType, HAIR_FLUFFY, 10, "Fluffy", morphHairFluffy);
	//Return	
		addButton(14, "Back", accessMetamorphMenuPage1);
	}
	
	private function accessSkinPage1():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");	
	//Plain Skin
		addMorphButton(StatusAffects.UnlockedHumanSkin, player.skinType, SKIN_TYPE_PLAIN, 1, "Human Skin", morphSkinPlain);	
	//Fur
		addMorphButton(StatusAffects.UnlockedFur, player.skinType, SKIN_TYPE_FUR, 2, "Fur", morphSkinFur);	
	//Scales
		addMorphButton(StatusAffects.UnlockedScales, player.skinType, SKIN_TYPE_SCALES, 3, "Scales", morphSkinScales);
	//Next
		addButton(4, "Next", accessSkinPage2);	
	//Goo
		addMorphButton(StatusAffects.UnlockedGoo, player.skinType, SKIN_TYPE_GOO, 5, "Goo", morphSkinGoo);
	//Chitin
		addMorphButton(StatusAffects.UnlockedChitin, player.skinType, SKIN_TYPE_CHITIN, 6, "Chitin", morphSkinChitin);
	//Tattooed
		addMorphButton(StatusAffects.UnlockedTattooed, player.skinType, SKIN_TYPE_TATTOED, 7, "Tattoed ", morphSkinTattooed);
	//PartialFur
		addMorphButton(StatusAffects.UnlockedPartialFur, player.skinType, SKIN_TYPE_PARTIAL_FUR, 8, "Partial Fur", morphSkinPartialFur);
	//PartialScales
		addMorphButton(StatusAffects.UnlockedPartialScales, player.skinType, SKIN_TYPE_PARTIAL_SCALES, 9, "Partial Scales", morphSkinPartialScales);
	//Bark NYI
		addMorphButton(StatusAffects.UnlockedBark, player.skinType, SKIN_TYPE_BARK, 10, "Bark", morphSkinBark);
	//Stone NYI
		addMorphButton(StatusAffects.UnlockedStone, player.skinType, SKIN_TYPE_STONE, 11, "Stone", morphSkinStone);
	//AquaScales NYI
		addMorphButton(StatusAffects.UnlockedAquaScales, player.skinType, SKIN_TYPE_AQUA_SCALES, 12, "Aqua Scales", morphSkinAquaScales);
	//PartialChitin NYI
		addMorphButton(StatusAffects.UnlockedPartialChitin, player.skinType, SKIN_TYPE_PARTIAL_CHITIN, 13, "Partial Chitin", morphSkinPartialChiting);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);
	}
	
	private function accessSkinPage2():void {	
		menu();
	//Previous
		addButton(0, "Previous", accessSkinPage1);
	//PartialBark NYI
		addMorphButton(StatusAffects.UnlockedPartialBark, player.skinType, SKIN_TYPE_PARTIAL_BARK, 1, "Partial Bark", morphSkinPartialBark);
	//Undefined
//		addMorphButton(StatusAffects.UnlockedUndefined, player.skinType, SKIN_TYPE_UNDEFINED, 2, "Undefined", morphFeatherHair);	
	//Next
		addButtonDisabled(4, "Next", "");	
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);
	}
	
	private function accessFacePage1():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");	
	//Human
		addMorphButton(StatusAffects.UnlockedHumanFace, player.faceType, FACE_HUMAN, 1, "Human", morphFaceHuman);
	//Horse
		addMorphButton(StatusAffects.UnlockedHorseFace, player.faceType, FACE_HORSE, 2, "Horse", morphFaceHorse);
	//Dog
		addMorphButton(StatusAffects.UnlockedDogFace, player.faceType, FACE_DOG, 3, "Dog", morphFaceDog);
	//Next
		addButton(4, "Next", accessFacePage2);	
	//CowMino
		addMorphButton(StatusAffects.UnlockedCowMinoFace, player.faceType, FACE_COW_MINOTAUR, 5, "Cow", morphFaceCowMino);
	//Shark
		addMorphButton(StatusAffects.UnlockedSharkFace, player.faceType, FACE_SHARK_TEETH, 6, "Shark", morphFaceShark);
	//Snake
		addMorphButton(StatusAffects.UnlockedSnakeFace, player.faceType, FACE_SNAKE_FANGS, 7, "Snake", morphFaceSnake);
	//Cat
		addMorphButton(StatusAffects.UnlockedCatFace, player.faceType, FACE_CAT, 8, "Cat", morphFaceCat);
	//Lizard
		addMorphButton(StatusAffects.UnlockedLizardFace, player.faceType, FACE_LIZARD, 9, "Lizard", morphFaceLizard);
	//Bunny
		addMorphButton(StatusAffects.UnlockedBunnyFace, player.faceType, FACE_BUNNY, 10, "Bunny", morphFaceBunny);
	//Kangaroo
		addMorphButton(StatusAffects.UnlockedKangarooFace, player.faceType, FACE_KANGAROO, 11, "Kangaroo", morphFaceKangaroo);
	//Spider
		addMorphButton(StatusAffects.UnlockedSpiderFace, player.faceType, FACE_SPIDER_FANGS, 12, "Spider", morphFaceSpider);
	//Fox
		addMorphButton(StatusAffects.UnlockedFoxFace, player.faceType, FACE_FOX, 13, "Fox", morphFaceFox);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);	
	}
	
	private function accessFacePage2():void {
		menu();
	//Previous
		addButton(0, "Previous", accessFacePage1);
	//Dragon
		addMorphButton(StatusAffects.UnlockedDragonFace, player.faceType, FACE_DRAGON, 1, "Dragon", morphFaceDragon);
	//HalfRaccoon
		addMorphButton(StatusAffects.UnlockedRacconHalfFace, player.faceType, FACE_RACCOON_MASK, 2, "Half-Raccoon", morphFaceHalfRaccoon);
	//FullRaccoon
		addMorphButton(StatusAffects.UnlockedRaccoonFullFace, player.faceType, FACE_RACCOON, 3, "Full-Raccoon", morphFaceFullRaccoon);
	//Next
		addButton(4, "Next", accessFacePage3);	
	//HalfMouse
		addMorphButton(StatusAffects.UnlockedMouseHalfFace, player.faceType, FACE_BUCKTEETH, 5, "Half-Mouse", morphFaceHalfMouse);
	//FullMouse
		addMorphButton(StatusAffects.UnlockedMouseFullFace, player.faceType, FACE_MOUSE, 6, "Full-Mouse ", morphFaceFullMouse);
	//HalfFerret
		addMorphButton(StatusAffects.UnlockedFerretHalfFace, player.faceType, FACE_FERRET_MASK, 7, "Half-Ferret", morphFaceHalfFerret);
	//FullFerret
		addMorphButton(StatusAffects.UnlockedFerretFullFace, player.faceType, FACE_FERRET, 8, "Full-Ferret", morphFaceFullFerret);
	//Pig
		addMorphButton(StatusAffects.UnlockedPigFace, player.faceType, FACE_PIG, 9, "Pig", morphFacePig);
	//Boar
		addMorphButton(StatusAffects.UnlockedBoarFace, player.faceType, FACE_BOAR, 10, "Boar", morphFaceBoar);
	//Rhino
		addMorphButton(StatusAffects.UnlockedRhinoFace, player.faceType, FACE_RHINO, 11, "Rhino", morphFaceRhino);
	//Echidna
		addMorphButton(StatusAffects.UnlockedEchidnaFace, player.faceType, FACE_ECHIDNA, 12, "Echidna", morphFaceEchidna);
	//Deer
		addMorphButton(StatusAffects.UnlockedDeerFace, player.faceType, FACE_DEER, 13, "Deer", morphFaceDeer);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);	
	}
	
	private function accessFacePage3():void {
		menu();
	//Previous	
		addButton(0, "Previous", accessFacePage2);
	//Wolf
		addMorphButton(StatusAffects.UnlockedWolfFace, player.faceType, FACE_WOLF, 1, "Wolf", morphFaceWolf);
	//Manticore
		addMorphButton(StatusAffects.UnlockedManticoreFace, player.faceType, FACE_MANTICORE, 2, "Manticore", morphFaceManticore);
	//Salamander
		addMorphButton(StatusAffects.UnlockedSalamanderFace, player.faceType, FACE_SALAMANDER_FANGS, 3, "Salamander", morphFaceSalamander);
	//Next
		addButtonDisabled(4, "Next", "");	
	//Yeti
		addMorphButton(StatusAffects.UnlockedYetiFace, player.faceType, FACE_YETI_FANGS, 5, "Yeti", morphFaceYeti);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);
	}
	
	private function accessTonguePage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");	
	//Human
		addMorphButton(StatusAffects.UnlockedHumanTongue, player.tongueType, TONUGE_HUMAN, 1, "Human", morphTongueHuman);
	//Snake
		addMorphButton(StatusAffects.UnlockedSnakeTongue, player.tongueType, TONUGE_SNAKE, 2, "Snake", morphTongueSnake);
	//Demonic
		addMorphButton(StatusAffects.UnlockedDemonTongue, player.tongueType, TONUGE_DEMONIC, 3, "Demon", morphTongueDemon);
	//Next
		addButtonDisabled(4, "Next", "");	
	//Dragon
		addMorphButton(StatusAffects.UnlockedDragonTongue, player.tongueType, TONUGE_DRACONIC, 5, "Dragon", morphTongueDragon);
	//Echidna
		addMorphButton(StatusAffects.UnlockedEchidnaTongue, player.tongueType, TONUGE_ECHIDNA, 6, "Echidna", morphTongueEchidna);
	//Cat
		addMorphButton(StatusAffects.UnlockedCatTongue, player.tongueType, TONUGE_CAT, 7, "Cat", morphTongueCat);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessEyePage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Preivous", "");	
	//Human
		addMorphButton(StatusAffects.UnlockedHumanEyes, player.eyeType, EYES_HUMAN, 1, "Human", morphEyesHuman);
	//Spider
		addMorphButton(StatusAffects.UnlockedSpiderEyes, player.eyeType, EYES_FOUR_SPIDER_EYES, 2, "Spider", morphEyesSpider);
	//SandTrap
		addMorphButton(StatusAffects.UnlockedSandTrapEyes, player.eyeType, EYES_BLACK_EYES_SAND_TRAP, 3, "Sandtrap", morphEyesSandTrap);
	//Next
		addButtonDisabled(4, "Next", "");	
	//Cat
		addMorphButton(StatusAffects.UnlockedCatEyes, player.eyeType, EYES_CAT_SLITS, 5, "Cat", morphEyesCat);
	//Gorgon
		addMorphButton(StatusAffects.UnlockedGorgonEyes, player.eyeType, EYES_GORGON, 6, "Gorgon", morphEyesGorgon);
	//Fenrir
		addMorphButton(StatusAffects.UnlockedFenrirEyes, player.eyeType, EYES_FENRIR, 7, "Fernrir", morphEyesFenrir);
	//Manticore
		addMorphButton(StatusAffects.UnlockedManticoreEyes, player.eyeType, EYES_MANTICORE, 8, "Manticore", morphEyesManticore);
	//Fox
		addMorphButton(StatusAffects.UnlockedFoxEyes, player.eyeType, EYES_FOX, 9, "Fox", morphEyesFox);
	//Lizard
		addMorphButton(StatusAffects.UnlockedLizardEyes, player.eyeType, EYES_REPTILIAN, 10, "Reptilian", morphEyesLizard);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessEarPage1():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");	
	//Human
		addMorphButton(StatusAffects.UnlockedHumanEars, player.earType, EARS_HUMAN, 1, "Human", morphEarsHuman);
	//Horse
		addMorphButton(StatusAffects.UnlockedHorseEars, player.earType, EARS_HORSE, 2, "Horse", morphEarsHorse);
	//Dog
		addMorphButton(StatusAffects.UnlockedDogEars, player.earType, EARS_DOG, 3, "Dog", morphEarsDog);
	//Next
		addButton(4, "Next", accessEarPage2);	
	//Cow
		addMorphButton(StatusAffects.UnlockedCowMinoEars, player.earType, EARS_COW, 5, "Cow", morphEarsCowMino);
	//Elf
		addMorphButton(StatusAffects.UnlockedElfEars, player.earType, EARS_ELFIN, 6, "Elf", morphEarsElf);
	//Cat
		addMorphButton(StatusAffects.UnlockedCatEars, player.earType, EARS_CAT, 7, "Cat", morphEarsCat);
	//Lizard
		addMorphButton(StatusAffects.UnlockedLionEars, player.earType, EARS_LIZARD, 8, "Lizard", morphEarsLizard);
	//Bunny
		addMorphButton(StatusAffects.UnlockedBunnyEars, player.earType, EARS_BUNNY, 9, "Bunny", morphEarsBunny);
	//Kangaroo
		addMorphButton(StatusAffects.UnlockedKangarooEars, player.earType, EARS_KANGAROO, 10, "Kangaroo", morphEarsKangaroo);
	//Fox
		addMorphButton(StatusAffects.UnlockedFoxEars, player.earType, EARS_FOX, 11, "Fox", morphEarsFox);
	//Dragon
		addMorphButton(StatusAffects.UnlockedDragonEars, player.earType, EARS_DRAGON, 12, "Dragon", morphEarsDragon);
	//Raccoon
		addMorphButton(StatusAffects.UnlockedRaccoonEars, player.earType, EARS_RACCOON, 13, "Raccoon", morphEarsRaccoon);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);
	}
	
	private function accessEarPage2():void {
		menu();
	//Previous
		addButton(0, "Previous", accessEarPage1);	
	//Mouse
		addMorphButton(StatusAffects.UnlockedMouseEars, player.earType, EARS_MOUSE, 1, "Mouse", morphEarsMouse);
	//Ferret
		addMorphButton(StatusAffects.UnlockedFerretEars, player.earType, EARS_FERRET, 2, "Ferret", morphEarsFerret);
	//Pig
		addMorphButton(StatusAffects.UnlockedPigEars, player.earType, EARS_PIG, 3, "Pig", morphEarsPig);
	//Next
		addButtonDisabled(4, "Next", "");	
	//Rhino
		addMorphButton(StatusAffects.UnlockedRhinoEars, player.earType, EARS_RHINO, 5, "Rhino", morphEarsRhino);
	//Echidna
		addMorphButton(StatusAffects.UnlockedEchidnaEars, player.earType, EARS_ECHIDNA, 6, "Echidna", morphEarsEchidna);
	//Deer
		addMorphButton(StatusAffects.UnlockedDeerEars, player.earType, EARS_DEER, 7, "Deer", morphEarsDeer);
	//Wolf
		addMorphButton(StatusAffects.UnlockedWolfEars, player.earType, EARS_WOLF, 8, "Wolf", morphEarsWolf);
	//Lion
		addMorphButton(StatusAffects.UnlockedLionEars, player.earType, EARS_LION, 9, "Lion", morphEarsLion);
	//Yeti
		addMorphButton(StatusAffects.UnlockedYetiEars, player.earType, EARS_YETI, 10, "Yeti", morphEarsYeti);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);
	}
	
	private function accessHornPage1():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//None
		addMorphButton(StatusAffects.UnlockedNoHorns, player.hornType, HORNS_NONE, 1, "None", morphHornNone);
	//Demon
		addMorphButton(StatusAffects.UnlockedDemonHorns, player.hornType, HORNS_DEMON, 2, "Demon", morphHornDemon);
	//CowMino
		addMorphButton(StatusAffects.UnlockedCowMinoHorns, player.hornType, HORNS_COW_MINOTAUR, 3, "Cow-Mino", morphHornCowMino);
	//Next
		addButton(4, "Next", accessHornPage2);
	//DragonX2
		addMorphButton(StatusAffects.UnlockedDragonHornsX2, player.hornType, HORNS_DRACONIC_X2,5, "Dragon x2", morphHornDragonX2);
	//DragonX4
		addMorphButton(StatusAffects.UnlockedDragonHornsX4, player.hornType, HORNS_DRACONIC_X4_12_INCH_LONG, 6, "Dragon x4", morphHornDragonX4);
	//Antlers
		addMorphButton(StatusAffects.UnlockedAntlers, player.hornType, HORNS_ANTLERS, 7, "Antlers", morphHornAntlers);
	//Goat
		addMorphButton(StatusAffects.UnlockedGoatHorns, player.hornType, HORNS_GOAT, 8, "Goat", morphHornGoat);
	//Unicorn
		addMorphButton(StatusAffects.UnlockedUnicornHorns, player.hornType, HORNS_UNICORN, 9, "Unicorn", morphHornUnicorn);
	//Rhino
		addMorphButton(StatusAffects.UnlockedRhinoHorns, player.hornType, HORNS_RHINO, 10, "Rhino", morphHornRhino);
	//Oak
		addMorphButton(StatusAffects.UnlockedOakHorns, player.hornType, HORNS_OAK, 11, "Oak", morphHornOak);
	//Gargoyle
		addMorphButton(StatusAffects.UnlockedGargoyleHorns, player.hornType, HORNS_GARGOYLE, 12, "Gargoyle", morphHornGargoyle);
	//Orchid
		addMorphButton(StatusAffects.UnlockedOrchidHorns, player.hornType, HORNS_ORCHID, 13, "Orchid", morphHornOrchid);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);			
	}
	
	private function accessHornPage2():void {
		menu();
	//Previous
		addButton(0, "Previous", accessHornPage1);
	//Next
		addButtonDisabled(4, "Next", "");
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);			
	}
	
	private function accessAntennaePage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//None
		addMorphButton(StatusAffects.UnlockedNoAntennae, player.antennae, ANTENNAE_NONE, 1, "None", morphAntennaeNone);
	//Mantis
		addMorphButton(StatusAffects.UnlockedMantisAntennae, player.antennae, ANTENNAE_MANTIS, 2, "Mantis", morphAntennaeMantis);
	//Bee
		addMorphButton(StatusAffects.UnlockedBeeAntennae, player.antennae, ANTENNAE_BEE, 3, "Bee", morphAntennaeBee);
	//Next
		addButtonDisabled(4, "Next", "");
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessGillPage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//None
		addMorphButton(StatusAffects.UnlockedNoGills, player.gillType, GILLS_NONE, 3, "None", morphGillNone);
	//Anemone
		addMorphButton(StatusAffects.UnlockedAnemoneGills, player.gillType, GILLS_ANEMONE, 3, "Anemone", morphGillAnemone);
	//Fish
		addMorphButton(StatusAffects.UnlockedFishGills, player.gillType, GILLS_FISH, 3, "Fish", morphGillFish);
	//Next
		addButtonDisabled(4, "Next", "");
	//TentacleLegs
		addMorphButton(StatusAffects.UnlockedTentacleLegGills, player.gillType, GILLS_IN_TENTACLE_LEGS, 3, "Tentacle Legs", morphGillTentacleLegs);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);	
	}
	
	private function accessArmPage1():void {
		menu();
	//Previous
		addButtonDisabled(4, "Next", "");
	//Human
		addMorphButton(StatusAffects.UnlockedHumanArms, player.armType, ARM_TYPE_HUMAN, 1, "Human", morphArmsHuman);
	//Harpy
		addMorphButton(StatusAffects.UnlockedHarpyArms, player.armType, ARM_TYPE_HARPY, 2, "Harpy", morphArmsHarpy);
	//Spider
		addMorphButton(StatusAffects.UnlockedSpiderArms, player.armType, ARM_TYPE_SPIDER, 3, "Spider", morphArmsSpider);
	//Next
		addButton(4, "Next", accessArmPage2);
	//Mantis
		addMorphButton(StatusAffects.UnlockedMantisArms, player.armType, ARM_TYPE_MANTIS, 5, "Mantis", morphArmsMantis);
	//Bee
		addMorphButton(StatusAffects.UnlockedBeeArms, player.armType, ARM_TYPE_BEE, 6, "Bee", morphArmsBee);
	//Salamander
		addMorphButton(StatusAffects.UnlockedSalamanderArms, player.armType, ARM_TYPE_SALAMANDER, 7, "Salamander", morphArmsSalamander);
	//Phoenix
		addMorphButton(StatusAffects.UnlockedPhoenixArms, player.armType, ARM_TYPE_PHOENIX, 8, "Phoenix", morphArmsPhoenix);
	//Plant
		addMorphButton(StatusAffects.UnlockedPlantArms, player.armType, ARM_TYPE_PLANT, 9, "Plant", morphArmsPlant);
	//Shark
		addMorphButton(StatusAffects.UnlockedSharkArms, player.armType, ARM_TYPE_SHARK, 10, "Shark", morphArmsShark);
	//Gargoyle
		addMorphButton(StatusAffects.UnlockedGargoyleArms, player.armType, ARM_TYPE_GARGOYLE, 11, "Gargoyle", morphArmsGargoyle);
	//Wolf
		addMorphButton(StatusAffects.UnlockedWolfArms, player.armType, ARM_TYPE_WOLF, 12, "Wolf", morphArmsWolf);
	//Lion
		addMorphButton(StatusAffects.UnlockedLionArms, player.armType, ARM_TYPE_LION, 13, "Lion", morphArmsLion);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessArmPage2():void {
		menu();
	//Previous
		addButton(0, "Next", accessArmPage1);
	//Kitsune
		addMorphButton(StatusAffects.UnlockedKitsuneArms, player.armType, ARM_TYPE_KITSUNE, 1, "Kitsune", morphArmsKitsune);
	//Fox
		addMorphButton(StatusAffects.UnlockedFoxArms, player.armType, ARM_TYPE_FOX, 2, "Fox", morphArmsFox);
	//Lizard
		addMorphButton(StatusAffects.UnlockedLizardArms, player.armType, ARM_TYPE_LIZARD, 3, "Lizard", morphArmsLizard);
	//Next
		addButtonDisabled(4, "Next", "");
	//Dragon
		addMorphButton(StatusAffects.UnlockedDragonArms, player.armType, ARM_TYPE_DRAGON, 5, "Dragon", morphArmsDragon);
	//Yeti
		addMorphButton(StatusAffects.UnlockedYetiArms, player.armType, ARM_TYPE_YETI, 6, "Yeti", morphArmsYeti);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessTailPage1():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//None
		addMorphButton(StatusAffects.UnlockedNoTail, player.tailType, TAIL_TYPE_NONE, 1, "None", morphTailNone);
	//Horse
		addMorphButton(StatusAffects.UnlockedHorseTail, player.tailType, TAIL_TYPE_HORSE, 2, "Horse", morphTailHorse);
	//Dog
		addMorphButton(StatusAffects.UnlockedDogTail, player.tailType, TAIL_TYPE_DOG, 3, "Dog", morphTailDog);
	//Next
		addButton(4, "Next", accessTailPage2);
	//Demon
		addMorphButton(StatusAffects.UnlockedDemonTail, player.tailType, TAIL_TYPE_DEMONIC, 5, "Demon", morphTailDemon);
	//Cow
		addMorphButton(StatusAffects.UnlockedCowMinoTail, player.tailType, TAIL_TYPE_COW, 6, "Cow-Mino", morphTailCowMino);
	//Spider
		addMorphButton(StatusAffects.UnlockedSpiderAbdomenTail, player.tailType, TAIL_TYPE_SPIDER_ADBOMEN, 7, "Spider Abdomen", morphTailSpiderAbdomen);
	//Bee
		addMorphButton(StatusAffects.UnlockedBeeAbdomenTail, player.tailType, TAIL_TYPE_BEE_ABDOMEN, 8, "Bee Abdomen", morphTailBeeAbdomen);
	//Shark
		addMorphButton(StatusAffects.UnlockedSharkTail, player.tailType, TAIL_TYPE_SHARK, 9, "Shark", morphTailShark);
	//Cat
		addMorphButton(StatusAffects.UnlockedCatTail, player.tailType, TAIL_TYPE_CAT, 10, "Cat", morphTailCat);
	//Lizard
		addMorphButton(StatusAffects.UnlockedLizardTail, player.tailType, TAIL_TYPE_LIZARD, 11, "Lizard", morphTailLizard);
	//Rabbit
		addMorphButton(StatusAffects.UnlockedRabbitTail, player.tailType, TAIL_TYPE_RABBIT, 12, "Rabbit", morphTailRabbit);
	//Harpy
		addMorphButton(StatusAffects.UnlockedHarpyTail, player.tailType, TAIL_TYPE_HARPY, 13, "Harpy", morphTailHarpy);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessTailPage2():void {
		menu();
	//Previous
		addButton(0, "Previous", accessTailPage1);
	//Kangaroo
		addMorphButton(StatusAffects.UnlockedKangarooTail, player.tailType, TAIL_TYPE_KANGAROO, 1, "Kangaroo", morphTailKangaroo);
	//Fox
		addMorphButton(StatusAffects.UnlockedFoxTail, player.tailType, TAIL_TYPE_FOX, 2, "Fox", morphTailFox);
	//Dragon
		addMorphButton(StatusAffects.UnlockedDragonTail, player.tailType, TAIL_TYPE_DRACONIC, 3, "Dragon", morphTailDragon);
	//Next
		addButton(4, "Next", accessTailPage3);
	//Raccoon
		addMorphButton(StatusAffects.UnlockedRaccoonTail, player.tailType, TAIL_TYPE_RACCOON, 6, "Raccoon", morphTailRaccoon);
	//Mouse
		addMorphButton(StatusAffects.UnlockedMouseTail, player.tailType, TAIL_TYPE_MOUSE, 6, "Mouse", morphTailMouse);
	//Ferret
		addMorphButton(StatusAffects.UnlockedFerretTail, player.tailType, TAIL_TYPE_FERRET, 7, "Ferret", morphTailFerret);
	//Behemoth
		addMorphButton(StatusAffects.UnlockedBehemothTail, player.tailType, TAIL_TYPE_BEHEMOTH, 8, "Behemoth", morphTailBehemoth);
	//Pig
		addMorphButton(StatusAffects.UnlockedPigTail, player.tailType, TAIL_TYPE_PIG, 9, "Pig", morphTailPig);
	//Scorpion
		addMorphButton(StatusAffects.UnlockedScorpionTail, player.tailType, TAIL_TYPE_SCORPION, 10, "Scorpion", morphTailScorpion);
	//Goat
		addMorphButton(StatusAffects.UnlockedGoatTail, player.tailType, TAIL_TYPE_GOAT, 11, "Goat", morphTailGoat);
	//Rhino
		addMorphButton(StatusAffects.UnlockedRhinoTail, player.tailType, TAIL_TYPE_RHINO, 12, "Rhino", morphTailRhino);
	//Echidna
		addMorphButton(StatusAffects.UnlockedEchidnaTail, player.tailType, TAIL_TYPE_ECHIDNA, 13, "Echidna", morphTailEchidna);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessTailPage3():void {
		menu();
	//Previous
		addButton(0, "Previous", accessTailPage2);
	//Deer
		addMorphButton(StatusAffects.UnlockedDeerTail, player.tailType, TAIL_TYPE_DEER, 1, "Deer", morphTailDeer);
	//Salamander
		addMorphButton(StatusAffects.UnlockedSalamanderTail, player.tailType, TAIL_TYPE_SALAMANDER, 2, "Salamander", morphTailSalamander);
	//Kitshoo NYI
//		addMorphButton(StatusAffects.UnlockedKitshooTail, player.tailType, TAIL_TYPE_KITSHOO, 3, "Kitshoo", morphFeatherHair);
	//Next
		addButtonDisabled(4, "Next", "");
	//Mantis
		addMorphButton(StatusAffects.UnlockedMantisAbdomenTail, player.tailType, TAIL_TYPE_MANTIS_ABDOMEN, 5, "Mantis", morphTailMantisAbdomen);
	//Manticore
		addMorphButton(StatusAffects.UnlockedManticoreTail, player.tailType, TAIL_TYPE_MANTICORE_PUSSYTAIL, 6, "Manticore", morphTailManticore);
	//Wolf
		addMorphButton(StatusAffects.UnlockedWolfTail, player.tailType, TAIL_TYPE_WOLF, 7, "Wolf", morphTailWolf);
	//Gargoyle
		addMorphButton(StatusAffects.UnlockedGargoyleTail, player.tailType, TAIL_TYPE_GARGOYLE, 8, "Gargoyle", morphTailGargoyle);
	//Kitsune
		addMorphButton(StatusAffects.UnlockedKitsuneTail1, player.tailType, TAIL_TYPE_FOX, 9, "Kitsune", accessKitsuneTailPage);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessKitsuneTailPage():void {
	//Previous
		addButtonDisabled(0, "Previous", "");
	//Next
		addButtonDisabled(4, "Next", "");
	//Everything else
		addMorphTailKitsuneNumberButton();
	//Return
		addButton(14, "Back", accessTailPage3);	
	}
	
	private function accessWingPage1():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//None
		addMorphButton(StatusAffects.UnlockedNoWings, player.wingType, WING_TYPE_NONE, 1, "None", morphWingsNone);
	//BeeSmall
		addMorphButton(StatusAffects.UnlockedBeeSmallWings, player.wingType, WING_TYPE_BEE_LIKE_SMALL, 2, "Bee Small", morphWingsBeeSmall);
	//BeeLarge
		addMorphButton(StatusAffects.UnlockedBeeLargeWings, player.wingType, WING_TYPE_BEE_LIKE_LARGE, 3, "Bee Large", morphWingsBeeLarge);
	//Next
		addButton(4, "Next", accessWingPage2);
	//DemonSmall
		addMorphButton(StatusAffects.UnlockedDemonSmallWings, player.wingType, WING_TYPE_BAT_LIKE_TINY, 5, "Demon Small", morphWingsDemonSmall);
	//DemonLarge
		addMorphButton(StatusAffects.UnlockedDemonLargeWings, player.wingType, WING_TYPE_BAT_LIKE_LARGE, 6, "Demon Large", morphWingsDemonLarge);
	//DemonLargeX2
		addMorphButton(StatusAffects.UnlockedDemonLargeWingsX2, player.wingType, WING_TYPE_BAT_LIKE_LARGE_2, 7, "Demon Large 2", morphWingsDemonLargeX2);
	//Feathered
		addMorphButton(StatusAffects.UnlockedFeatheredLargeWings, player.wingType, WING_TYPE_FEATHERED_LARGE, 8, "Feathered", morphWingsFeathered);
	//DragonSmall
		addMorphButton(StatusAffects.UnlockedDragonSmallWings, player.wingType, WING_TYPE_DRACONIC_SMALL, 9, "Dragon Small", morphWingsDragonSmall);
	//DragonLarge
		addMorphButton(StatusAffects.UnlockedDragonLargeWings, player.wingType, WING_TYPE_DRACONIC_LARGE, 10, "Dragon Large", morphWingsDragonLarge);
	//DragonHuge
		addMorphButton(StatusAffects.UnlockedDragonHugeWings, player.wingType, WING_TYPE_DRACONIC_HUGE, 11, "Dragon Huge", morphWingsDragonHuge);
	//Dragonfly
		addMorphButton(StatusAffects.UnlockedDragonflyWings, player.wingType, WING_TYPE_GIANT_DRAGONFLY, 12, "Dragonfly", morphWingsDragonfly);
	//Phoenix
		addMorphButton(StatusAffects.UnlockedPhoenixWings, player.wingType, WING_TYPE_FEATHERED_PHOENIX, 13, "Phoenix", morphWingsPhoenix);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}
	
	private function accessWingPage2():void {
		menu();
	//Previous
		addButton(0, "Previous", accessWingPage1);
	//Alicorn
		addMorphButton(StatusAffects.UnlockedAlicornWings, player.wingType, WING_TYPE_FEATHERED_ALICORN, 1, "Alicorn", morphWingsAlicorn);
	//MantisSmall
		addMorphButton(StatusAffects.UnlockedMantisSmallWings, player.wingType, WING_TYPE_MANTIS_LIKE_SMALL, 2, "Mantis Small", morphWingsMantisSmall);
	//MantisLarge
		addMorphButton(StatusAffects.UnlockedMantisLargeWings, player.wingType, WING_TYPE_MANTIS_LIKE_LARGE, 3, "Mantis Large", morphWingsMantisLarge);
	//Next
		addButtonDisabled(4, "Next", "");
	//MantisLarge2 NYI
//		addMorphButton(StatusAffects.UnlockedMantisHugeWings, player.wingType, WING_TYPE_MANTIS_LIKE_LARGE_2, 3, "Bee Large", morphWingsma);
	//Gargoyle
		addMorphButton(StatusAffects.UnlockedGargoyleLargeWings, player.wingType, WING_TYPE_GARGOYLE_LIKE_LARGE, 4, "Gargoyle", morphWingsGargoyle);
	//Plant
		addMorphButton(StatusAffects.UnlockedPlantWings, player.wingType, WING_TYPE_PLANT, 5, "Plant", morphWingsPlant);
	//ManticoreSmall
		addMorphButton(StatusAffects.UnlockedManticoreSmallWings, player.wingType, WING_TYPE_MANTICORE_LIKE_SMALL, 6, "ManticoreSmall", morphWingsManticoreSmall);
	//ManticoreLarge
		addMorphButton(StatusAffects.UnlockedManticoreLargeWings, player.wingType, WING_TYPE_MANTICORE_LIKE_LARGE, 7, "ManticoreLarge", morphWingsManticoreLarge);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage1);		
	}	
	
//page 2	
	private function accessLowerBodyPage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//Human
		addMorphButton(StatusAffects.UnlockedHumanLowerBody, player.lowerBody, LOWER_BODY_TYPE_HUMAN, 1, "Human", morphLowerBodyHuman);
	//Hoofed
		addMorphButton(StatusAffects.UnlockedHoofedLowerBody, player.lowerBody, LOWER_BODY_TYPE_HOOFED, 2, "Hoofed", morphLowerBodyHoofed);
	//Dog
		addMorphButton(StatusAffects.UnlockedDogLowerBody, player.lowerBody, LOWER_BODY_TYPE_DOG, 3, "Dog", morphLowerBodyDog);
	//Next
		addButton(4, "Next", accessLowerBodyPage2);
	//Naga
		addMorphButton(StatusAffects.UnlockedNagaLowerBody, player.lowerBody, LOWER_BODY_TYPE_NAGA, 5, "Naga", morphLowerBodyNaga);
	//DemonHighHeels
		addMorphButton(StatusAffects.UnlockedDemonHighHeelsLowerBody, player.lowerBody, LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS, 6, "D. HighHeels", morphLowerBodyDemonHighHeels);
	//DemonClaws
		addMorphButton(StatusAffects.UnlockedDemonClawsLowerBody, player.lowerBody, LOWER_BODY_TYPE_DEMONIC_CLAWS, 7, "D. Claws", morphLowerBodyDemonClaws);
	//Bee
		addMorphButton(StatusAffects.UnlockedBeeLowerBody, player.lowerBody, LOWER_BODY_TYPE_BEE, 8, "Bee", morphLowerBodyBee);
	//Goo
		addMorphButton(StatusAffects.UnlockedGargoyleLowerBody, player.lowerBody, LOWER_BODY_TYPE_GOO, 9, "Goo", morphLowerBodyGoo);
	//Cat
		addMorphButton(StatusAffects.UnlockedCatLowerBody, player.lowerBody, LOWER_BODY_TYPE_CAT, 10, "Cat", morphLowerBodyCat);
	//Lizard
		addMorphButton(StatusAffects.UnlockedLizardLowerBody, player.lowerBody, LOWER_BODY_TYPE_LIZARD, 11, "Lizard", morphLowerBodyLizard);
	//Pony
		addMorphButton(StatusAffects.UnlockedPonyLowerBody, player.lowerBody, LOWER_BODY_TYPE_PONY, 12, "Pony", morphLowerBodyPony);
	//Bunny
		addMorphButton(StatusAffects.UnlockedBunnyLowerBody, player.lowerBody, LOWER_BODY_TYPE_BUNNY, 13, "Bunny", morphLowerBodyBunny);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);		
	}	
	
	private function accessLowerBodyPage2():void {
		menu();
	//Previous
		addButton(0, "Previous", accessLowerBodyPage);
	//Harpy
		addMorphButton(StatusAffects.UnlockedHarpyLowerBody, player.lowerBody, LOWER_BODY_TYPE_HARPY, 1, "Harpy", morphLowerBodyHarpy);
	//Kangaroo
		addMorphButton(StatusAffects.UnlockedKangarooLowerBody, player.lowerBody, LOWER_BODY_TYPE_KANGAROO, 2, "Kangaroo", morphLowerBodyKangaroo);
	//Spider
		addMorphButton(StatusAffects.UnlockedSpiderLowerBody, player.lowerBody, LOWER_BODY_TYPE_CHITINOUS_SPIDER_LEGS, 3, "Spider", morphLowerBodySpider);
	//Next
		addButton(4, "Next", accessLowerBodyPage3);
	//Drider
		addMorphButton(StatusAffects.UnlockedDriderLowerBody, player.lowerBody, LOWER_BODY_TYPE_DRIDER_LOWER_BODY, 5, "Drider", morphLowerBodyDrider);
	//Fox
		addMorphButton(StatusAffects.UnlockedFoxLowerBody, player.lowerBody, LOWER_BODY_TYPE_FOX, 6, "Fox", morphLowerBodyFox);
	//Dragon
		addMorphButton(StatusAffects.UnlockedDragonLowerBody, player.lowerBody, LOWER_BODY_TYPE_DRAGON, 7, "Dragon", morphLowerBodyDragon);
	//Raccoon
		addMorphButton(StatusAffects.UnlockedRaccoonLowerBody, player.lowerBody, LOWER_BODY_TYPE_RACCOON, 8, "Raccoon", morphLowerBodyRaccoon);
	//Ferret
		addMorphButton(StatusAffects.UnlockedFerretLowerBody, player.lowerBody, LOWER_BODY_TYPE_FERRET, 9, "Ferret", morphLowerBodyFerret);
	//ClovenHoofed
		addMorphButton(StatusAffects.UnlockedClovenHoofedLowerBody, player.lowerBody, LOWER_BODY_TYPE_CLOVEN_HOOFED, 10, "ClovenHoofed", morphLowerBodyClovenHoofed);
	//Echidna
		addMorphButton(StatusAffects.UnlockedEchidnaLowerBody, player.lowerBody, LOWER_BODY_TYPE_ECHIDNA, 11, "Echidna", morphLowerBodyEchidna);
	//Salamander
		addMorphButton(StatusAffects.UnlockedSalamanderLowerBody, player.lowerBody, LOWER_BODY_TYPE_SALAMANDER, 12, "Salamander", morphLowerBodySalamander);
	//Scylla
		addMorphButton(StatusAffects.UnlockedScyllaLowerBody, player.lowerBody, LOWER_BODY_TYPE_SCYLLA, 13, "Scylla", morphLowerBodyScylla);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);		
	}
	
	private function accessLowerBodyPage3():void {
		menu();
	//Previous
		addButton(0, "Previous", accessLowerBodyPage2);
	//Mantis
		addMorphButton(StatusAffects.UnlockedMantisLowerBody, player.lowerBody, LOWER_BODY_TYPE_MANTIS, 1, "Mantis", morphLowerBodyMantis);
	//Shark
		addMorphButton(StatusAffects.UnlockedSharkLowerBody, player.lowerBody, LOWER_BODY_TYPE_SHARK, 2, "Shark", morphLowerBodyShark);
	//Gargoyle
		addMorphButton(StatusAffects.UnlockedGargoyleLowerBody, player.lowerBody, LOWER_BODY_TYPE_GARGOYLE, 3, "Gargoyle", morphLowerBodyGargoyle);
	//Next
		addButtonDisabled(4, "Next", "");
	//PlantHighHeels
		addMorphButton(StatusAffects.UnlockedPlantHighHeelsLowerBody, player.lowerBody, LOWER_BODY_TYPE_PLANT_HIGH_HEELS, 5, "P. HighHeels", morphLowerBodyPlantHighHeels);
	//PlantClaws
		addMorphButton(StatusAffects.UnlockedPlantRootClawsLowerBody, player.lowerBody, LOWER_BODY_TYPE_PLANT_ROOT_CLAWS, 6, "P. Claws", morphLowerBodyPlantClaws);
	//PlantFlower
		addMorphButton(StatusAffects.UnlockedPlantFlowerLowerBody, player.lowerBody, LOWER_BODY_TYPE_PLANT_FLOWER, 7, "P. Flower", morphLowerBodyPlantFlower);
	//Wolf
		addMorphButton(StatusAffects.UnlockedWolfLowerBody, player.lowerBody, LOWER_BODY_TYPE_WOLF, 8, "Wolf", morphLowerBodyWolf);
	//Lion
		addMorphButton(StatusAffects.UnlockedLionLowerBody, player.lowerBody, LOWER_BODY_TYPE_LION, 9, "Lion", morphLowerBodyLion);
	//Yeti
		addMorphButton(StatusAffects.UnlockedYetiLowerBody, player.lowerBody, LOWER_BODY_TYPE_YETI, 10, "Yeti", morphLowerBodyYeti);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);		
	}
	
	private function accessRearBodyPage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//None
		addMorphButton(StatusAffects.UnlockedNoRearBody, player.rearBody, REAR_BODY_NONE, 1, "None", morphRearBodyNone);
	//DragonMane
		addMorphButton(StatusAffects.UnlockedDragonManeRearBody, player.rearBody, REAR_BODY_DRACONIC_MANE, 2, "Dragon Mane", morphRearBodyDragonMane);
	//DragonSpikes
		addMorphButton(StatusAffects.UnlockedDragonSpikesRearBody, player.rearBody, REAR_BODY_DRACONIC_SPIKES, 3, "Dragon Spikes", morphRearBodyDragonSpikes);
	//Next
		addButtonDisabled(4, "Next", "");
	//FenrirIceSpikes
		addMorphButton(StatusAffects.UnlockedFenrirIceSpikesRearBody, player.rearBody, REAR_BODY_FENRIR_ICE_SPIKES, 5, "Ice Spikes", morphRearBodyFenrirIceSpikes);
	//LionMane
		addMorphButton(StatusAffects.UnlockedLionManeRearBody, player.rearBody, REAR_BODY_LION_MANE, 6, "Lion Mane", morphRearBodyLionMane);
	//Behemoth
		addMorphButton(StatusAffects.UnlockedBehemothRearBody, player.rearBody, REAR_BODY_BEHEMOTH, 7, "Behemoth", morphRearBodyBehemoth);
	//SharkFin
		addMorphButton(StatusAffects.UnlockedSharkFinRearBody, player.rearBody, REAR_BODY_SHARK_FIN, 8, "Shark Fin", morphRearBodySharkFin);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);
	}
	
	private function accessVaginaPage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//Human
		addMorphVaginaButton(StatusAffects.UnlockedHumanVagina, VAGINA_TYPE_HUMAN, 1, "Human", morphVaginaHuman);
	//Horse
		addMorphVaginaButton(StatusAffects.UnlockedHorseVagina, VAGINA_TYPE_EQUINE, 2, "Horse", morphVaginaHorse);
	//SantTrap
		addMorphVaginaButton(StatusAffects.UnlockedSandTrapVagina, VAGINA_TYPE_BLACK_SAND_TRAP, 3, "Sand Trap", morphVaginaSandTrap);
	//Next
		addButtonDisabled(4, "Next", "");
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);
	}

	private function accessCockNumberPage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//Next
		addButtonDisabled(4, "Next", "");
	//Everything else
		addMorphCockNumberButton();
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);		
	}
	
	private function accessCockTypePage1(number:Number):void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");
	//Human
		addMorphCockTypeButton(StatusAffects.UnlockedHumanCock, number, CockTypesEnum.HUMAN, 1, "Human", morphCockHuman);
	//Horse
		addMorphCockTypeButton(StatusAffects.UnlockedHorseCock, number, CockTypesEnum.HORSE, 2, "Horse", morphCockHorse);
	//Dog
		addMorphCockTypeButton(StatusAffects.UnlockedDogCock, number, CockTypesEnum.DOG, 3, "Dog", morphCockDog);
	//Next
		addButton(4, "Next", curry(accessCockTypePage2, number));
	//Demon
		addMorphCockTypeButton(StatusAffects.UnlockedDemonCock, number, CockTypesEnum.DEMON, 4, "Demon", morphCockDemon);
	//Tentacle
		addMorphCockTypeButton(StatusAffects.UnlockedTentacleCock, number, CockTypesEnum.TENTACLE, 5, "Tentacle", morphCockTentacle);
	//Cat
		addMorphCockTypeButton(StatusAffects.UnlockedCatCock, number, CockTypesEnum.CAT, 6, "Cat", morphCockCat);
	//Lizard/Naga
		addMorphCockTypeButton(StatusAffects.UnlockedLizardCock, number, CockTypesEnum.LIZARD, 7, "Lizard", morphCockLizard);
	//Anemone
		addMorphCockTypeButton(StatusAffects.UnlockedAnemoneCock, number, CockTypesEnum.ANEMONE, 8, "Anemone", morphCockAnemone);
	//Kangaroo
		addMorphCockTypeButton(StatusAffects.UnlockedKangarooCock, number, CockTypesEnum.KANGAROO, 9, "Kangaroo", morphCockKangaroo);
	//Dragon
		addMorphCockTypeButton(StatusAffects.UnlockedDragonCock, number, CockTypesEnum.DRAGON, 10, "Dragon", morphCockDragon);
	//Displacer
		addMorphCockTypeButton(StatusAffects.UnlockedDisplacerCock, number, CockTypesEnum.DISPLACER, 11, "Displacer", morphCockDisplacer);
	//Fox
		addMorphCockTypeButton(StatusAffects.UnlockedFoxCock, number, CockTypesEnum.FOX, 12, "Fox", morphCockFox);
	//Bee
		addMorphCockTypeButton(StatusAffects.UnlockedBeeCock, number, CockTypesEnum.BEE, 13, "Bee", morphCockBee);
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);			
	}
	
	private function accessCockTypePage2(number:Number):void {
	//Previous
		addButton(0, "Previous", curry(accessCockTypePage1,number));
	//Pig
		addMorphCockTypeButton(StatusAffects.UnlockedBeeCock, number, CockTypesEnum.PIG, 1, "Pig", morphCockPig);
	//Avian
		addMorphCockTypeButton(StatusAffects.UnlockedAvianCock, number, CockTypesEnum.AVIAN, 2, "Avian", morphCockAvian);
	//Rhino
		addMorphCockTypeButton(StatusAffects.UnlockedRhinoCock, number, CockTypesEnum.RHINO, 3, "Rhino", morphCockRhino);
	//Next
		addButtonDisabled(4, "Next", "");
	//Echidna
		addMorphCockTypeButton(StatusAffects.UnlockedEchidnaCock, number, CockTypesEnum.ECHIDNA, 5, "Echidna", morphCockEchidna);
	//Wolf
		addMorphCockTypeButton(StatusAffects.UnlockedWolfCock, number, CockTypesEnum.WOLF, 6, "Wolf", morphCockWolf);
	//Return
		addButton(14, "Back", curry(accessMetamorphMenuPage2,number));	
	}
// TRUEASDFMAN TODO
	private function accessMiscPage():void {
		menu();
	//Previous
		addButtonDisabled(0, "Previous", "");	
	//Next
		addButtonDisabled(4, "Next", "");
	//Return
		addButton(14, "Back", accessMetamorphMenuPage2);		
	}
	
	private function addMorphButton(affect:StatusAffectType, type:Number, style:Number, pos:int, desc:String, func:Function): void {
		if (player.findStatusAffect(affect) >= 0 && type != style) addButton(pos, desc, func);
		else if (player.findStatusAffect(affect) >= 0 && type == style && style == TAIL_TYPE_FOX) addButton(pos, desc, func);
		else if (player.findStatusAffect(affect) >= 0 && type == style && style != TAIL_TYPE_FOX) addButtonDisabled(pos, desc, "You already have this.");
		else addButtonDisabled(pos, "???", "You have not unlocked this metamorphosis.");	
	}
		
//{Region Hair Morphs	
	private function morphHair(to: String):void {
		to = to.toLowerCase();
		switch(to){
		//human hair
			case "human":
				switch(player.hairType){
					case HAIR_FEATHER:
					//long hair	
						if (player.hairLength >= 6) outputText("\n\nA lock of your downy-soft feather-hair droops over your eye.  Before you can blow the offending down away, you realize the feather is collapsing in on itself.  It continues to curl inward until all that remains is a normal strand of hair.  <b>Your hair is no longer feathery!</b>", false);
					//short hair
						else outputText("\n\nYou run your fingers through your downy-soft feather-hair while you await the effects of the item you just ingested.  While your hand is up there, it detects a change in the texture of your feathers.  They're completely disappearing, merging down into strands of regular hair.  <b>Your hair is no longer feathery!</b>", false);
					break;
					case HAIR_GOO:
						outputText("\n\nYour gooey hair begins to fall out in globs, eventually leaving you with a bald head.  Your head is not left bald for long, though.  Within moments, a full head of hair sprouts from the skin of your scalp.  <b>Your hair is normal again!</b>");						
					break;
					case HAIR_ANEMONE:
						outputText("\n\nYou feel something strange going in on your head. You reach your hands up to feel your tentacle-hair, only to find out that the tentacles have vanished and replaced with normal hair.  <b>Your hair is normal again!</b>");	
					break;
					case HAIR_LEAF:
					//long hair
						if (player.hairLength >= 6) outputText("\n\nA lock of your leaf-hair droops over your eye.  Before you can blow the offending down away, you realize the leaf is changing until all that remains is a normal strand of hair.  <b>Your hair is no longer leaf-like!</b>", false);
					//short hair
						else outputText("\n\nYou run your fingers through your leaf-hair while you await the effects of the item you just ingested.  While your hand is up there, it detects a change in the texture of your leafs.  They're completely disappearing, merging down into strands of regular hair.  <b>Your hair is no longer leaf-like!</b>", false);						
					break;
					case HAIR_GHOST:
					//TODO	
					break;
					case HAIR_QUILL:
					//TODO	
					break;
					case HAIR_GORGON:
					//TODO	
					break;
					case HAIR_FLUFFY:
					//TODO	
					break;
					default:
					outputText("\n\nA lock of your downy-soft feather-hair droops over your eye.  Before you can blow the offending down away, you realize the feather is collapsing in on itself.  It continues to curl inward until all that remains is a normal strand of hair.  <b>Your hair is no longer feathery!</b>", false);
					break;
				}				
				player.hairType = HAIR_NORMAL;
			break;
		//Feather Hair
			case "feather":
				switch(player.hairType){
					case HAIR_NORMAL:
						outputText("\n\nA tingling starts in your scalp, getting worse and worse until you're itching like mad, the feathery strands of your hair tickling your fingertips while you scratch like a dog itching a flea. When you pull back your hand, you're treated to the sight of downy fluff trailing from your fingernails. A realization dawns on you - you have feathers for hair, just like a harpy!", false);
					break;
					case HAIR_ANEMONE:
						outputText("\n\nYour head begins to feel heavier.  Reaching up, you notice your tentacles becoming soft and somewhat fibrous.  Pulling one down reveals that it feels soft and fluffy, almost feathery; you watch as it dissolves into many thin, feathery strands.  <b>Your hair is now like that of a harpy!</b>", false);
					break;
					case HAIR_GOO:	
					//TODO
					break;
					case HAIR_LEAF:
					//TODO				
					break;
					case HAIR_GHOST:
					//TODO
					break;
					case HAIR_QUILL:
					//TDO
						break;
					case HAIR_GORGON:
					//TODO
					break;
					case HAIR_FLUFFY:
					//TODO
					break;
					default:
						outputText("\n\nA tingling starts in your scalp, getting worse and worse until you're itching like mad, the feathery strands of your hair tickling your fingertips while you scratch like a dog itching a flea. When you pull back your hand, you're treated to the sight of downy fluff trailing from your fingernails. A realization dawns on you - you have feathers for hair, just like a harpy!", false);
					break;
				}
				player.hairType = HAIR_FEATHER;
			break;
		//Ghost Hair
			case "ghost":
				switch(player.hairType){
					case HAIR_NORMAL:
						outputText("\n\nA sensation of weightlessness assaults your scalp. You reach up and grab a handful of hair, confused. Your perplexion only heightens when you actually feel the follicles becoming lighter in your grasp, before you can hardly tell you're holding anything.  Plucking a strand, you hold it up before you, surprised to see... it's completely transparent!  <b>You have transparent hair!</b>", false);
					break;
					case HAIR_GOO:
					//TODO			
					break;
					case HAIR_ANEMONE:
					//TODO	
					break;
					case HAIR_LEAF:
					//TODO				
					break;
					case HAIR_FEATHER:
					//TODO
					break;
					case HAIR_QUILL:
					//TODO
					break;
					case HAIR_GORGON:
					//TODO
					break;
					case HAIR_FLUFFY:
					//TODO
					break;
					default:
						outputText("\n\nA sensation of weightlessness assaults your scalp. You reach up and grab a handful of hair, confused. Your perplexion only heightens when you actually feel the follicles becoming lighter in your grasp, before you can hardly tell you're holding anything.  Plucking a strand, you hold it up before you, surprised to see... it's completely transparent!  <b>You have transparent hair!</b>", false);
					break;
				}				
				player.hairType = HAIR_GHOST;
			break;
		//Goo Hair
			case "goo":
				switch(player.hairType){
					case HAIR_NORMAL:
				player.hairType = HAIR_GOO;
				//if bald
				if (player.hairLength <= 0) {
					outputText("\n\nYour head buzzes pleasantly, feeling suddenly hot and wet.  You instinctively reach up to feel the source of your wetness, and discover you've grown some kind of gooey hair.  From time to time it drips, running down your back to the crack of your " + buttDescript() + ".", false);
					player.hairLength = 5;
				}
				else {
					//if hair isnt rubbery or latexy
					if (player.hairColor.indexOf("rubbery") == -1 && player.hairColor.indexOf("latex-textured") == -1) {
						outputText("\n\nYour head buzzes pleasantly, feeling suddenly hot and wet.  You instinctively reach up to feel the source of your wetness, and discover your hair has become a slippery, gooey mess.  From time to time it drips, running down your back to the crack of your " + buttDescript() + ".", false);
					}
					//Latexy stuff
					else {
						outputText("\n\nYour oddly inorganic hair shifts, becoming partly molten as rivulets of liquid material roll down your back.  How strange.", false);
					}
				}
				if (player.hairColor != "green" && player.hairColor != "purple" && player.hairColor != "blue" && player.hairColor != "cerulean" && player.hairColor != "emerald") {
					outputText("  Stranger still, the hue of your semi-liquid hair changes to ");
					var newColor:int = rand(10);
					if (newColor <= 2) player.hairColor = "green";
					else if (newColor <= 4) player.hairColor = "purple";
					else if (newColor <= 6) player.hairColor = "blue";
					else if (newColor <= 8) player.hairColor = "cerulean";
					else player.hairColor = "emerald";
					outputText(player.hairColor + ".");
				}
					break;
					case HAIR_FEATHER:
					//TODO
					break;
					case HAIR_ANEMONE:	
					//TODO
					break;
					case HAIR_LEAF:	
					//TODO			
					break;
					case HAIR_GHOST:
					//TODO
					break;
					case HAIR_QUILL:
					//TODO
					break;
					case HAIR_GORGON:
					//TODO
					break;
					case HAIR_FLUFFY:
					//TODO
					break;
					default:
						if (player.hairLength <= 0) {
							outputText("\n\nYour head buzzes pleasantly, feeling suddenly hot and wet.  You instinctively reach up to feel the source of your wetness, and discover you've grown some kind of gooey hair.  From time to time it drips, running down your back to the crack of your " + buttDescript() + ".", false);
							player.hairLength = 5;
						}
						if (player.hairColor != "green" && player.hairColor != "purple" && player.hairColor != "blue" && player.hairColor != "cerulean" && player.hairColor != "emerald") {
							outputText("  Stranger still, the hue of your semi-liquid hair changes to ");
							var newColorTemp:int = rand(10);
							if (newColorTemp <= 2) player.hairColor = "green";
							else if (newColorTemp <= 4) player.hairColor = "purple";
							else if (newColorTemp <= 6) player.hairColor = "blue";
							else if (newColorTemp <= 8) player.hairColor = "cerulean";
							else player.hairColor = "emerald";
							outputText(player.hairColor + ".");
						}
					break;
				}
				player.hairType = HAIR_GOO;
			break;
		//Anemone Hair
			case "anemone":
				switch(player.hairType){
					case HAIR_NORMAL:
						outputText("\n\nYour balance slides way off, and you plop down on the ground as mass concentrates on your head.  Reaching up, you give a little shriek as you feel a disturbingly thick, squirming thing where your hair should be.  Pulling it down in front of your eyes, you notice it's still attached to your head; what's more, it's the same color as your hair used to be.  <b>You now have squirming tentacles in place of hair!</b>  As you gaze at it, a gentle heat starts to suffuse your hand.  The tentacles must be developing their characteristic stingers!  You quickly let go; you'll have to take care to keep them from rubbing on your skin at all hours.  On the other hand, they're quite short and you find you can now flex and extend them as you would any other muscle, so that shouldn't be too hard.  You settle on a daring, windswept look for now.", false);
					break;
					case HAIR_GOO:
					//TODO
					break;
					case HAIR_FEATHER:	
					//TODO
					break;
					case HAIR_LEAF:	
					//TODO			
					break;
					case HAIR_GHOST:
					//TODO
					break;
					case HAIR_QUILL:
					//TODO
					break;
					case HAIR_GORGON:
					//TODO
					break;
					case HAIR_FLUFFY:
					//TODO
					break;
					default:
						outputText("\n\nYour balance slides way off, and you plop down on the ground as mass concentrates on your head.  Reaching up, you give a little shriek as you feel a disturbingly thick, squirming thing where your hair should be.  Pulling it down in front of your eyes, you notice it's still attached to your head; what's more, it's the same color as your hair used to be.  <b>You now have squirming tentacles in place of hair!</b>  As you gaze at it, a gentle heat starts to suffuse your hand.  The tentacles must be developing their characteristic stingers!  You quickly let go; you'll have to take care to keep them from rubbing on your skin at all hours.  On the other hand, they're quite short and you find you can now flex and extend them as you would any other muscle, so that shouldn't be too hard.  You settle on a daring, windswept look for now.", false);
					break;
				}
				
				player.hairType = HAIR_ANEMONE;
			break;
		//Quill Hair
			case "quill":
				switch(player.hairType){
					case HAIR_NORMAL:
						outputText("\n\nYour scalp begins to tingle as your hair falls out in clumps, leaving you with a bald head. You aren’t bald for long, though. An uncomfortable pressure racks the entirety of your scalp as hard quills begin to sprout from your hair pores. Their growth stops as they reach shoulder length. <b>You now have quills in place of your hair!</b>");
					break;
					case HAIR_GOO:
					//TODO
					break;
					case HAIR_ANEMONE:
					//TODO	
					break;
					case HAIR_LEAF:		
					//TODO		
					break;
					case HAIR_GHOST:
					//TODO
					break;
					case HAIR_FEATHER:
					//TODO
					break;
					case HAIR_GORGON:
					//TODO
					break;
					case HAIR_FLUFFY:
					//TODO
					break;
					default:
						outputText("\n\nYour scalp begins to tingle as your hair falls out in clumps, leaving you with a bald head. You aren’t bald for long, though. An uncomfortable pressure racks the entirety of your scalp as hard quills begin to sprout from your hair pores. Their growth stops as they reach shoulder length. <b>You now have quills in place of your hair!</b>");
					break;
				}
				
				player.hairType = HAIR_QUILL;
			break;
		//Gorgon Hair
			case "gorgon":
				switch(player.hairType){
					case HAIR_NORMAL:
						if (player.hairLength == 0)
							outputText("\n\nAt first nothing happening. Then you start to feel tingling at your head scalp.  You run your fingers over head you feel small numbs fast growning up forming something akin to dull spikes.  After brief pause those nubs starts to slowly grown and covered gradualy with....sclaes?", false);
						else {
							outputText("\n\nYou run your fingers through your " + hairDescript() + " while you await the effects of the item you just ingested.  While your hand is up there, it detects a change in the texture of your hair.  They're completely changing becoming more thick and slowly covered with delicate....scales?", false);
						if (player.hairLength < 6)
							outputText("  Additionaly they seem to lenghten.", false);
						}
						outputText(" What even more worrisome seems at the ends of each strands form something that is similar to very small snake head.  Taking one of your hair 'strands' confirm your suspicions.  Your hair turned into bunch of tiny snakes similary to those possesed normaly by gorgons.  <b>Your hair turned into thin snakes replacing your current hair!</b>", false);
						if (player.hairLength < 6) player.hairLength = 6;
					break;
					case HAIR_GOO:
					//TODO
					break;
					case HAIR_ANEMONE:
					//TODO	
					break;
					case HAIR_LEAF:	
					//TODO			
					break;
					case HAIR_GHOST:
					//TODO
					break;
					case HAIR_QUILL:
					//TODO
					break;
					case HAIR_FEATHER:
					//TODO
					break;
					case HAIR_FLUFFY:
					//TODO
					break;
					default:
						outputText("You feel a light scratch on your head. At first you don't pay it any attention, only when you suddenly feel your hair moving, do you reach up. And quickling withdraw your hand. Slowly reaching up again, you carefully examine what once was you hair. In it's place are now thin, short strands of... scaleytails, for lack of a better word. And they aren't thin, nor short, at least not for long. After only a few seconds they are long enough to reach infront of your face and almost twice as thick as your thumb. Taking a close look at the once obscuring your view you once again recoil in shock, when the tips suddenly split, reavling sharp teeth. At the same time two eyes open above them, blinking slowly. These aren't tails, you realize, but snakes! It takes you some time to come to terms with the fact that <b>you now have Gorgon Hair</b>!");
					break;
				}
				
				player.hairType = HAIR_GORGON;
			break;
		//Leaf Hair
			case "leaf":
				switch(player.hairType){
					case HAIR_NORMAL:
						outputText("\n\nYour " + hairDescript() + " begins to fall out in globs, eventually leaving you with a bald head.  Your head is not left bald for long, though.  Within moments, a full head of leaf sprouts from the skin of your scalp.  You run your hands through your new growth, sighing at the pleasure of being able to feel each individual leaf.  <b>Your hair turned into thin leafs replacing your current hair!</b>");
					break;
					case HAIR_GOO:
					//TODO
					break;
					case HAIR_ANEMONE:	
					//TODO
					break;
					case HAIR_FEATHER:
					//TODO				
					break;
					case HAIR_GHOST:
					//TODO
					break;
					case HAIR_QUILL:
					//TODO
					break;
					case HAIR_GORGON:
					//TODO
					break;
					case HAIR_FLUFFY:
					//TODO
					break;
					default:
						outputText("\n\nYour " + hairDescript() + " begins to fall out in globs, eventually leaving you with a bald head.  Your head is not left bald for long, though.  Within moments, a full head of leaf sprouts from the skin of your scalp.  You run your hands through your new growth, sighing at the pleasure of being able to feel each individual leaf.  <b>Your hair turned into thin leafs replacing your current hair!</b>");
					break;
				}
				
				player.hairType = HAIR_LEAF;
			break;
		//Fluffy Hair
			case "fluffy":
				switch(player.hairType){
					case HAIR_NORMAL:
						outputText("\n\nYour hair starts to grow longer and fluffier. It covers all sides of your head perfectly, like a furry helmet keeping it warm. Only your face and neck are devoid of this hairy armor which still manage to look like a nice short haircut. While it looks like hair at first, touching it proves it to be like a very thick coat of fluff. You now have <b>yeti fluffy " + player.hairColor + " hairs.</b>", false);
					break;
					case HAIR_GOO:	
					//TODO
					break;
					case HAIR_ANEMONE:	
					//TODO
					break;
					case HAIR_LEAF:	
					//TODO			
					break;
					case HAIR_GHOST:
					//TODO
					break;
					case HAIR_QUILL:
					//TODO
					break;
					case HAIR_GORGON:
					//TODO
					break;
					case HAIR_FEATHER:
					//TODO
					break;
					default:
					outputText("\n\nYour hair starts to grow longer and fluffier. It covers all sides of your head perfectly, like a furry helmet keeping it warm. Only your face and neck are devoid of this hairy armor which still manage to look like a nice short haircut. While it looks like hair at first, touching it proves it to be like a very thick coat of fluff. You now have <b>yeti fluffy " + player.hairColor + " hairs.</b>", false);
					break;
				}
				
				player.hairType = HAIR_FLUFFY;
			break;
			default:
			break;
		}		
	}
	
	private function morphHairHuman():void {
		morphHair("human");
	}
	
	private function morphHairFeather():void {
		morphHair("feather");
	}
	
	private function morphHairGhost():void {
		morphHair("ghost");
	}
	
	private function morphHairGoo():void {
		morphHair("goo");
	}
	
	private function morphHairAnemone():void {
		morphHair("anemone");
	}
	
	private function morphHairQuill():void {
		morphHair("quill");
	}
	
	private function morphHairGorgon():void {
		morphHair("gorgon");
	}
	
	private function morphHairLeaf():void {
		morphHair("leaf");
	}
	
	private function morphHairFluffy():void {
		morphHair("fluffy");
	}

//} endregion	
//{Region Skin Morphs
	private function morphSkin(to: String):void {
		to = to.toLowerCase();
		switch(to){
		//Plain
			case "plain":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						outputText("\n\nYour fur itches incessantly, so you start scratching it.  It starts coming off in big clumps before the whole mess begins sloughing off your body.  In seconds, your skin is nude.  <b>You've lost your fur!</b>", false);
					break;
					case SKIN_TYPE_SCALES:
						outputText("\n\nYour scales itch incessantly, so you scratch at them.  They start falling off wholesale, leaving you standing in a pile of scales after only a few moments.  <b>You've lost your scales!</b>", false);
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						outputText("\n\nYour fur itches incessantly, so you start scratching it.  It starts coming off in big clumps before the whole mess begins sloughing off your body.  In seconds, your skin is nude.  <b>You've lost your fur!</b>", false);
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						outputText("\n\nYour scales itch incessantly, so you scratch at them.  They start falling off wholesale, leaving you standing in a pile of scales after only a few moments.  <b>You've lost your scales!</b>", false);
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					outputText("\n\nYour " + player.skinDesc + " itches incessantly, and as you scratch it shifts and changes, becoming normal human-like skin.  <b>Your skin is once again normal!</b>", false);
					break;
				}
			player.skinType = SKIN_TYPE_PLAIN;
			break;
		//Fur
			case "fur":
				switch(player.skinType){
					case SKIN_TYPE_PLAIN:
						if (player.skinType == SKIN_TYPE_PLAIN) {
							outputText("\n\nAn itchy feeling springs up over every inch of your skin.  As you scratch yourself madly, you feel fur grow out of your skin until <b>you have a fine coat of " + player.hairColor + "-colored fur.</b>", false);
						}	
					break;
				case SKIN_TYPE_SCALES:
					player.skinDesc = "fur";
					outputText("\n\nYour " + player.skinTone + " scales begin to itch insufferably.  You reflexively scratch yourself, setting off an avalanche of discarded scales.  The itching intensifies as you madly scratch and tear at yourself, revealing a coat of " + player.hairColor + " " + player.skinDesc + ".  At last the itching stops as <b>you brush a few more loose scales from your new coat of fur.</b>", false);						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
						outputText("\n\nAn itchy feeling springs up over every inch of your skin.  As you scratch yourself madly, you feel fur grow out of your skin until <b>you have a fine coat of " + player.hairColor + "-colored fur.</b>", false);
					break;
					
				}
			player.skinDesc = "fur";
			player.skinType = SKIN_TYPE_FUR;
			break;
		//Scales
			case "scales":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_SCALES;
			break;
		//Goo
			case "goo":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_GOO;
			break;
		//Chitin
			case "chitin":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_CHITIN;
			break;
		//Tattoed
			case "tattoed":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_TATTOED;
			break;
		//PartialFur
			case "partialfur":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_PARTIAL_FUR;
			break;
		//PartialScales
			case "partialfur":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_PARTIAL_SCALES;
			break;
		//Bark
			case "bark":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_BARK;
			break;
		//Stone
			case "stone":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_STONE;
			break;
		//AquaScales
			case "aquascales":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_AQUA_SCALES;
			break;
		//PartialChitin
			case "partialchitin":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					case SKIN_TYPE_PARTIAL_BARK:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_PARTIAL_CHITIN;
			break;
		//PartialBark
			case "partialbark":
				switch(player.skinType){
					case SKIN_TYPE_FUR:
						
					break;
					case SKIN_TYPE_SCALES:
						
					break;
					case SKIN_TYPE_GOO:
						
					break;
					case SKIN_TYPE_CHITIN:
						
					break;
					case SKIN_TYPE_BARK:
						
					break;
					case SKIN_TYPE_STONE:
						
					break;
					case SKIN_TYPE_TATTOED:
						
					break;
					case SKIN_TYPE_AQUA_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_FUR:
						
					break;
					case SKIN_TYPE_PARTIAL_SCALES:
						
					break;
					case SKIN_TYPE_PARTIAL_CHITIN:
						
					break;
					case SKIN_TYPE_PLAIN:
						
					break;
					default:
					break;
					
				}
			player.skinType = SKIN_TYPE_PARTIAL_BARK;
			break;
		}
	}
	
	private function morphSkinPlain():void {
		morphSkin("plain");
	}
	
	private function morphSkinFur():void {
		morphSkin("fur");
	}
	
	private function morphSkinScales():void {
		morphSkin("scales");
	}
	
	private function morphSkinGoo():void {
		morphSkin("goo");
	}
	
	private function morphSkinChitin():void {
		morphSkin("chitin");
	}
	
	private function morphSkinBark():void {
		morphSkin("bark");
	}
	
	private function morphSkinStone():void {
		morphSkin("stone");
	}
	
	private function morphSkinTattooed():void {
		morphSkin("tattoed");
	}
	
	private function morphSkinAquaScales():void {
		morphSkin("aquascales");
	}
	
	private function morphSkinPartialFur():void {
		morphSkin("partialfur");
	}
	
	private function morphSkinPartialScales():void {
		morphSkin("partialscales");
	}
	
	private function morphSkinPartialChiting():void {
		morphSkin("partialchitin");
	}
	
	private function morphSkinPartialBark():void {
		morphSkin("partialbark");
	}
//} endregion
//{Region Face Morphs
	private function morphFace(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "human":
				player.faceType = FACE_HUMAN;
			break;
			case "horse":
				player.faceType = FACE_HORSE;
			break;
			case "dog":
				player.faceType = FACE_DOG;
			break;
			case "cowmino":
				player.faceType = FACE_COW_MINOTAUR;
			break;
			case "shark":
				player.faceType = FACE_SHARK_TEETH;
			break;
			case "snake":
				player.faceType = FACE_SNAKE_FANGS;
			break;
			case "cat":
				player.faceType = FACE_CAT;
			break;
			case "lizard":
				player.faceType = FACE_LIZARD;
			break;
			case "bunny":
				player.faceType = FACE_BUNNY;
			break;
			case "kangaroo":
				player.faceType = FACE_KANGAROO;
			break;
			case "spider":
				player.faceType = FACE_SPIDER_FANGS;
			break;
			case "fox":
				player.faceType = FACE_FOX;
			break;
			case "dragon":
				player.faceType = FACE_DRAGON;
			break;
			case "halfraccoon":
				player.faceType = FACE_RACCOON_MASK;
			break;
			case "fullraccoon":
				player.faceType = FACE_RACCOON;
			break;
			case "halfmouse":
				player.faceType = FACE_BUCKTEETH;
			break;
			case "fullmouse":
				player.faceType = FACE_MOUSE;
			break;
			case "halfferret":
				player.faceType = FACE_FERRET_MASK;
			break;
			case "fullferret":
				player.faceType = FACE_FERRET;
			break;
			case "pig":
				player.faceType = FACE_PIG;
			break;
			case "boar":
				player.faceType = FACE_BOAR;
			break;
			case "rhino":
				player.faceType = FACE_RHINO;
			break;
			case "echidna":
				player.faceType = FACE_ECHIDNA;
			break;
			case "deer":
				player.faceType = FACE_DEER;
			break;
			case "wolf":
				player.faceType = FACE_WOLF;
			break;
			case "manticore":
				player.faceType = FACE_MANTICORE;
			break;
			case "salamander":
				player.faceType = FACE_SALAMANDER_FANGS;
			break;
			case "yeti":
				player.faceType = FACE_YETI_FANGS;
			break;
			default:
				outputText("<b>Default</b>");
				player.faceType = FACE_HUMAN;
			break;
		}
	}
	
	private function morphFaceHuman():void {
		morphFace("human");
	}
	
	private function morphFaceHorse():void {
		morphFace("horse");
	}
	
	private function morphFaceDog():void {
		morphFace("dog");
	}
	
	private function morphFaceCowMino():void {
		morphFace("cowmino");
	}
	
	private function morphFaceShark():void {
		morphFace("shark");
	}
	
	private function morphFaceSnake():void {
		morphFace("snake");
	}
	
	private function morphFaceCat():void {
		morphFace("cat");
	}
	
	private function morphFaceLizard():void {
		morphFace("lizard");
	}
	
	private function morphFaceBunny():void {
		morphFace("bunny");
	}
	
	private function morphFaceKangaroo():void {
		morphFace("Kangaroo");
	}
	
	private function morphFaceSpider():void {
		morphFace("spider");
	}
	
	private function morphFaceFox():void {
		morphFace("fox");
	}
	
	private function morphFaceDragon():void {
		morphFace("dragon");
	}
	
	private function morphFaceHalfRaccoon():void {
		morphFace("halfraccon");
	}
	
	private function morphFaceFullRaccoon():void {
		morphFace("fullraccoon");
	}
	
	private function morphFaceHalfMouse():void {
		morphFace("halfmouse");
	}
	
	private function morphFaceFullMouse():void {
		morphFace("fullmouse");
	}
	
	private function morphFaceHalfFerret():void {
		morphFace("halfferret");
	}
	
	private function morphFaceFullFerret():void {
		morphFace("fullferret");
	}
	
	private function morphFacePig():void {
		morphFace("pig");
	}
	
	private function morphFaceBoar():void {
		morphFace("boar");
	}
	
	private function morphFaceRhino():void {
		morphFace("rhino");
	}
	
	private function morphFaceEchidna():void {
		morphFace("echidna");
	}
	
	private function morphFaceDeer():void {
		morphFace("deer");
	}
	
	private function morphFaceWolf():void {
		morphFace("wolf");
	}
	
	private function morphFaceManticore():void {
		morphFace("manticore");
	}
	
	private function morphFaceSalamander():void {
		morphFace("salamander");
	}
	
	private function morphFaceYeti():void {
		morphFace("yeti");
	}
//} endregion
//{Region Tongue Morphs
	private function morphTongue(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "human":
				player.tongueType = TONUGE_HUMAN;
			break;
			case "snake":
				player.tongueType = TONUGE_SNAKE;
			break;
			case "demon":
				player.tongueType = TONUGE_DEMONIC;
			break;
			case "dragon":
				player.tongueType = TONUGE_DRACONIC;
			break;
			case "echdina":
				player.tongueType = TONUGE_ECHIDNA;
			break;
			case "cat":
				player.tongueType = TONUGE_CAT;
			break;
			default:
				outputText("<b>Default</b>");
				player.tongueType = TONUGE_HUMAN;
			break;
		}
	}
	
	private function morphTongueHuman():void {
		morphTongue("human");
	}
	
	private function morphTongueSnake():void {
		morphTongue("snake");
	}
	
	private function morphTongueDemon():void {
		morphTongue("demon");
	}
	
	private function morphTongueDragon():void {
		morphTongue("dragon");
	}
	
	private function morphTongueEchidna():void {
		morphTongue("echidna");
	}
	
	private function morphTongueCat():void {
		morphTongue("cat");
	}
//} endregion
//{Region Eye Morphs
	private function morphEyes(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "human":
				player.eyeType = EYES_HUMAN;
			break;
			case "spider":
				player.eyeType = EYES_FOUR_SPIDER_EYES;
			break;
			case "sandtrap":
				player.eyeType = EYES_BLACK_EYES_SAND_TRAP;
			break;
			case "cat":
				player.eyeType = EYES_CAT_SLITS;
			break;
			case "gorgon":
				player.eyeType = EYES_GORGON;
			break;
			case "fenrir":
				player.eyeType = EYES_FENRIR;
			break;
			case "manticore":
				player.eyeType = EYES_MANTICORE;
			break;
			case "fox":
				player.eyeType = EYES_FOX;
			break;
			case "lizard":
				player.eyeType = EYES_REPTILIAN;
			break;
			default:
				outputText("<b>Default</b>");
				player.eyeType = EYES_HUMAN;
			break;
		}
	}
	
	private function morphEyesHuman():void {
		morphEyes("human");
	}
	
	private function morphEyesSpider():void {
		morphEyes("spider");
	}
	
	private function morphEyesSandTrap():void {
		morphEyes("sandtrap");
	}
	
	private function morphEyesCat():void {
		morphEyes("cat");
	}
	
	private function morphEyesGorgon():void {
		morphEyes("gorgon");
	}
	
	private function morphEyesFenrir():void {
		morphEyes("fenrir");
	}
	
	private function morphEyesManticore():void {
		morphEyes("manticore");
	}
	
	private function morphEyesFox():void {
		morphEyes("fox");
	}
	
	private function morphEyesLizard():void {
		morphEyes("lizard");
	}
//} endregion
//{Region Ear Morphs
	private function morphEars(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "human":
				player.earType = EARS_HUMAN;
			break;
			case "horse":
				player.earType = EARS_HORSE;
			break;
			case "dog":
				player.earType = EARS_DOG;
			break;
			case "cowmino":
				player.earType = EARS_COW;
			break;
			case "elf":
				player.earType = EARS_ELFIN;
			break;
			case "cat":
				player.earType = EARS_CAT;
			break;
			case "lizard":
				player.earType = EARS_LIZARD;
			break;
			case "bunny":
				player.earType = EARS_BUNNY;
			break;
			case "kangaroo":
				player.earType = EARS_KANGAROO;
			break;
			case "fox":
				player.earType = EARS_FOX;
			break;
			case "dragon":
				player.earType = EARS_DRAGON;
			break;
			case "raccoon":
				player.earType = EARS_RACCOON;
			break;
			case "mouse":
				player.earType = EARS_MOUSE;
			break;
			case "ferret":
				player.earType = EARS_FERRET;
			break;
			case "pig":
				player.earType = EARS_PIG;
			break;
			case "rhino":
				player.earType = EARS_RHINO;
			break;
			case "echidna":
				player.earType = EARS_ECHIDNA;
			break;
			case "deer":
				player.earType = EARS_DEER;
			break;
			case "wolf":
				player.earType = EARS_WOLF;
			break;
			case "lion":
				player.earType = EARS_LION;
			break;
			case "yeti":
				player.earType = EARS_YETI;
			break;
			default:
				outputText("<b>Default</b>");
				player.earType = EARS_HUMAN;
			break;
		}
	}
	
	private function morphEarsHuman():void {
		morphEars("human");
	}
	
	private function morphEarsHorse():void {
		morphEars("horse");
	}
	
	private function morphEarsDog():void {
		morphEars("dog");
	}
	
	private function morphEarsCowMino():void {
		morphEars("cowmino");
	}
	
	private function morphEarsElf():void {
		morphEars("elf");
	}
	
	private function morphEarsCat():void {
		morphEars("cat");
	}
	
	private function morphEarsLizard():void {
		morphEars("lizard");
	}
	
	private function morphEarsBunny():void {
		morphEars("bunny");
	}
	
	private function morphEarsKangaroo():void {
		morphEars("kangaroo");
	}
	
	private function morphEarsFox():void {
		morphEars("fox");
	}
	
	private function morphEarsDragon():void {
		morphEars("dragon");
	}
	
	private function morphEarsRaccoon():void {
		morphEars("raccoon");
	}
	
	private function morphEarsMouse():void {
		morphEars("mouse");
	}
	
	private function morphEarsFerret():void {
		morphEars("ferret");
	}
	
	private function morphEarsPig():void {
		morphEars("pig");
	}
	
	private function morphEarsRhino():void {
		morphEars("rhino");
	}
	
	private function morphEarsEchidna():void {
		morphEars("echidna");
	}
	
	private function morphEarsDeer():void {
		morphEars("deer");
	}
	
	private function morphEarsWolf():void {
		morphEars("wolf");
	}
	
	private function morphEarsLion():void {
		morphEars("lion");
	}
	
	private function morphEarsYeti():void {
		morphEars("yeti");
	}
//} endregion
//{Region Horn Morphs
	private function morphHorn(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "none":
				player.hornType = HORNS_NONE;
			break;
			case "demon":
				player.hornType = HORNS_DEMON;
			break;
			case "minotaur":
				player.hornType = HORNS_COW_MINOTAUR;
			break;
			case "dragonx2":
				player.hornType = HORNS_DRACONIC_X2;
			break;
			case "dragonx4":
				player.hornType = HORNS_DRACONIC_X4_12_INCH_LONG;
			break;
			case "antlers":
				player.hornType = HORNS_ANTLERS;
			break;
			case "goat":
				player.hornType = HORNS_GOAT;
			break;
			case "unicorn":
				player.hornType = HORNS_UNICORN;
			break;
			case "rhino":
				player.hornType = HORNS_RHINO;
			break;
			case "oak":
				player.hornType = HORNS_OAK;
			break;
			case "gargoyle":
				player.hornType = HORNS_GARGOYLE;
			break;
			case "orchid":
				player.hornType = HORNS_ORCHID;
			break;
			default:
				outputText("<b>Default</b>");
				player.hornType = HORNS_NONE;
			break;
		}
	}
	
	private function morphHornNone():void {
		morphHorn("none");
	}
	
	private function morphHornDemon():void {
		morphHorn("demon");
	}
	
	private function morphHornCowMino():void {
		morphHorn("cowmino");
	}
	
	private function morphHornDragonX2():void {
		morphHorn("dragonx2");
	}
	
	private function morphHornDragonX4():void {
		morphHorn("dragonx4");
	}
	
	private function morphHornAntlers():void {
		morphHorn("antlers");
	}
	
	private function morphHornGoat():void {
		morphHorn("goat");
	}
	
	private function morphHornUnicorn():void {
		morphHorn("unicorn");
	}
	
	private function morphHornRhino():void {
		morphHorn("rhino");
	}
	
	private function morphHornOak():void {
		morphHorn("oak");
	}
	
	private function morphHornGargoyle():void {
		morphHorn("gargoyle");
	}
	
	private function morphHornOrchid():void {
		morphHorn("orchid");
	}
	
//} endregion
//{Region Antennae Morphs
	private function morphAntennae(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "none":
				player.antennae = ANTENNAE_NONE;
			break;
			case "mantis":
				player.antennae = ANTENNAE_MANTIS;
			break;
			case "bee":
				player.antennae = ANTENNAE_BEE;
			break;
			default:
				outputText("<b>Default</b>");
				player.antennae = ANTENNAE_NONE;
			break;
		}
		
	}
	
	private function morphAntennaeNone():void {
		morphAntennae("none");
	}
	
	private function morphAntennaeMantis():void {
		morphAntennae("mantis");
	}
	
	private function morphAntennaeBee():void {
		morphAntennae("bee");
	}	
//} endregion
//{Region Gill Morphs
	private function morphGill(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "none":
				player.gillType = GILLS_NONE;
			break;
			case "anemone":
				player.gillType = GILLS_ANEMONE;
			break;
			case "fish":
				player.gillType = GILLS_FISH;
			break;
			case "tentaclelegs":
				player.gillType = GILLS_IN_TENTACLE_LEGS;
			break;
			default:
				outputText("<b>Default</b>");
				player.gillType = GILLS_NONE;
			break;
		}
	}
	
	private function morphGillNone():void {
		morphGill("none");
	}
	
	private function morphGillAnemone():void {
		morphGill("anemone");
	}
	
	private function morphGillFish():void {
		morphGill("fish");
	}
	
	private function morphGillTentacleLegs():void {
		morphGill("tentaclelegs");
	}
	
//} endregion
//{Region Arm Morphs
	private function morphArms(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "human":
				player.armType = ARM_TYPE_HUMAN;
			break;
			case "harpy":
				player.armType = ARM_TYPE_HARPY;
			break;
			case "spider":
				player.armType = ARM_TYPE_SPIDER;
			break;
			case "mantis":
				player.armType = ARM_TYPE_MANTIS;
			break;
			case "bee":
				player.armType = ARM_TYPE_BEE;
			break;
			case "salamander":
				player.armType = ARM_TYPE_SALAMANDER;
			break;
			case "phoenix":
				player.armType = ARM_TYPE_PHOENIX;
			break;
			case "plant":
				player.armType = ARM_TYPE_PLANT;
			break;
			case "shark":
				player.armType = ARM_TYPE_SHARK;
			break;
			case "gargoyle":
				player.armType = ARM_TYPE_GARGOYLE;
			break;
			case "wolf":
				player.armType = ARM_TYPE_WOLF;
			break;
			case "lion":
				player.armType = ARM_TYPE_LION;
			break;
			case "kitsune":
				player.armType = ARM_TYPE_KITSUNE;
			break;
			case "fox":
				player.armType = ARM_TYPE_FOX;
			break;
			case "lizard":
				player.armType = ARM_TYPE_LIZARD;
			break;
			case "dragon":
				player.armType = ARM_TYPE_DRAGON;
			break;
			case "yeti":
				player.armType = ARM_TYPE_YETI;
			break;
			default:
				outputText("<b>Default</b>");
				player.armType = ARM_TYPE_HUMAN;
			break;
		}
	}
	
	private function morphArmsHuman():void {
		morphArms("human");
	}
	
	private function morphArmsHarpy():void {
		morphArms("harpy");
	}
	
	private function morphArmsSpider():void {
		morphArms("spider");
	}
	
	private function morphArmsMantis():void {
		morphArms("mantis");
	}
	
	private function morphArmsBee():void {
		morphArms("bee");
	}
	
	private function morphArmsSalamander():void {
		morphArms("salamander");
	}
	
	private function morphArmsPhoenix():void {
		morphArms("phoenix");
	}
	
	private function morphArmsPlant():void {
		morphArms("plant");
	}
	
	private function morphArmsShark():void {
		morphArms("shark");
	}
	
	private function morphArmsGargoyle():void {
		morphArms("gargoyle");
	}
	
	private function morphArmsWolf():void {
		morphArms("wolf");
	}
	
	private function morphArmsLion():void {
		morphArms("lion");
	}
	
	private function morphArmsKitsune():void {
		morphArms("kitsune");
	}
	
	private function morphArmsFox():void {
		morphArms("fox");
	}
	
	private function morphArmsLizard():void {
		morphArms("lizard");
	}
	
	private function morphArmsDragon():void {
		morphArms("dragon");
	}
	
	private function morphArmsYeti():void {
		morphArms("yeti");
	}
//} endregion
//{Region Tail Morphs
	private function morphTail(to: String, number:Number=1):void {	
		to = to.toLowerCase()
		switch(to){
			case "none":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_NONE;
			break;
			case "horse":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_HORSE;
			break;
			case "dog":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_DOG;
			break;
			case "demon":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_DEMONIC;
			break;
			case "cowmino":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_COW;
			break;
			case "spider":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_SPIDER_ADBOMEN;
			break;
			case "bee":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_BEE_ABDOMEN;
			break;
			case "shark":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_SHARK;
			break;
			case "cat":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_CAT;
			break;
			case "lizard":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_LIZARD;
			break;
			case "rabbit":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_RABBIT;
			break;
			case "harpy":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_HARPY;
			break;
			case "kangaroo":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_KANGAROO;
			break;
			case "fox":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_FOX;
			break;
			case "dragon":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_DRACONIC;
			break;
			case "raccoon":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_RACCOON;
			break;
			case "mouse":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_MOUSE;
			break;
			case "ferret":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_FERRET;
			break;
			case "behemoth":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_BEHEMOTH;
			break;
			case "pig":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_PIG;
			break;
			case "scorpion":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_SCORPION;
			break;
			case "goat":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_GOAT;
			break;
			case "rhino":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_RHINO;
			break;
			case "echidna":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_ECHIDNA;
			break;
			case "deer":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_DEER;
			break;
			case "salamander":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_SALAMANDER;
			break;
			case "mantis":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_MANTIS_ABDOMEN;
			break;
			case "manticore":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_MANTICORE_PUSSYTAIL;
			break;
			case "wolf":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_WOLF;
			break;
			case "gargoyle":
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_GARGOYLE;
			case "kitsune":
				switch(number){
					case 1:
						player.tailVenom = 1;
					break;
					case 2:
						player.tailVenom = 2;
					break;
					case 3:
						player.tailVenom = 3;
					break;
					case 4:
						player.tailVenom = 4;
					break;
					case 5:
						player.tailVenom = 5;
					break;
					case 6:
						player.tailVenom = 6;
					break;
					case 7:
						player.tailVenom = 7;
					break;
					case 8:
						player.tailVenom = 8;
					break;
					case 9:
						player.tailVenom = 9;
					break;
					default:
						player.tailVenom = 1;
					break;
				}
				player.tailType = TAIL_TYPE_FOX;
			break;
			default:
				outputText("<b>Default</b>");
				player.tailVenom = 1;
				player.tailType = TAIL_TYPE_NONE;
			break;
		}
	}
	
	private function addMorphTailKitsuneNumberButton():void {
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail9) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 9)
			addButton(10, "Ninth", curry(morphTailKitsune, 9));
		else
			addButtonDisabled(9, "Ninth", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail8) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 8)
			addButton(9, "Eight", curry(morphTailKitsune, 8));
		else
			addButtonDisabled(8, "Eight", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail7) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 7)
			addButton(8, "Seventh", curry(morphTailKitsune, 7));
		else
			addButtonDisabled(7, "Seventh", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail6) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 6)
			addButton(7, "Sixth", curry(morphTailKitsune, 6));
		else
			addButtonDisabled(6, "Sixth", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail5) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 5)
			addButton(6, "Fifth", curry(morphTailKitsune, 5));
		else
			addButtonDisabled(5, "Fifth", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail4) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 4)
			addButton(5, "Fourth", curry(morphTailKitsune, 4));
		else
			addButtonDisabled(4, "Fourth", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail3) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 3)
			addButton(3, "Third", curry(morphTailKitsune, 3));
		else
			addButtonDisabled(3, "Third", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail2) && player.tailType == TAIL_TYPE_FOX && player.tailVenom < 2)
			addButton(2, "Second", curry(morphTailKitsune, 2));
		else
			addButtonDisabled(2, "Second", "You don't see any use in this.");
		if (player.findStatusAffect(StatusAffects.UnlockedKitsuneTail1))
			addButton(1, "First", curry(morphTailKitsune, 1));
		else
			addButtonDisabled(1, "First", "You don't see any use in this.");
	}
	
	private function morphTailNone():void {
		morphTail("none");
	}
	
	private function morphTailHorse():void {
		morphTail("hrose");
	}
	
	private function morphTailDog():void {
		morphTail("dog");
	}
	
	private function morphTailDemon():void {
		morphTail("demon");
	}
	
	private function morphTailCowMino():void {
		morphTail("cowmino");
	}
	
	private function morphTailSpiderAbdomen():void {
		morphTail("spider");
	}
	
	private function morphTailBeeAbdomen():void {
		morphTail("bee");
	}
	
	private function morphTailShark():void {
		morphTail("shark");
	}
	
	private function morphTailCat():void {
		morphTail("cat");
	}
	
	private function morphTailLizard():void {
		morphTail("lizard");
	}
	
	private function morphTailRabbit():void {
		morphTail("rabbit");
	}
	
	private function morphTailHarpy():void {
		morphTail("harpy");
	}
	
	private function morphTailKangaroo():void {
		morphTail("kangaroo");
	}
	
	private function morphTailFox():void {
		morphTail("fox");
	}
	
	private function morphTailDragon():void {
		morphTail("dragon");
	}
	
	private function morphTailRaccoon():void {
		morphTail("raccoon");
	}
	
	private function morphTailMouse():void {
		morphTail("mouse");
	}
	
	private function morphTailFerret():void {
		morphTail("ferret");
	}
	
	private function morphTailBehemoth():void {
		morphTail("behemoth");
	}
	
	private function morphTailPig():void {
		morphTail("pig");
	}
	
	private function morphTailScorpion():void {
		morphTail("scorpion");
	}
	
	private function morphTailGoat():void {
		morphTail("goat");
	}
	
	private function morphTailRhino():void {
		morphTail("rhino");
	}
	
	private function morphTailEchidna():void {
		morphTail("echidna");
	}
	
	private function morphTailDeer():void {
		morphTail("deer");
	}
	
	private function morphTailSalamander():void {
		morphTail("salamander");
	}
	
	private function morphTailMantisAbdomen():void {
		morphTail("mantis");
	}
	
	private function morphTailManticore():void {
		morphTail("manticore");
	}
	
	private function morphTailWolf():void {
		morphTail("wolf");
	}
	
	private function morphTailGargoyle():void {
		morphTail("gargoyle");
	}

	private function morphTailKitsune(number:Number):void {
		morphTail("kitsune", number);
	}
	//} endregion
//{Region Wing Morphs
	private function morphWings(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "none":
				player.wingType = WING_TYPE_NONE;
			break;
			case "beesmall":
				player.wingType = WING_TYPE_BEE_LIKE_SMALL;
			break;
			case "beelarge":
				player.wingType = WING_TYPE_BEE_LIKE_LARGE;
			break;
			case "demontiny":
				player.wingType = WING_TYPE_BAT_LIKE_TINY;
			break;
			case "demonlarge":
				player.wingType = WING_TYPE_BAT_LIKE_LARGE;
			break;
			case "demonlargex2":
				player.wingType = WING_TYPE_BAT_LIKE_LARGE_2;
			break;
			case "feathered":
				player.wingType = WING_TYPE_FEATHERED_LARGE;
			break;
			case "dragonsmall":
				player.wingType = WING_TYPE_DRACONIC_SMALL;
			break;
			case "dragonlarge":
				player.wingType = WING_TYPE_DRACONIC_LARGE;
			break;
			case "dragonhuge":
				player.wingType = WING_TYPE_DRACONIC_HUGE;
			break;
			case "phoenix":
				player.wingType = WING_TYPE_FEATHERED_PHOENIX;
			break;
			case "alicorn":
				player.wingType = WING_TYPE_FEATHERED_ALICORN;
			break;
			case "mantissmall":
				player.wingType = WING_TYPE_MANTIS_LIKE_SMALL;
			break;
			case "mantislarge":
				player.wingType = WING_TYPE_MANTIS_LIKE_LARGE;
			break;
			case "gargoyle":
				player.wingType = WING_TYPE_GARGOYLE_LIKE_LARGE;
			break;
			case "plant":
				player.wingType = WING_TYPE_PLANT;
			break;
			case "manticoresmall":
				player.wingType = WING_TYPE_MANTICORE_LIKE_SMALL;
			break;
			case "manticorelarge":
				player.wingType = WING_TYPE_MANTICORE_LIKE_LARGE;
			break;
			default:
				outputText("<b>Default</b>");
				player.wingType = WING_TYPE_NONE;
			break;
		}
	}
	
	private function morphWingsNone():void {
		morphWings("none");
	}
	
	private function morphWingsBeeSmall():void {
		morphWings("beesmall");
	}
	
	private function morphWingsBeeLarge():void {
		morphWings("beelarge");
	}
	
	private function morphWingsDemonSmall():void {
		morphWings("demonsmall");
	}
	
	private function morphWingsDemonLarge():void {
		morphWings("demonlarge");
	}
	
	private function morphWingsDemonLargeX2():void {
		morphWings("demonlargex2");
	}
	
	private function morphWingsFeathered():void {
		morphWings("feathered");
	}
	
	private function morphWingsDragonSmall():void {
		morphWings("dragonsmall");
	}
	
	private function morphWingsDragonLarge():void {
		morphWings("dragonlarge");
	}
	
	private function morphWingsDragonHuge():void {
		morphWings("dragonhuge");
	}
	
	private function morphWingsDragonfly():void {
		morphWings("dragonfly");
	}
	
	private function morphWingsPhoenix():void {
		morphWings("phoenix");
	}
	
	private function morphWingsAlicorn():void {
		morphWings("alicorn");
	}
	
	private function morphWingsMantisSmall():void {
		morphWings("mantissmall");
	}
	
	private function morphWingsMantisLarge():void {
		morphWings("mantislarge");
	}
	
	private function morphWingsGargoyle():void {
		morphWings("gargoyle");
	}
	
	private function morphWingsPlant():void {
		morphWings("plant");
	}
	
	private function morphWingsManticoreSmall():void {
		morphWings("manticoresmall");
	}
	
	private function morphWingsManticoreLarge():void {
		morphWings("manticorelarge");
	}
//} endregion
//{Region LowerBody Morphs
	private function morphLowerBody(to: String):void {	
		to = to.toLowerCase()
		switch(to){
			case "human":
				player.lowerBody = LOWER_BODY_TYPE_HUMAN;
			break;
			case "hoofed":
				player.lowerBody = LOWER_BODY_TYPE_HOOFED;
			break;
			case "dog":
				player.lowerBody = LOWER_BODY_TYPE_DOG;
			break;
			case "naga":
				player.lowerBody = LOWER_BODY_TYPE_NAGA;
			break;
			case "demonhighheels":
				player.lowerBody = LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS;
			break;
			case "demonclaws":
				player.lowerBody = LOWER_BODY_TYPE_DEMONIC_CLAWS;
			break;
			case "bee":
				player.lowerBody = LOWER_BODY_TYPE_BEE;
			break;
			case "goo":
				player.lowerBody = LOWER_BODY_TYPE_GOO;
			break;
			case "cat":
				player.lowerBody = LOWER_BODY_TYPE_CAT;
			break;
			case "lizard":
				player.lowerBody = LOWER_BODY_TYPE_LIZARD;
			break;
			case "pony":
				player.lowerBody = LOWER_BODY_TYPE_PONY;
			break;
			case "harpy":
				player.lowerBody = LOWER_BODY_TYPE_HARPY;
			break;
			case "kangaroo":
				player.lowerBody = LOWER_BODY_TYPE_KANGAROO;
			break;
			case "spider":
				player.lowerBody = LOWER_BODY_TYPE_CHITINOUS_SPIDER_LEGS;
			break;
			case "drider":
				player.lowerBody = LOWER_BODY_TYPE_DRIDER_LOWER_BODY;
			break;
			case "fox":
				player.lowerBody = LOWER_BODY_TYPE_FOX;
			break;
			case "raccoon":
				player.lowerBody = LOWER_BODY_TYPE_RACCOON;
			break;
			case "ferret":
				player.lowerBody = LOWER_BODY_TYPE_FERRET;
			break;
			case "clovenhoofed":
				player.lowerBody = LOWER_BODY_TYPE_CLOVEN_HOOFED;
			break;
			case "echidna":
				player.lowerBody = LOWER_BODY_TYPE_ECHIDNA;
			break;
			case "salamander":
				player.lowerBody = LOWER_BODY_TYPE_SALAMANDER;
			break;
			case "scylla":
				player.lowerBody = LOWER_BODY_TYPE_SCYLLA;
			break;
			case "mantis":
				player.lowerBody = LOWER_BODY_TYPE_MANTIS;
			break;
			case "shark":
				player.lowerBody = LOWER_BODY_TYPE_SHARK;
			break;
			case "gargoyle":
				player.lowerBody = LOWER_BODY_TYPE_GARGOYLE;
			break;
			case "planthighheels":
				player.lowerBody = LOWER_BODY_TYPE_PLANT_HIGH_HEELS;
			break;
			case "plantclaws":
				player.lowerBody = LOWER_BODY_TYPE_PLANT_ROOT_CLAWS;
			break;
			case "plantflower":
				player.lowerBody = LOWER_BODY_TYPE_PLANT_FLOWER;
			break;
			case "wolf":
				player.lowerBody = LOWER_BODY_TYPE_WOLF;
			break;
			case "lion":
				player.lowerBody = LOWER_BODY_TYPE_LION;
			break;
			case "yeti":
				player.lowerBody = LOWER_BODY_TYPE_YETI;
			break;
			default:
				outputText("<b>Default</b>");
				player.lowerBody = LOWER_BODY_TYPE_HUMAN;
			break;
		}
		
	}
	
	private function morphLowerBodyHuman():void {
		morphLowerBody("human");
	}
	
	private function morphLowerBodyHoofed():void {
		morphLowerBody("hoofed");
	}
	
	private function morphLowerBodyDog():void {
		morphLowerBody("dog");
	}
	
	private function morphLowerBodyNaga():void {
		morphLowerBody("naga");
	}
	
	private function morphLowerBodyDemonHighHeels():void {
		morphLowerBody("demonhighheels");
	}
	
	private function morphLowerBodyDemonClaws():void {
		morphLowerBody("demonclaws");
	}
	
	private function morphLowerBodyBee():void {
		morphLowerBody("bee");
	}
	
	private function morphLowerBodyGoo():void {
		morphLowerBody("goo");
	}
	
	private function morphLowerBodyCat():void {
		morphLowerBody("cat");
	}
	
	private function morphLowerBodyLizard():void {
		morphLowerBody("lizard");
	}
	
	private function morphLowerBodyPony():void {
		morphLowerBody("pony");
	}
	
	private function morphLowerBodyBunny():void {
		morphLowerBody("bunny");
	}
	
	private function morphLowerBodyHarpy():void {
		morphLowerBody("harpy");
	}
	
	private function morphLowerBodyKangaroo():void {
		morphLowerBody("knagaroo");
	}
	
	private function morphLowerBodySpider():void {
		morphLowerBody("spider");
	}
	
	private function morphLowerBodyDrider():void {
		morphLowerBody("drider");
	}
	
	private function morphLowerBodyFox():void {
		morphLowerBody("fox");
	}
	
	private function morphLowerBodyDragon():void {
		morphLowerBody("dragon");
	}
	
	private function morphLowerBodyRaccoon():void {
		morphLowerBody("raccoon");
	}
	
	private function morphLowerBodyFerret():void {
		morphLowerBody("ferret");
	}
	
	private function morphLowerBodyClovenHoofed():void {
		morphLowerBody("clovenhoofed");
	}
	
	private function morphLowerBodyEchidna():void {
		morphLowerBody("echidna");
	}
	
	private function morphLowerBodySalamander():void {
		morphLowerBody("salamander");
	}
	
	private function morphLowerBodyScylla():void {
		morphLowerBody("scylla");
	}
	
	private function morphLowerBodyMantis():void {
		morphLowerBody("mantis");
	}
	
	private function morphLowerBodyShark():void {
		morphLowerBody("shark");
	}
	
	private function morphLowerBodyGargoyle():void {
		morphLowerBody("gargoyle");
	}
	
	private function morphLowerBodyPlantHighHeels():void {
		morphLowerBody("planthighheels");
	}
	
	private function morphLowerBodyPlantClaws():void {
		morphLowerBody("plantclaws");
	}
	
	private function morphLowerBodyPlantFlower():void {
		morphLowerBody("plantflower");
	}
	
	private function morphLowerBodyWolf():void {
		morphLowerBody("wolf");
	}
	private function morphLowerBodyLion():void {
		morphLowerBody("lion");
	}
	
	private function morphLowerBodyYeti():void {
		morphLowerBody("yeti");
	}
//} endregion
//{Region RearBody Morphs
	private function morphRearBody(to: String):void {		
		to = to.toLowerCase()
		switch(to){
			case "none":
				switch(player.rearBody){
					case "dragonmane":
					break;
					default:
					break;
				}
				player.rearBody = REAR_BODY_NONE;
			break;
			case "dragonmane":
				player.rearBody = REAR_BODY_DRACONIC_MANE;
			break;
			case "dragonspikes":
				player.rearBody = REAR_BODY_DRACONIC_SPIKES;
			break;
			case "fenriricespikes":
				player.rearBody = REAR_BODY_FENRIR_ICE_SPIKES;
			break;
			case "lionmane":
				player.rearBody = REAR_BODY_LION_MANE;
			break;
			case "behemoth":
				player.rearBody = REAR_BODY_BEHEMOTH;
			break;
			case "sharkfin":
				player.rearBody = REAR_BODY_SHARK_FIN;
			break;
			default:
				outputText("<b>Default</b>");
				player.rearBody = REAR_BODY_NONE;
			break;
		}
	}
	
	private function morphRearBodyNone():void {
		morphRearBody("none");
	}
	
	private function morphRearBodyDragonMane():void {
		morphRearBody("dragonmane");
	}
	
	private function morphRearBodyDragonSpikes():void {
		morphRearBody("dragonspikes");
	}
	
	private function morphRearBodyFenrirIceSpikes():void {
		morphRearBody("fenriricespikes");
	}
	
	private function morphRearBodyLionMane():void {
		morphRearBody("lionmane");
	}
	
	private function morphRearBodyBehemoth():void {
		morphRearBody("behemoth");
	}
	
	private function morphRearBodySharkFin():void {
		morphRearBody("sharkfin");
	}
//} endregion
//{Region Vagina Morphs
	private function addMorphVaginaButton(affect:StatusAffectType, type:Number, pos:int, desc:String, func:Function):void {
		if (player.findStatusAffect(affect) >= 0 && player.vaginaType() != type)
			addButton(pos, desc, func);
		else if (player.findStatusAffect(affect) >= 0 && player.vaginaType() == type)	
			addButtonDisabled(pos, desc, "You already have this.");
		else
			addButtonDisabled(pos, "???", "You have not unlocked this metamorphosis.");
	}
	
	private function morphVagina(to: String):void {
		to = to.toLowerCase()
		if (player.hasVagina()){
			switch(to){
				case "human":
					switch(player.vaginaType){
						case "horse":
						break;
						case "sandtrap":
						break;
						default:
						break;
					}
					player.vaginas[0] = VAGINA_TYPE_HUMAN;
				break;
				case "horse":
					switch(player.vaginaType){
						case "human":
						break;
						case "sandtrap":
						break;
						default:
						break;
					}
					player.vaginas[0] = VAGINA_TYPE_EQUINE;
				break;
				case "sandtrap":
					switch(player.vaginaType){
						case "human":
						break;
						case "horse":
						break;
						default:
						break;
					}
					player.vaginas[0] = VAGINA_TYPE_BLACK_SAND_TRAP;
				break;
				default:
					outputText("<b>Default</b>");
					player.vaginas[0] = VAGINA_TYPE_HUMAN;
				break;
			}
		}
		else {
			switch(to){
				case "human":
					player.createVagina();
					player.vaginas[0] = VAGINA_TYPE_HUMAN;
				break;
				case "horse":
					player.createVagina();
					player.vaginas[0] = VAGINA_TYPE_EQUINE;
				break;
				case "sandtrap":
					player.createVagina();
					player.vaginas[0] = VAGINA_TYPE_BLACK_SAND_TRAP;
				break;
				default:
					outputText("<b>Default</b>");
					player.createVagina();
					player.vaginas[0] = VAGINA_TYPE_HUMAN;
				break;
			}
			
		}
	}
	
	private function morphVaginaHuman():void {
		morphVagina("human");
	}
	
	private function morphVaginaHorse():void {
		morphVagina("horse");
	}
	
	private function morphVaginaSandTrap():void {
		morphVagina("sandtrap");
	}
//} endregion
//{Region Cock Morphs
	private function addMorphCockNumberButton():void {
		if (player.cocks.length == 9)
			addButton(10, "Ninth", curry(accessCockTypePage1,9));
		else 
			addButtonDisabled(9, "Ninth", "You don't have that many cocks.");
		if (player.cocks.length == 8)
			addButton(9, "Eigth", curry(accessCockTypePage1,8));
		else 
			addButtonDisabled(8, "Eigth", "You don't have that many cocks.");
		if (player.cocks.length == 7)
			addButton(8, "Seventh", curry(accessCockTypePage1,7));
		else 
			addButtonDisabled(7, "Seventh", "You don't have that many cocks.");
		if (player.cocks.length == 6)
			addButton(7, "Sixth", curry(accessCockTypePage1,6));
		else 
			addButtonDisabled(6, "Sixth", "You don't have that many cocks.");
		if (player.cocks.length == 5)
			addButton(6, "Fifth", curry(accessCockTypePage1,5));
		else 
			addButtonDisabled(5, "Fifth", "You don't have that many cocks.");
		if (player.cocks.length == 4)
			addButton(5, "Fourth", curry(accessCockTypePage1,4));
		else 
			addButtonDisabled(4, "Fourth", "You don't have that many cocks.");
		if (player.cocks.length == 3)
			addButton(3, "Third", curry(accessCockTypePage1,3));
		else 
			addButtonDisabled(3, "Third", "You don't have that many cocks.");
		if (player.cocks.length == 2)
			addButton(2, "Second", curry(accessCockTypePage1,2));
		else 
			addButtonDisabled(2, "Second", "You don't have that many cocks.");
		if (player.cocks.length == 1)
			addButton(1, "First", curry(accessCockTypePage1,1));
		else 
			addButtonDisabled(1, "First", "You don't have that many cocks.");
	}
	
	private function addMorphCockTypeButton(affect:StatusAffectType, number:Number, type:CockTypesEnum, pos:int, desc:String, func:Function):void {
		if (player.findStatusAffect(affect) >= 0 && player.cocks[number].cockType != type)
			addButton(pos, desc, func(number));
		else if (player.findStatusAffect(affect) >= 0 && player.cocks[number].cockType == type)
			addButtonDisabled(pos, desc, "You already have this.");
		else
			addButtonDisabled(pos, "???", "You have not unlocked this metamorphosis.");
	}

	private function morphCock(to: String, number:Number):void {
		to = to.toLowerCase()
		switch(to){
			case "human":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.HUMAN;
			break;
			case "horse":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.HORSE;
			break;
			case "dog":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.DOG;
			break;
			case "demon":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.DEMON;
			break;
			case "tentacle":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.TENTACLE;
			break;
			case "cat":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.CAT;
			break;
			case "lizard":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.LIZARD;
			break;
			case "anemone":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.ANEMONE;
			break;
			case "kangaroo":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.KANGAROO;
			break;
			case "dragon":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.DRAGON;
			break;
			case "displacer":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.DISPLACER;
			break;
			case "fox":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.FOX;
			break;
			case "bee":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.BEE;
			break;
			case "pig":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.PIG;
			break;
			case "avian":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.AVIAN;
			break;
			case "rhino":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.RHINO;
			break;
			case "echidna":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.ECHIDNA;
			break;
			case "wolf":
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				player.cocks[number].cockType = CockTypesEnum.WOLF;
			break;
			default:
				switch(player.cocks[number].cockType()){
					default:
					break;
				}
				outputText("<b>Default</b>");
				player.cocks[number].cockType = CockTypesEnum.HUMAN;
			break;
			
		}
	}
	
	private function morphCockHuman(number:Number):void {
		morphCock("human", number);
	}
	
	private function morphCockHorse(number:Number):void {
		morphCock("horse", number);
	}
	
	private function morphCockDog(number:Number):void {
		morphCock("dog", number);
	}
	
	private function morphCockDemon(number:Number):void {
		morphCock("demon", number);
	}
	
	private function morphCockTentacle(number:Number):void {
		morphCock("tentacle", number);
	}
	
	private function morphCockCat(number:Number):void {
		morphCock("cat", number);
	}
	
	private function morphCockLizard(number:Number):void {
		morphCock("lizard", number);
	}
	
	private function morphCockAnemone(number:Number):void {
		morphCock("anemone", number);
	}
	
	private function morphCockKangaroo(number:Number):void {
		morphCock("kangaroo", number);
	}
	
	private function morphCockDragon(number:Number):void {
		morphCock("dragon", number);
	}
	
	private function morphCockDisplacer(number:Number):void {
		morphCock("displacer", number);
	}
	
	private function morphCockFox(number:Number):void {
		morphCock("fox", number);
	}
	
	private function morphCockBee(number:Number):void {
		morphCock("bee", number);
	}
	
	private function morphCockPig(number:Number):void {
		morphCock("pig", number);
	}
	
	private function morphCockAvian(number:Number):void {
		morphCock("avian", number);
	}
	
	private function morphCockRhino(number:Number):void {
		morphCock("rhino", number);
	}
	
	private function morphCockEchidna(number:Number):void {
		morphCock("echdina", number);
	}
	
	private function morphCockWolf(number:Number):void {
		morphCock("wolf", number);
	}
//} endregion
//{Region Misc
	private function morphMisc(to: String):void {
		
	}	
//} endregion

	private function unlockAll():void {
		player.createStatusAffect( StatusAffects.UnlockedHumanHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFeatherHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGhostHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGooHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedAnemoneHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedQuillHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGorgonHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLeafHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFluffyHair, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanSkin, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFur, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedScales, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGoo, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedChitin, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBark, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedStone, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedTattooed, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedAquaScales, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPartialFur, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPartialScales, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPartialChitin, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPartialBark, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHorseFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDogFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCowMinoFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSharkFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSnakeFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCatFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLizardFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBunnyFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKangarooFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSpiderFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFoxFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRacconHalfFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRaccoonFullFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMouseHalfFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMouseFullFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFerretHalfFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFerretFullFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPigFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBoarFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRhinoFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedEchidnaFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDeerFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedWolfFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedManticoreFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSalamanderFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedYetiFace, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanTongue, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSnakeTongue, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonTongue, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonTongue, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedEchidnaTongue, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCatTongue, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSpiderEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSandTrapEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCatEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGorgonEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFenrirEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedManticoreEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFoxEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLizardEyes, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNoEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHorseEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDogEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCowMinoEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedElfEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCatEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLizardEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBunnyEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKangarooEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFoxEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRaccoonEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFerretEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPigEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRhinoEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedEchidnaEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDeerEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedWolfEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLionEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedYetiEars, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNoHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCowMinoHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonHornsX2, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonHornsX4, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedAntlers, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGoatHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedUnicornHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRhinoHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedOakHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGargoyleHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedOrchidHorns, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNoAntennae, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMantisAntennae, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBeeAntennae, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNoGills, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedAnemoneGills, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFishGills, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedTentacleLegGills, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHarpyArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSpiderArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMantisArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBeeArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSalamanderArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPhoenixArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPlantArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSharkArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGargoyleArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedWolfArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLionArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFoxArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLizardArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedYetiArms, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNoTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHorseTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDogTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCowMinoTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSpiderAbdomenTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBeeAbdomenTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSharkTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCatTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLizardTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRabbitTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHarpyTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKangarooTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFoxTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail1, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail2, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail3, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail4, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail5, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail6, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail7, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail8, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitsuneTail9, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRaccoonTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMouseTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFerretTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBehemothTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPigTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedScorpionTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGoatTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRhinoTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedEchidnaTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDeerTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSalamanderTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKitshooTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMantisAbdomenTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedManticoreTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedWolfTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGargoyleTail, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNoWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBeeSmallWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBeeLargeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHarpyWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedImpWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonSmallWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonLargeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFeatheredLargeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonSmallWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonLargeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonHugeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonflyWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPhoenixWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedAlicornWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMantisSmallWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMantisLargeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMantisHugeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGargoyleLargeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPlantWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedManticoreSmallWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedManticoreLargeWings, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHoofedLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDogLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNagaLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonHighHeelsLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonClawsLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBeeLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGooLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCatLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLizardLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPonyLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBunnyLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHarpyLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKangarooLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSpiderLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDriderLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFoxLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRaccoonLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFerretLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedClovenHoofedLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedEchidnaLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSalamanderLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedScyllaLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedMantisLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSharkLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedGargoyleLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPlantHighHeelsLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPlantRootClawsLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPlantFlowerLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedWolfLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLionLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedYetiLowerBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedNoRearBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonManeRearBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonSpikesRearBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFenrirIceSpikesRearBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLionManeRearBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBehemothRearBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSharkFinRearBody, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanVagina, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHorseVagina, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedSandTrapVagina, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHumanCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedHorseCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDogCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDemonCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedTentacleCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedCatCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedLizardCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedAnemoneCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedKangarooCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDragonCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedDisplacerCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedFoxCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedBeeCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedPigCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedAvianCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedRhinoCock, 0, 0, 0, 0);
		player.createStatusAffect( StatusAffects.UnlockedEchidnaCock, 0, 0, 0, 0);
	}

//{Region Orm's Metamorph
/* public function accessMetamorphMenu():void {
	clearOutput();
	outputText("Using some of soulforce to re-gain any animal bodyparts that your body remember in it genetic memory.");
	outputText("<b>Race added to Metamorph: Bee, Demon, Fox, Harpy, Kitsune (up to 6th tail), Lizard</b>");
	menu();
	addButton(10, "Page 1", accessPage1MetamorphMenu);
	addButton(11, "Page 2", accessPage2MetamorphMenu);
//	addButton(12, "Page 3", accessPage3MetamorphMenu);
//	addButton(13, "Page 4", accessPage4MetamorphMenu);
	addButton(14, "Back", kGAMECLASS.soulforce.accessSoulforceMenu);
}

private function accessPage1MetamorphMenu():void {
	menu();
	addButton(0, "Skin", accessSkinMenu);
	addButton(1, "Hair", accessHairMenu);
	addButton(2, "Face(1)", accessPage1FaceMenu);
//	addButton(3, "Face(2)", accessPage2FaceMenu);
	addButton(4, "Tongue", accessTongueMenu);
	addButton(5, "Eyes", accessEyesMenu);
	addButton(6, "Ears(1)", accessPage1EarsMenu);
//	addButton(7, "Ears(2)", accessPage2EarsMenu);
	addButton(8, "Horns", accessHornsMenu);
	addButton(9, "Antennae", accessAntennaeMenu);
//	addButton(10, "Gills", accessGillsMenu);
	addButton(11, "Arms", accessArmsMenu);
	addButton(12, "Tail(1)", accessPage1TailMenu);
	addButton(13, "Tail(2)", accessPage2TailMenu);
	addButton(14, "Back", accessMetamorphMenu);
}
private function accessSkinMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedFur) >= 0 && player.skinType != SKIN_TYPE_FUR && player.soulforce >= 100) addButton(0, "Fur", metamorphFur);
	else if (player.findStatusAffect(StatusAffects.UnlockedFur) >= 0 && player.skinType == SKIN_TYPE_FUR) addButtonDisabled(0, "Fur", "You already have fur.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFur) >= 0 && player.skinType != SKIN_TYPE_FUR && player.soulforce < 100) addButtonDisabled(0, "Fur", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(0, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedScales) >= 0 && player.skinType != SKIN_TYPE_SCALES && player.soulforce >= 100) addButton(1, "Scales", metamorphScales);
	else if (player.findStatusAffect(StatusAffects.UnlockedScales) >= 0 && player.skinType == SKIN_TYPE_SCALES) addButtonDisabled(1, "Scales", "You already have scales.");
	else if (player.findStatusAffect(StatusAffects.UnlockedScales) >= 0 && player.skinType != SKIN_TYPE_SCALES && player.soulforce < 100) addButtonDisabled(1, "Scales", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(1, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedHarpyHair) >= 0 && player.hairType != 1 && player.soulforce >= 100) addButton(0, "Harpy", metamorphHarpyHair);
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyHair) >= 0 && player.hairType == 1) addButtonDisabled(0, "Harpy", "You already have harpy hair.");
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyHair) >= 0 && player.hairType != 1 && player.soulforce < 100) addButtonDisabled(0, "Harpy", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(0, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessPage1FaceMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedLizardFace) >= 0 && player.faceType != FACE_LIZARD && player.soulforce >= 100) addButton(7, "Lizard", metamorphLizardFace);
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardFace) >= 0 && player.faceType == FACE_LIZARD) addButtonDisabled(7, "Lizard", "You already have lizard face.");
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardFace) >= 0 && player.faceType != FACE_LIZARD && player.soulforce < 100) addButtonDisabled(7, "Lizard", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(7, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxFace) >= 0 && player.faceType != FACE_FOX && player.soulforce >= 100) addButton(11, "Fox", metamorphFaceFox);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxFace) >= 0 && player.faceType == FACE_FOX) addButtonDisabled(11, "Fox", "You already have fox face.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxFace) >= 0 && player.faceType != FACE_FOX && player.soulforce < 100) addButtonDisabled(11, "Fox", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(11, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessPage2FaceMenu():void {
	menu();
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessTongueMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedDemonTonuge) >= 0 && player.tongueType != TONUGE_DEMONIC && player.soulforce >= 100) addButton(1, "Demon", metamorphTonugeDemonic);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonTonuge) >= 0 && player.tongueType == TONUGE_DEMONIC) addButtonDisabled(1, "Demon", "You already have demon tonuge.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonTonuge) >= 0 && player.tongueType != TONUGE_DEMONIC && player.soulforce < 100) addButtonDisabled(1, "Demon", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(1, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessEyesMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedFoxEyes) >= 0 && player.eyeType != EYES_FOX && player.soulforce >= 100) addButton(7, "Fox", metamorphEyesFox);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxEyes) >= 0 && player.eyeType == EYES_FOX) addButtonDisabled(7, "Fox", "You already have fox eyes.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxEyes) >= 0 && player.eyeType != EYES_FOX && player.soulforce < 100) addButtonDisabled(7, "Fox", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(7, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedLizardEyes) >= 0 && player.eyeType != EYES_REPTILIAN && player.soulforce >= 100) addButton(8, "Lizard", metamorphLizardEyes);
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardEyes) >= 0 && player.eyeType == EYES_REPTILIAN) addButtonDisabled(8, "Lizard", "You already have lizard eyes.");
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardEyes) >= 0 && player.eyeType != EYES_REPTILIAN && player.soulforce < 100) addButtonDisabled(8, "Lizard", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(8, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessPage1EarsMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedLizardEars) >= 0 && player.earType != EARS_LIZARD && player.soulforce >= 100) addButton(5, "Lizard", metamorphLizardEars);
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardEars) >= 0 && player.earType == EARS_LIZARD) addButtonDisabled(5, "Lizard", "You already have lizard ears.");
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardEars) >= 0 && player.earType != EARS_LIZARD && player.soulforce < 100) addButtonDisabled(5, "Lizard", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(5, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxEars) >= 0 && player.earType != EARS_FOX && player.soulforce >= 100) addButton(8, "Fox", metamorphEarsFox);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxEars) >= 0 && player.earType == EARS_FOX) addButtonDisabled(8, "Fox", "You already have fox ears.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxEars) >= 0 && player.earType != EARS_FOX && player.soulforce < 100) addButtonDisabled(8, "Fox", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(8, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessPage2EarsMenu():void {
	menu();
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessHornsMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedDemonHorns) >= 0 && player.hornType != HORNS_DEMON && player.soulforce >= 100) addButton(0, "Demon", metamorphHornsDemonic);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonHorns) >= 0 && player.hornType == HORNS_DEMON) addButtonDisabled(0, "Demon", "You already have demon horns.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonHorns) >= 0 && player.hornType != HORNS_DEMON && player.soulforce < 100) addButtonDisabled(0, "Demon", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(0, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedDraconicX2) >= 0 && player.hornType != HORNS_DRACONIC_X2 && player.soulforce >= 100) addButton(2, "DraconicX2", metamorphHornsDraconicX2);
	else if (player.findStatusAffect(StatusAffects.UnlockedDraconicX2) >= 0 && player.hornType == HORNS_DRACONIC_X2) addButtonDisabled(2, "DraconicX2", "You already have draconic horns.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDraconicX2) >= 0 && player.hornType != HORNS_DRACONIC_X2 && player.soulforce < 100) addButtonDisabled(2, "DraconicX2", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(2, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedDraconicX4) >= 0 && player.hornType == HORNS_DRACONIC_X2 && player.soulforce >= 200) addButton(3, "DraconicX4", metamorphHornsDraconicX4);
	else if (player.findStatusAffect(StatusAffects.UnlockedDraconicX4) >= 0 && player.hornType == HORNS_DRACONIC_X4_12_INCH_LONG) addButtonDisabled(3, "DraconicX4", "You already have two pairs of drconic horns.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDraconicX4) >= 0 && player.hornType == HORNS_DRACONIC_X2 && player.soulforce < 200) addButtonDisabled(3, "DraconicX4", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDraconicX4) >= 0 && player.hornType != HORNS_DRACONIC_X2) addButtonDisabled(3, "DraconicX4", "You not have proper type of horns for this metamorphosis.");
	else addButtonDisabled(3, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessAntennaeMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedBeeAntennae) >= 0 && player.antennae != ANTENNAE_BEE && player.soulforce >= 100) addButton(1, "Bee", metamorphBeeAntennae);
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeAntennae) >= 0 && player.antennae == ANTENNAE_BEE) addButtonDisabled(1, "Bee", "You already have bee antennaes.");
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeAntennae) >= 0 && player.antennae != ANTENNAE_BEE && player.soulforce < 100) addButtonDisabled(1, "Bee", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(1, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessGillsMenu():void {
	menu();
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessArmsMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedHarpyArms) >= 0 && player.armType != ARM_TYPE_HARPY && player.soulforce >= 100) addButton(0, "Harpy", metamorphHarpyArms);
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyArms) >= 0 && player.armType == ARM_TYPE_HARPY) addButtonDisabled(0, "Harpy", "You already have harpy arms.");
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyArms) >= 0 && player.armType != ARM_TYPE_HARPY && player.soulforce < 100) addButtonDisabled(0, "Harpy", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(0, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedBeeArms) >= 0 && player.armType != ARM_TYPE_BEE && player.soulforce >= 100) addButton(4, "Bee", metamorphBeeArms);
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeArms) >= 0 && player.armType == ARM_TYPE_BEE) addButtonDisabled(4, "Bee", "You already have bee arms.");
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeArms) >= 0 && player.armType != ARM_TYPE_BEE && player.soulforce < 100) addButtonDisabled(4, "Bee", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(4, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxArms) >= 0 && player.armType != ARM_TYPE_FOX && player.soulforce >= 100) addButton(11, "Fox", metamorphArmsFox);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxArms) >= 0 && player.armType == ARM_TYPE_FOX) addButtonDisabled(11, "Fox", "You already have fox arms.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxArms) >= 0 && player.armType != ARM_TYPE_FOX && player.soulforce < 100) addButtonDisabled(11, "Fox", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(11, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedKitsuneArms) >= 0 && player.armType != ARM_TYPE_FOX && player.soulforce >= 100) addButton(12, "Kitsune", metamorphKitsuneArms);
	else if (player.findStatusAffect(StatusAffects.UnlockedKitsuneArms) >= 0 && player.armType == ARM_TYPE_FOX) addButtonDisabled(12, "Kitsune", "You already have kitsune arms.");
	else if (player.findStatusAffect(StatusAffects.UnlockedKitsuneArms) >= 0 && player.armType != ARM_TYPE_FOX && player.soulforce < 100) addButtonDisabled(12, "Kitsune", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(12, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedLizardArms) >= 0 && player.armType != ARM_TYPE_LIZARD && player.soulforce >= 100) addButton(13, "Lizard", metamorphLizardArms);
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardArms) >= 0 && player.armType == ARM_TYPE_LIZARD) addButtonDisabled(13, "Lizard", "You already have lizard arms.");
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardArms) >= 0 && player.armType != ARM_TYPE_LIZARD && player.soulforce < 100) addButtonDisabled(13, "Lizard", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(13, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessPage1TailMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedDemonTail) >= 0 && player.tailType != TAIL_TYPE_DEMONIC && player.soulforce >= 100) addButton(2, "Demon", metamorphTailDemonic);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonTail) >= 0 && player.tailType == TAIL_TYPE_DEMONIC) addButtonDisabled(2, "Demon", "You already have demon tail.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonTail) >= 0 && player.tailType != TAIL_TYPE_DEMONIC && player.soulforce < 100) addButtonDisabled(2, "Demon", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(2, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedBeeTail) >= 0 && player.tailType != TAIL_TYPE_BEE_ABDOMEN && player.soulforce >= 100) addButton(5, "Bee", metamorphBeeTail);
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeTail) >= 0 && player.tailType == TAIL_TYPE_BEE_ABDOMEN) addButtonDisabled(5, "Bee", "You already have bee tail.");
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeTail) >= 0 && player.tailType != TAIL_TYPE_BEE_ABDOMEN && player.soulforce < 100) addButtonDisabled(5, "Bee", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(5, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedLizardTail) >= 0 && player.tailType != TAIL_TYPE_LIZARD && player.soulforce >= 100) addButton(8, "Lizard", metamorphLizardTail);
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardTail) >= 0 && player.tailType == TAIL_TYPE_LIZARD) addButtonDisabled(8, "Lizard", "You already have lizard tail.");
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardTail) >= 0 && player.tailType != TAIL_TYPE_LIZARD && player.soulforce < 100) addButtonDisabled(8, "Lizard", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(8, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedHarpyTail) >= 0 && player.tailType != TAIL_TYPE_HARPY && player.soulforce >= 100) addButton(10, "Harpy", metamorphHarpyTail);
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyTail) >= 0 && player.tailType == TAIL_TYPE_HARPY) addButtonDisabled(8, "Harpy", "You already have harpy tail.");
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyTail) >= 0 && player.tailType != TAIL_TYPE_HARPY && player.soulforce < 100) addButtonDisabled(8, "Harpy", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(10, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxTail) >= 0 && player.tailType != TAIL_TYPE_FOX && player.soulforce >= 100) addButton(13, "Fox", metamorphTailFox);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 1) addButtonDisabled(13, "Fox", "You already have single fox tail.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail) >= 0 && player.tailType != TAIL_TYPE_FOX && player.soulforce < 100) addButtonDisabled(13, "Fox", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(13, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}
private function accessPage2TailMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedFoxTail2nd) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 1 && player.soulforce >= 200) addButton(0, "Fox 2nd", metamorphTailFox2nd);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail2nd) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 2) addButtonDisabled(0, "Fox 2nd", "You already have two fox tails.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail2nd) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 1 && player.soulforce < 200) addButtonDisabled(0, "Fox 2nd", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail2nd) >= 0 && player.tailType != TAIL_TYPE_FOX && player.tailVenom != 1) addButtonDisabled(0, "Fox 2nd", "You not have proper type and amount of tails for this metamorphosis.");
	else addButtonDisabled(0, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxTail3rd) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 2 && player.soulforce >= 300) addButton(1, "Fox 3rd", metamorphTailFox2nd);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail3rd) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 3) addButtonDisabled(1, "Fox 3rd", "You already have three fox tails.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail3rd) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 2 && player.soulforce < 300) addButtonDisabled(1, "Fox 3rd", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail3rd) >= 0 && player.tailType != TAIL_TYPE_FOX && player.tailVenom != 2) addButtonDisabled(1, "Fox 3rd", "You not have proper type and amount of tails for this metamorphosis.");
	else addButtonDisabled(1, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxTail4th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 3 && player.soulforce >= 400) addButton(2, "Fox 4th", metamorphTailFox2nd);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail4th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 4) addButtonDisabled(2, "Fox 4th", "You already have four fox tails.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail4th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 3 && player.soulforce < 400) addButtonDisabled(2, "Fox 4th", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail4th) >= 0 && player.tailType != TAIL_TYPE_FOX && player.tailVenom != 3) addButtonDisabled(2, "Fox 4th", "You not have proper type and amount of tails for this metamorphosis.");
	else addButtonDisabled(2, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxTail5th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 4 && player.soulforce >= 500) addButton(3, "Fox 5th", metamorphTailFox2nd);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail5th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 5) addButtonDisabled(3, "Fox 5th", "You already have five fox tails.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail5th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 4 && player.soulforce < 500) addButtonDisabled(3, "Fox 5th", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail5th) >= 0 && player.tailType != TAIL_TYPE_FOX && player.tailVenom != 4) addButtonDisabled(3, "Fox 5th", "You not have proper type and amount of tails for this metamorphosis.");
	else addButtonDisabled(3, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedFoxTail6th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 5 && player.soulforce >= 600) addButton(4, "Fox 6th", metamorphTailFox2nd);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail6th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 6) addButtonDisabled(4, "Fox 6th", "You already have six fox tails.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail6th) >= 0 && player.tailType == TAIL_TYPE_FOX && player.tailVenom == 5 && player.soulforce < 600) addButtonDisabled(4, "Fox 6th", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxTail6th) >= 0 && player.tailType != TAIL_TYPE_FOX && player.tailVenom != 5) addButtonDisabled(4, "Fox 6th", "You not have proper type and amount of tails for this metamorphosis.");
	else addButtonDisabled(4, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage1MetamorphMenu);
}

private function accessPage2MetamorphMenu():void {
	menu();
//	addButton(0, "Tail(3)", accessPage3TailMenu);
	addButton(1, "Wings(1)", accessPage1WingsMenu);
//	addButton(2, "Wings(2)", accessPage2WingsMenu);
	addButton(3, "Legs(1)", accessPage1LegsMenu);
	addButton(4, "Legs(2)", accessPage2LegsMenu);
//	addButton(5, "Legs(3)", accessPage3LegsMenu);
//	addButton(6, "Rear B.", accessRearBodyMenu);
//	addButton(7, "Back", accessMetamorphMenu);
//	addButton(8, "Back", accessMetamorphMenu);
//	addButton(9, "Back", accessMetamorphMenu);
//	addButton(10, "Back", accessMetamorphMenu);
//	addButton(11, "Back", accessMetamorphMenu);
//	addButton(12, "Back", accessMetamorphMenu);
//	addButton(13, "Back", accessMetamorphMenu);
	addButton(14, "Back", accessMetamorphMenu);
}
private function accessPage3TailMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessPage1WingsMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedBeeWingsSmall) >= 0 && player.wingType != WING_TYPE_BEE_LIKE_SMALL && player.soulforce >= 100) addButton(0, "Bee(S)", metamorphBeeWingsSmall);
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeWingsSmall) >= 0 && player.wingType == WING_TYPE_BEE_LIKE_SMALL) addButtonDisabled(0, "Bee(S)", "You already have small bee wings.");
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeWingsSmall) >= 0 && player.wingType != WING_TYPE_BEE_LIKE_SMALL && player.soulforce < 100) addButtonDisabled(0, "Bee(S)", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(0, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedBeeWingsLarge) >= 0 && player.wingType == WING_TYPE_BEE_LIKE_SMALL && player.soulforce >= 200) addButton(1, "Bee(L)", metamorphBeeWingsLarge);
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeWingsLarge) >= 0 && player.wingType == WING_TYPE_BEE_LIKE_LARGE) addButtonDisabled(1, "Bee(L)", "You already have large bee wings.");
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeWingsLarge) >= 0 && player.wingType != WING_TYPE_BEE_LIKE_LARGE && player.soulforce < 200) addButtonDisabled(1, "Bee(L)", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeWingsLarge) >= 0 && player.wingType != WING_TYPE_BEE_LIKE_SMALL) addButtonDisabled(1, "Bee(L)", "You not have proper type of wings for this metamorphosis.");
	else addButtonDisabled(1, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedDemonTinyBatWings) >= 0 && player.wingType != WING_TYPE_BAT_LIKE_TINY && player.soulforce >= 100) addButton(4, "Demon(S)", metamorphWingsDemonicTiny);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonTinyBatWings) >= 0 && player.wingType == WING_TYPE_BAT_LIKE_TINY) addButtonDisabled(4, "Demon(S)", "You already have small bat wings.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonTinyBatWings) >= 0 && player.wingType != WING_TYPE_BAT_LIKE_TINY && player.soulforce < 100) addButtonDisabled(4, "Demon(S)", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(4, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings) >= 0 && player.wingType == WING_TYPE_BAT_LIKE_TINY && player.soulforce >= 200) addButton(5, "Demon(L)", metamorphWingsDemoncLarge);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings) >= 0 && player.wingType == WING_TYPE_BAT_LIKE_LARGE) addButtonDisabled(5, "Demon(L)", "You already have large bat wings.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings) >= 0 && player.wingType != WING_TYPE_BAT_LIKE_LARGE && player.soulforce < 200) addButtonDisabled(5, "Demon(L)", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings) >= 0 && player.wingType != WING_TYPE_BAT_LIKE_TINY) addButtonDisabled(5, "Demon(L)", "You not have proper type of wings for this metamorphosis.");
	else addButtonDisabled(5, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedHarpyWings) >= 0 && player.wingType != WING_TYPE_FEATHERED_LARGE && player.soulforce >= 100) addButton(6, "Harpy", metamorphHarpyWings);
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyWings) >= 0 && player.wingType == WING_TYPE_FEATHERED_LARGE) addButtonDisabled(6, "Harpy", "You already have harpy wings.");
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyWings) >= 0 && player.wingType != WING_TYPE_FEATHERED_LARGE && player.soulforce < 100) addButtonDisabled(6, "Harpy", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(6, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings2) >= 0 && player.wingType == WING_TYPE_BAT_LIKE_LARGE && player.soulforce >= 300) addButton(10, "Demon(L2)", metamorphWingsDemonicLarge2);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings2) >= 0 && player.wingType == WING_TYPE_BAT_LIKE_LARGE_2) addButtonDisabled(10, "Demon(L2)", "You already have two large pairs of bat wings.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings2) >= 0 && player.wingType != WING_TYPE_BAT_LIKE_LARGE_2 && player.soulforce < 300) addButtonDisabled(10, "Demon(L2)", "You not have enough Soulforce for this metamorphosis.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonLargeBatWings2) >= 0 && player.wingType != WING_TYPE_BAT_LIKE_LARGE) addButtonDisabled(10, "Demon(L2)", "You not have proper type of wings for this metamorphosis.");
	else addButtonDisabled(10, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessPage2WingsMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessPage1LegsMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedDemonHighHeels) >= 0 && player.lowerBody != LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS && (player.gender == 2 || player.gender == 3) && player.soulforce >= 100) addButton(3, "Demon(F)", metamorphLegsDemonicHighHeels);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonHighHeels) >= 0 && player.lowerBody == LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS && (player.gender == 2 || player.gender == 3)) addButtonDisabled(3, "Demon(F)", "You already have demon high heels lower body.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonHighHeels) >= 0 && player.lowerBody != LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS && (player.gender == 2 || player.gender == 3) && player.soulforce < 100) addButtonDisabled(3, "Demon(F)", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(3, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedDemonClawedLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_DEMONIC_CLAWS && player.gender != 2 && player.soulforce >= 100) addButton(4, "Demon(M)", metamorphLegsDemonicClaws);
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonClawedLegs) >= 0 && player.lowerBody == LOWER_BODY_TYPE_DEMONIC_CLAWS && player.gender != 2) addButtonDisabled(4, "Demon(M)", "You already have demon clawed feet lower body.");
	else if (player.findStatusAffect(StatusAffects.UnlockedDemonClawedLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_DEMONIC_CLAWS && player.gender != 2 && player.soulforce < 100) addButtonDisabled(4, "Demon(M)", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(4, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedBeeLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_BEE && player.soulforce >= 100) addButton(5, "Bee", metamorphBeeLegs);
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeLegs) >= 0 && player.lowerBody == LOWER_BODY_TYPE_BEE) addButtonDisabled(5, "Bee", "You already have bee lower body.");
	else if (player.findStatusAffect(StatusAffects.UnlockedBeeLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_BEE && player.soulforce < 100) addButtonDisabled(5, "Bee", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(5, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedLizardLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_LIZARD && player.soulforce >= 100) addButton(8, "Lizard", metamorphLizardLegs);
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardLegs) >= 0 && player.lowerBody == LOWER_BODY_TYPE_LIZARD) addButtonDisabled(8, "Lizard", "You already have lizard lower body.");
	else if (player.findStatusAffect(StatusAffects.UnlockedLizardLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_LIZARD && player.soulforce < 100) addButtonDisabled(8, "Lizard", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(8, "???", "You not yet unlocked this metamorphosis!");
	if (player.findStatusAffect(StatusAffects.UnlockedHarpyLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_HARPY && player.soulforce >= 100) addButton(10, "Harpy", metamorphHarpyLegs);
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyLegs) >= 0 && player.lowerBody == LOWER_BODY_TYPE_HARPY) addButtonDisabled(10, "Harpy", "You already have harpy lower body.");
	else if (player.findStatusAffect(StatusAffects.UnlockedHarpyLegs) >= 0 && player.lowerBody != LOWER_BODY_TYPE_HARPY && player.soulforce < 100) addButtonDisabled(10, "Harpy", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(10, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessPage2LegsMenu():void {
	menu();
	if (player.findStatusAffect(StatusAffects.UnlockedFoxLowerBody) >= 0 && player.lowerBody != LOWER_BODY_TYPE_FOX && player.soulforce >= 100) addButton(1, "Fox", metamorphLowerBodyFox);
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxLowerBody) >= 0 && player.lowerBody == LOWER_BODY_TYPE_FOX) addButtonDisabled(1, "Fox", "You already have fox lower body.");
	else if (player.findStatusAffect(StatusAffects.UnlockedFoxLowerBody) >= 0 && player.lowerBody != LOWER_BODY_TYPE_FOX && player.soulforce < 100) addButtonDisabled(1, "Fox", "You not have enough Soulforce for this metamorphosis.");
	else addButtonDisabled(1, "???", "You not yet unlocked this metamorphosis!");
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessPage3LegsMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessRearBodyMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}/*
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage2MetamorphMenu);
}

private function accessPage3MetamorphMenu():void {
	menu();
	addButton(0, "Back", accessMetamorphMenu);
	addButton(1, "Back", accessMetamorphMenu);
	addButton(2, "Back", accessMetamorphMenu);
	addButton(3, "Back", accessMetamorphMenu);
	addButton(4, "Back", accessMetamorphMenu);
	addButton(5, "Back", accessMetamorphMenu);
	addButton(6, "Back", accessMetamorphMenu);
	addButton(7, "Back", accessMetamorphMenu);
	addButton(8, "Back", accessMetamorphMenu);
	addButton(9, "Back", accessMetamorphMenu);
	addButton(10, "Back", accessMetamorphMenu);
	addButton(11, "Back", accessMetamorphMenu);
	addButton(12, "Back", accessMetamorphMenu);
	addButton(13, "Back", accessMetamorphMenu);
	addButton(14, "Back", accessMetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage3MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage3MetamorphMenu);
}

private function accessPage4MetamorphMenu():void {
	menu();
	addButton(0, "Back", accessMetamorphMenu);
	addButton(1, "Back", accessMetamorphMenu);
	addButton(2, "Back", accessMetamorphMenu);
	addButton(3, "Back", accessMetamorphMenu);
	addButton(4, "Back", accessMetamorphMenu);
	addButton(5, "Back", accessMetamorphMenu);
	addButton(6, "Back", accessMetamorphMenu);
	addButton(7, "Back", accessMetamorphMenu);
	addButton(8, "Back", accessMetamorphMenu);
	addButton(9, "Back", accessMetamorphMenu);
	addButton(10, "Back", accessMetamorphMenu);
	addButton(11, "Back", accessMetamorphMenu);
	addButton(12, "Back", accessMetamorphMenu);
	addButton(13, "Back", accessMetamorphMenu);
	addButton(14, "Back", accessMetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage4MetamorphMenu);
}
private function accessHairMenu():void {
	menu();
	addButton(14, "Back", accessPage4MetamorphMenu);
}


private function metamorphFur():void {
	clearOutput();
	player.soulforce -= 100;
	
	doNext(accessMetamorphMenu);
}
private function metamorphFur():void {
	clearOutput();
	player.soulforce -= 100;
	
	doNext(accessMetamorphMenu);
}
private function metamorphSpider():void {
	clearOutput();
	player.soulforce -= 100;
	
	doNext(accessMetamorphMenu);
}
private function metamorphSpider():void {
	clearOutput();
	player.soulforce -= 100;
	
	doNext(accessMetamorphMenu);
}
private function metamorphHarpyWings():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.wingType > WING_TYPE_NONE) outputText("\n\nSensation fades from your " + player.wingDesc + " wings slowly but surely, leaving them dried out husks that break off to fall on the ground. Your back closes up to conceal the loss, as smooth and unbroken as the day you entered the portal.", false);
	outputText("\n\nPain lances through your back, the muscles knotting oddly and pressing up to bulge your " + player.skinDesc + ". It hurts, oh gods does it hurt, but you can't get a good angle to feel at the source of your agony. A loud crack splits the air, and then your body is forcing a pair of narrow limbs through a gap in your " + player.armorName + ". Blood pumps through the new appendages, easing the pain as they fill out and grow. Tentatively, you find yourself flexing muscles you didn't know you had, and <b>you're able to curve the new growths far enough around to behold your brand new, " + player.hairColor + " wings.</b>", false);
	player.wingType = WING_TYPE_FEATHERED_LARGE;
	player.wingDesc = "large, feathered";
	doNext(accessMetamorphMenu);
}
private function metamorphHarpyHair():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\nA tingling starts in your scalp, getting worse and worse until you're itching like mad, the feathery strands of your hair tickling your fingertips while you scratch like a dog itching a flea. When you pull back your hand, you're treated to the sight of downy fluff trailing from your fingernails. A realization dawns on you - you have feathers for hair, just like a harpy!", false);
	player.hairType = 1;
	doNext(accessMetamorphMenu);
}
private function metamorphHarpyArms():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\nYou smile impishly as you lick the last bits of the nut from your teeth, but when you go to wipe your mouth, instead of the usual texture of your " + player.skinDesc + " on your lips, you feel feathers! You look on in horror while more of the avian plumage sprouts from your " + player.skinDesc + ", covering your forearms until <b>your arms look vaguely like wings</b>. Your hands remain unchanged thankfully. It'd be impossible to be a champion without hands! The feathery limbs might help you maneuver if you were to fly, but there's no way they'd support you alone.", false);
	player.armType = ARM_TYPE_HARPY;
	doNext(accessMetamorphMenu);
}
private function metamorphHarpyTail():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.tailType > TAIL_TYPE_NONE) outputText("\n\nYour tail shortens, folding into the crack of your " + buttDescript() + " before it disappears. A moment later, a fan of feathers erupts in its place, fluffing up and down instinctively every time the breeze shifts. <b>You have a feathery harpy tail!</b>", false);
	else outputText("\n\nA tingling tickles the base of your spine, making you squirm in place. A moment later, it fades, but a fan of feathers erupts from your " + player.skinDesc + " in its place. The new tail fluffs up and down instinctively with every shift of the breeze. <b>You have a feathery harpy tail!</b>", false);
	player.tailType = TAIL_TYPE_HARPY;
	doNext(accessMetamorphMenu);
}
private function metamorphHarpyLegs():void {
	clearOutput();
	player.soulforce -= 100;
	if (!player.isGoo()) outputText("\n\nYour " + player.legs() + " creak ominously a split-second before they go weak and drop you on the ground. They go completely limp, twisting and reshaping before your eyes in ways that make you wince. Your lower body eventually stops, but the form it's settled on is quite thick in the thighs. Even your " + player.feet() + " have changed.  ", false);
	else outputText("\n\nYour gooey undercarriage loses some of its viscosity, dumping you into the puddle that was once your legs. As you watch, the fluid pulls together into a pair of distinctly leg-like shapes, solidifying into a distinctly un-gooey form. You've even regained a pair of feet!  ", false);
	outputText("While humanoid in shape, they have two large, taloned toes on the front and a single claw protruding from the heel. The entire ensemble is coated in " + player.hairColor + " feathers from ankle to hip, reminding you of the bird-women of the mountains. <b>You now have harpy legs!</b>", false);
	player.lowerBody = LOWER_BODY_TYPE_HARPY;
	player.legCount = 2;
	doNext(accessMetamorphMenu);
}
private function metamorphBeeWingsLarge():void {
	clearOutput();
	player.soulforce -= 200;
	outputText("\n\nYour wings tingle as they grow, filling out until they are large enough to lift you from the ground and allow you to fly!  <b>You now have large bee wings!</b>  You give a few experimental flaps and begin hovering in place, a giddy smile plastered on your face by the thrill of flight.");
	player.wingType = WING_TYPE_BEE_LIKE_LARGE;
	player.wingDesc = "large bee-like";
	doNext(accessMetamorphMenu);
}
private function metamorphBeeWingsSmall():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\nYou feel an itching between your shoulder-blades as something begins growing there.  You twist and contort yourself, trying to scratch and bring yourself relief, and failing miserably.  A sense of relief erupts from you as you feel something new grow out from your body.  You hastily remove the top portion of your " + player.armorName + " and marvel as a pair of small bee-like wings sprout from your back.  Tenderly flexing your new muscles, you find you can flap them quite fast.  Unfortunately you can't seem to flap your little wings fast enough to fly, but they would certainly slow a fall.  A few quick modifications to your " + player.armorName + " later and you are ready to continue your journey with <b>your new bee wings</b>.");
	player.wingType = WING_TYPE_BEE_LIKE_SMALL;
	player.wingDesc = "small bee-like";
	doNext(accessMetamorphMenu);
}
private function metamorphBeeTail():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.tailType > TAIL_TYPE_NONE) outputText("\n\nPainful swelling just above your " + buttDescript() + " doubles you over, and you hear the sound of your tail dropping off onto the ground!  Before you can consider the implications, the pain gets worse, and you feel your backside bulge outward sickeningly, cracking and popping as a rounded bee-like abdomen grows in place of your old tail.  It grows large enough to be impossible to hide, and with a note of finality, your stinger slides free with an audible 'snick'.");
	else outputText("\n\nPainful swelling just above your " + buttDescript() + " doubles you over.  It gets worse and worse as the swollen lump begins to protrude from your backside, swelling and rounding with a series of pops until you have a bulbous abdomen hanging just above your butt.  The whole thing is covered in a hard chitinous material, and large enough to be impossible to hide.  You sigh as your stinger slides into place with a 'snick', finishing the transformation.  <b>You have a bee's abdomen.</b>");
	player.tailType = TAIL_TYPE_BEE_ABDOMEN;
	player.tailVenom = 10;
	player.tailRecharge = 2;
	doNext(accessMetamorphMenu);
}
private function metamorphBeeArms():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.armType == ARM_TYPE_HARPY || player.armType == ARM_TYPE_HUMAN) {
		if (player.armType == ARM_TYPE_HARPY) outputText("The feathers covering your arms fall away, leaving them to return to a far more human appearance.  ");
		outputText("You watch, spellbound, while your forearms gradually become shiny.  The entire outer structure of your arms tingles while it divides into segments, <b>turning the " + player.skinFurScales() + " into a shiny black carapace</b>.  A moment later the pain fades and you are able to turn your gaze down to your beautiful new arms, covered in shining black chitin from the upper arm down, and downy yellow fuzz along your upper arm.");
	}
	else {
		if (player.armType == ARM_TYPE_SPIDER) outputText("On your upper arms slowly starting to grown yellow fuzz making them looks more like those of bee.");
		if (player.armType == ARM_TYPE_MANTIS) outputText("The long scythe extending from your wrist crumbling, while chitin covering your mantis arms slowly starting to change colors, <b>turning the " + player.skinFurScales() + " into a shiny black carapace</b>. Additionaly on your upper arms appear yellow fuzz.");
	}
	player.armType = ARM_TYPE_BEE;
	doNext(accessMetamorphMenu);
}
private function metamorphBeeLegs():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.lowerBody != LOWER_BODY_TYPE_HUMAN) restoreHumanLegs();
	outputText("\n\nYour legs tremble with sudden unbearable pain, as if they're being ripped apart from the inside out and being stitched together again all at once.  You scream in agony as you hear bones snapping and cracking.  A moment later the pain fades and you are able to turn your gaze down to your beautiful new legs, covered in shining black chitin from the thigh down, and downy yellow fuzz along your upper thighs.");
	player.lowerBody = LOWER_BODY_TYPE_BEE;
	doNext(accessMetamorphMenu);
}
private function metamorphBeeAntennae():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.antennae == ANTENNAE_MANTIS) outputText("\n\nYour head itches momentarily as your two long prehensile antennae changes slowly into floppy ones similar to those seen at bees.");
	else outputText("\n\nYour head itches momentarily as two floppy antennae sprout from your " + hairDescript() + ".");
	player.antennae = ANTENNAE_BEE;
	doNext(accessMetamorphMenu);
}
private function metamorphLizardFace():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\nTerrible agony wracks your " + player.face() + " as bones crack and shift.  Your jawbone rearranges while your cranium shortens.  The changes seem to last forever; once they've finished, no time seems to have passed.  Your fingers brush against your toothy snout as you get used to your new face.  It seems <b>you have a toothy, reptilian visage now.</b>", false);
	player.faceType = FACE_LIZARD;
	doNext(accessMetamorphMenu);
}
private function metamorphLizardEars():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\nTightness centers on your scalp, pulling your ears down from their normal, fleshy shape into small, scaley bumps with holes in their centers.  <b>You have reptilian ears!</b>", false);
	player.earType = EARS_LIZARD;
	doNext(accessMetamorphMenu);
}
private function metamorphLizardEyes():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.eyeType != EYES_HUMAN) removeOddEyes();
	outputText("\n\nYou suddenly feel your vision shifting. It takes a moment for you to adapt to the weird sensory changes but once you recover you go to a puddle and notice your eyes now have a slitted pupil like that of a reptile taking on a yellow hue with a slit.  <b>You now have reptilian eyes!</b>");
	player.eyeType = EYES_REPTILIAN;
	doNext(accessMetamorphMenu);
}
private function metamorphLizardTail():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.tailType == TAIL_TYPE_NONE) outputText("\n\nYou drop onto the ground as your spine twists and grows, forcing the flesh above your " + assDescript() + " to bulge out.  New bones form, one after another, building a tapered, prehensile tail onto the back of your body.  <b>You now have a reptilian tail!</b>", false);
	else outputText("\n\nYou drop to the ground as your tail twists and grows, changing its shape in order to gradually taper to a point.  It flicks back and forth, prehensile and totally under your control.  <b>You now have a reptilian tail.</b>", false);
	player.tailType = TAIL_TYPE_LIZARD;
	doNext(accessMetamorphMenu);
}
private function metamorphLizardArms():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\nYou scratch at your biceps absentmindedly, but no matter how much you scratch, it isn't getting rid of the itch.  After longer moment of ignoring it you finaly glancing down in irritation, only to discover that your arms former appearance changed into this of lizard one with leathery scales and short claws replacing your fingernails.  <b>You now have a lizard arms.</b>", false);
	player.armType = ARM_TYPE_LIZARD;
	doNext(accessMetamorphMenu);
}
private function metamorphLizardLegs():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.lowerBody == LOWER_BODY_TYPE_HOOFED) outputText("\n\nYou scream in agony as you feel your hooves crack and break apart, beginning to rearrange.  Your legs change to a digitigrade shape while your feet grow claws and shift to have three toes on the front and a smaller toe on the heel.", false);
	else if (player.isTaur()) outputText("\n\nYour lower body is wracked by pain!  Once it passes, you discover that you're standing on digitigrade legs with lizard-like claws.", false);
	else if (player.lowerBody == LOWER_BODY_TYPE_HUMAN || player.lowerBody == LOWER_BODY_TYPE_DOG || player.lowerBody == LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS || player.lowerBody == LOWER_BODY_TYPE_DEMONIC_CLAWS || player.lowerBody == LOWER_BODY_TYPE_PLANT_HIGH_HEELS || player.lowerBody == LOWER_BODY_TYPE_PLANT_ROOT_CLAWS || player.lowerBody == LOWER_BODY_TYPE_BEE || player.lowerBody == LOWER_BODY_TYPE_CAT || player.lowerBody == LOWER_BODY_TYPE_LIZARD) outputText("\n\nYou scream in agony as you feel the bones in your legs break and begin to rearrange. They change to a digitigrade shape while your feet grow claws and shift to have three toes on the front and a smaller toe on the heel.", false);
	else outputText("\n\nPain rips through your " + player.legs() + ", morphing and twisting them until the bones rearrange into a digitigrade configuration.  The strange legs have three-toed, clawed feet, complete with a small vestigial claw-toe on the back for added grip.", false);
	outputText("  <b>You have reptilian legs and claws!</b>", false);
	player.lowerBody = LOWER_BODY_TYPE_LIZARD;
	player.legCount = 2;
	doNext(accessMetamorphMenu);
}
private function metamorphHornsDraconicX4():void {
	clearOutput();
	player.soulforce -= 200;
	outputText("\n\nA second row of horns erupts under the first, and though they are narrower, they grow nearly as long as your first row before they stop.  A sense of finality settles over you.  <b>You have as many horns as a lizan can grow.</b>", false);
	player.horns = 12;
	player.hornType = HORNS_DRACONIC_X4_12_INCH_LONG;
	doNext(accessMetamorphMenu);
}
private function metamorphHornsDraconicX2():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\nYou feel your horns changing and warping, and reach back to touch them.  They have a slight curve and a gradual taper.  They must look something like the horns the dragons in your village's legends always had.", false);
	player.horns = 4;
	player.hornType = HORNS_DRACONIC_X2;
	doNext(accessMetamorphMenu);
}
private function metamorphWingsDemonicLarge2():void {
	clearOutput();
	player.soulforce -= 300;
	outputText("\n\nYour large demonic wings starts to tremble and then starts to split from the tip.  You stretch over your shoulder to stroke them as they divide, turning into two pairs of full-sized demon-wings.  <b>Your demonic wings have splited into two pairs!</b>", false);
	player.wingType = WING_TYPE_BAT_LIKE_LARGE_2;
	player.wingDesc = "two large pairs of bat-like";
	doNext(accessMetamorphMenu);
}
private function metamorphWingsDemoncLarge():void {
	clearOutput();
	player.soulforce -= 200;
	outputText("\n\nYour small demonic wings stretch and grow, tingling with the pleasure of being attached to such a tainted body.  You stretch over your shoulder to stroke them as they unfurl, turning into full-sized demon-wings.  <b>Your demonic wings have grown!</b>", false);
	player.wingType = WING_TYPE_BAT_LIKE_LARGE;
	player.wingDesc = "large, bat-like";
	doNext(accessMetamorphMenu);
}
private function metamorphWingsDemonicTiny():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.wingType != WING_TYPE_NONE) removeOldWings();
	outputText("\n\nA knot of pain forms in your shoulders as they tense up.  With a surprising force, a pair of small demonic wings sprout from your back, ripping a pair of holes in the back of your " + player.armorName + ".  <b>You now have tiny demonic wings</b>.", false);
	player.wingType = WING_TYPE_BAT_LIKE_TINY;
	player.wingDesc = "tiny, bat-like";
	doNext(accessMetamorphMenu);
}
private function metamorphLegsDemonicClaws():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.lowerBody != LOWER_BODY_TYPE_HUMAN) restoreHumanLegs();
	outputText("\n\n", false);
	outputText("Every muscle and sinew below your hip tingles and you begin to stagger. Seconds after you sit down, pain explodes in your " + player.feet() + ". Something hard breaks through your sole from the inside out as your toes splinter and curve cruelly. The pain slowly diminishes and your eyes look along a human leg that splinters at the foot into a claw with sharp black nails. When you relax, your feet grip the ground easily. <b>Your feet are now formed into demonic claws.</b>", false);
	player.lowerBody = LOWER_BODY_TYPE_DEMONIC_CLAWS;
	doNext(accessMetamorphMenu);
}
private function metamorphLegsDemonicHighHeels():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.lowerBody != LOWER_BODY_TYPE_HUMAN) restoreHumanLegs();
	outputText("\n\n", false);
	outputText("Every muscle and sinew below your hip tingles and you begin to stagger. Seconds after you sit down, pain explodes in your " + player.feet() + ". Something hard breaks through your sole from the inside out. The pain slowly diminishes and your eyes look along a human leg to a thin and sharp horn protruding from the heel. When you relax, your feet are pointing down and their old posture is only possible with an enormous effort. <b>Your feet are now formed into demonic high-heels.</b> Tentatively you stand up and try to take a few steps. To your surprise you feel as if you were born with this and stride vigorously forward, hips swaying.", false);
	player.lowerBody = LOWER_BODY_TYPE_DEMONIC_HIGH_HEELS;
	doNext(accessMetamorphMenu);
}
private function metamorphTonugeDemonic():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("\n\n", false);
	outputText("Your snake-like tongue tingles, thickening in your mouth until it feels more like your old human tongue, at least for the first few inches.  It bunches up inside you, and when you open up your mouth to release it, roughly two feet of tongue dangles out.  You find it easy to move and control, as natural as walking.  <b>You now have a long demon-tongue.</b>", false);
	player.tongueType = TONUGE_DEMONIC;
	doNext(accessMetamorphMenu);
}
private function metamorphHornsDemonic():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.horns < 12 && (player.hornType == HORNS_NONE || player.hornType == HORNS_DEMON)) {
		outputText("\n\n", false);
		if (player.horns == 0) {
			outputText("A small pair of demon horns erupts from your forehead.  They actually look kind of cute.  <b>You have horns!</b>", false);
		}
		else outputText("Another pair of demon horns, larger than the last, forms behind the first row.", false);
		if (player.hornType == HORNS_NONE) player.hornType = HORNS_DEMON;
		player.horns++;
		player.horns++;
	}
	else if (player.hornType > HORNS_DEMON && player.hornType != HORNS_ORCHID) {
		outputText("\n\n", false);
		outputText("Your horns shift, shrinking into two small demonic-looking horns.", false);
		player.horns = 2;
		player.hornType = HORNS_DEMON;
	}
	doNext(accessMetamorphMenu);
}
private function metamorphTailDemonic():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.tailType != TAIL_TYPE_NONE) {
		outputText("\n\n", false);
		if (player.tailType == TAIL_TYPE_SPIDER_ADBOMEN || player.tailType == TAIL_TYPE_BEE_ABDOMEN) outputText("You feel a tingling in your insectile abdomen as it stretches, narrowing, the exoskeleton flaking off as it transforms into a flexible demon-tail, complete with a round spaded tip.  ", false);
		else outputText("You feel a tingling in your tail.  You are amazed to discover it has shifted into a flexible demon-tail, complete with a round spaded tip.  ", false);
		outputText("<b>Your tail is now demonic in appearance.</b>", false);
	}
	else outputText("\n\nA pain builds in your backside... growing more and more pronounced.  The pressure suddenly disappears with a loud ripping and tearing noise.  <b>You realize you now have a demon tail</b>... complete with a cute little spade.", false);
	player.tailType = TAIL_TYPE_DEMONIC;
	doNext(accessMetamorphMenu);
}
private function metamorphKitsuneArms():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.armType != ARM_TYPE_HUMAN) restoreHumanArms();
	outputText("\n\n Your finger tingle as your nails sharpen to point. You run them on a tree bark and they feel way harder than your old human nails. <b>You will be able to claw at your opponent with your sharp kitsune nails.</b>", false);
	player.armType = ARM_TYPE_KITSUNE;
	doNext(accessMetamorphMenu);
}
private function metamorphTailFox6th():void {
	clearOutput();
	player.soulforce -= 600;
	outputText("A tingling pressure builds on your backside, and your bushy tails begin to glow with an eerie, ghostly light.  With a crackle of electrical energy, one of your tails splits in two, giving you " + num2Text(player.tailVenom + 1) + "!  <b>You now have a cluster of " + num2Text(player.tailVenom + 1) + " fox-tails.</b>");
	player.tailVenom++;
	doNext(accessMetamorphMenu);
}
private function metamorphTailFox5th():void {
	clearOutput();
	player.soulforce -= 500;
	outputText("A tingling pressure builds on your backside, and your bushy tails begin to glow with an eerie, ghostly light.  With a crackle of electrical energy, one of your tails splits in two, giving you " + num2Text(player.tailVenom + 1) + "!  <b>You now have a cluster of " + num2Text(player.tailVenom + 1) + " fox-tails.</b>");
	player.tailVenom++;
	doNext(accessMetamorphMenu);
}
private function metamorphTailFox4th():void {
	clearOutput();
	player.soulforce -= 400;
	outputText("A tingling pressure builds on your backside, and your bushy tails begin to glow with an eerie, ghostly light.  With a crackle of electrical energy, one of your tails splits in two, giving you " + num2Text(player.tailVenom + 1) + "!  <b>You now have a cluster of " + num2Text(player.tailVenom + 1) + " fox-tails.</b>");
	player.tailVenom++;
	doNext(accessMetamorphMenu);
}
private function metamorphTailFox3rd():void {
	clearOutput();
	player.soulforce -= 300;
	outputText("A tingling pressure builds on your backside, and your bushy tails begin to glow with an eerie, ghostly light.  With a crackle of electrical energy, one of your tails splits in two, giving you " + num2Text(player.tailVenom + 1) + "!  <b>You now have a cluster of " + num2Text(player.tailVenom + 1) + " fox-tails.</b>");
	player.tailVenom++;
	doNext(accessMetamorphMenu);
}
private function metamorphTailFox2nd():void {
	clearOutput();
	player.soulforce -= 200;
	outputText("A tingling pressure builds on your backside, and your bushy tail begins to glow with an eerie, ghostly light.  With a crackle of electrical energy, your tail splits into two!  <b>You now have a pair of fox-tails.</b>");
	player.tailVenom++;
	doNext(accessMetamorphMenu);
}
private function metamorphEyesFox():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("You blink for an instant as the light and darkness seems to shift within your vision. You head to a pool to check it up and notice your pupils shifted to look more fox-like in a fashion similar to the kitsunes.  <b>You now have fox pupils.</b>");
	player.eyeType = EYES_FOX;
	doNext(accessMetamorphMenu);
}
private function metamorphFaceFox():void {
	clearOutput();
	player.soulforce -= 100;
	outputText("Your face pinches and you clap your hands to it.  Within seconds, your nose is poking through those hands, pushing them slightly to the side as new flesh and bone build and shift behind it, until it stops in a clearly defined, tapered, and familiar point you can see even without the aid of a mirror.  <b>Looks like you now have a fox's face.</b>");
	player.faceType = FACE_FOX;
	doNext(accessMetamorphMenu);
}
private function metamorphTailFox():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.tailType == TAIL_TYPE_NONE) outputText("A pressure builds on your backside.  You feel under your [armor] and discover a strange nodule growing there that seems to be getting larger by the second.  With a sudden flourish of movement, it bursts out into a long and bushy tail that sways hypnotically, as if it had a mind of its own.  <b>You now have a fox's tail!</b>");
	else outputText("Pain lances through your lower back as your tail shifts violently.  With one final aberrant twitch, it fluffs out into a long, bushy fox tail that whips around in an almost hypnotic fashion.  <b>You now have a fox's tail!</b>");
	player.tailType = TAIL_TYPE_FOX;
	player.tailVenom = 1;
	doNext(accessMetamorphMenu);
}
private function metamorphEarsFox():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.earType == EARS_HUMAN || player.earType == EARS_ELFIN || player.earType == EARS_LIZARD) {
		outputText("The sides of your face painfully stretch as your ears elongate and begin to push past your hairline, toward the top of your head.  They elongate, becoming large vulpine triangles covered in bushy fur.  <b>You now have fox ears.</b>");
	}
	else {
		outputText("Your ears change, shifting from their current shape to become vulpine in nature.  <b>You now have fox ears.</b>");
	}
	player.earType = EARS_FOX;
	doNext(accessMetamorphMenu);
}
private function metamorphArmsFox():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.armType != ARM_TYPE_HUMAN) restoreHumanArms();
	outputText("Your arms and hands start covering in fur at an alarming rate suddenly as you poke at your palms you jolt up as they become extremely sensitive turning into paw pads heck your nails transformed into wolf like claws so no wonder you felt it that much. <b>You now have pawed hands.</b>", false);
	player.armType = ARM_TYPE_FOX;
	doNext(accessMetamorphMenu);
}
private function metamorphLowerBodyFox():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.isTaur()) outputText("You shiver as the strength drains from your back legs.  Shaken, you sit on your haunches, forelegs braced wide to stop you from tipping over;  their hooves scrape the dirt as your lower body shrinks, dragging them backward until you can feel the upper surfaces of your hindlegs with their undersides.  A wave of nausea and vertigo overtakes you, and you close your eyes to shut out the sensations.  When they reopen, what greets them are not four legs, but only two... and those roughly in the shape of your old hindleg, except for the furry toes where your hooves used to be.  <b>You now have fox legs!</b>");
	else if (player.isNaga()) outputText("Your scales split at the waistline and begin to peel, shedding like old snakeskin.  If that weren't curious enough, the flesh - not scales - underneath is pink and new, and the legs it covers crooked into the hocks and elongated feet of a field animal.  As the scaly coating falls and you step out of it, walking of necessity on your toes, a fine powder blows from the dry skin.  Within minutes, it crumbles completely and is taken by the ever-moving wind.  <b>Your legs are now those of a fox!</b>");
	else if (player.lowerBody == LOWER_BODY_TYPE_HOOFED || player.lowerBody == LOWER_BODY_TYPE_DOG || player.lowerBody == LOWER_BODY_TYPE_CAT || player.lowerBody == LOWER_BODY_TYPE_BUNNY || player.lowerBody == LOWER_BODY_TYPE_KANGAROO) {
		outputText("Your legs twitch and quiver, forcing you to your seat.  As you watch, the ends shape themselves into furry, padded toes.  <b>You now have fox feet!</b>  Rather cute ones, actually.");
	}
	else if (player.lowerBody == LOWER_BODY_TYPE_DRIDER_LOWER_BODY) outputText("Your legs buckle under you and you fall, smashing your abdomen on the ground.  Though your control deserts and you cannot see behind you, still you feel the disgusting sensation of chitin loosening and sloughing off your body, and the dry breeze on your exposed nerves.  Reflexively, your legs cling together to protect as much of their now-sensitive surface as possible.  When you try to part them, you find you cannot.  Several minutes pass uncomforably until you can again bend your legs, and when you do, you find that all the legs of a side bend together - <b>in the shape of a fox's leg!</b>");
	else if (player.isGoo()) outputText("It takes a while before you notice that your gooey mounds have something more defined in them.  As you crane your body and shift them around to look, you can just make out a semi-solid mass in the shape of a crooked, animalistic leg.  You don't think much of it until, a few minutes later, you step right out of your swishing gooey undercarriage and onto the new foot.  The goo covering it quickly dries up, as does the part you left behind, <b>revealing a pair of dog-like fox legs!</b>");
	else {
		outputText("Your hamstrings tense painfully and begin to pull, sending you onto your face.  As you writhe on the ground, you can feel your thighs shortening and your feet stretching");
		if (player.lowerBody == LOWER_BODY_TYPE_BEE) outputText(", while a hideous cracking fills the air");
		outputText(".  When the spasms subside and you can once again stand, <b>you find that your legs have been changed to those of a fox!</b>");
	}
	player.lowerBody = LOWER_BODY_TYPE_FOX;
	player.legCount = 2;
	doNext(accessMetamorphMenu);
}
//all skin types TF effects goes here
private function metamorphTattoed():void {
	clearOutput();
	player.soulforce -= 100;
	
	doNext(accessMetamorphMenu);
}
private function metamorphFur():void {
	clearOutput();
	
	doNext(accessMetamorphMenu);
}
private function metamorphScales():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.skinType == SKIN_TYPE_FUR) {
		if (rand(10) == 0) {
			if (rand(2) == 0) player.skinTone = "purple";
			else player.skinTone = "silver";
		}
		else {
			temp = rand(5);
			if (temp == 0) player.skinTone = "red";
			else if (temp == 1) player.skinTone = "green";
			else if (temp == 2) player.skinTone = "white";
			else if (temp == 3) player.skinTone = "blue";
			else player.skinTone = "black";
		}
		outputText("\n\nYou scratch yourself, and come away with a large clump of " + player.furColor + " fur.  Panicked, you look down and realize that your fur is falling out in huge clumps.  It itches like mad, and you scratch your body relentlessly, shedding the remaining fur with alarming speed.  Underneath the fur your skin feels incredibly smooth, and as more and more of the stuff comes off, you discover a seamless layer of " + player.skinTone + " scales covering most of your body.  The rest of the fur is easy to remove.  <b>You're now covered in scales from head to toe.</b>", false);
	}
	else {
		outputText("\n\nYou idly reach back to scratch yourself and nearly jump out of your " + player.armorName + " when you hit something hard.  A quick glance down reveals that scales are growing out of your " + player.skinTone + " skin with alarming speed.  As you watch, the surface of your skin is covered in smooth scales.  They interlink together so well that they may as well be seamless.  You peel back your " + player.armorName + " and the transformation has already finished on the rest of your body.  <b>You're covered from head to toe in shiny ", false);
		if (rand(10) == 0) {
			if (rand(2) == 0) player.skinTone = "purple";
			else player.skinTone = "silver";
		}
		else {
			temp = rand(5);
			if (temp == 0) player.skinTone = "red";
			else if (temp == 1) player.skinTone = "green";
			else if (temp == 2) player.skinTone = "white";
			else if (temp == 3) player.skinTone = "blue";
			else player.skinTone = "black";
		}
		outputText(player.skinTone + " scales.</b>", false);
	}
	player.skinType = SKIN_TYPE_SCALES;
	player.skinDesc = "scales";
	doNext(accessMetamorphMenu);
}
private function metamorphFur():void {
	clearOutput();
	player.soulforce -= 100;
	if (player.skinType == SKIN_TYPE_SCALES) outputText("Your skin shifts and every scale stands on end, sending you into a mild panic.  No matter how you tense, you can't seem to flatten them again.  The uncomfortable sensation continues for some minutes until, as one, every scale falls from your body and a fine coat of fur pushes out.  You briefly consider collecting them, but when you pick one up, it's already as dry and brittle as if it were hundreds of years old.  <b>Oh well; at least you won't need to sun yourself as much with your new fur.</b>");
	else outputText("Your skin itches all over, the sudden intensity and uniformity making you too paranoid to scratch.  As you hold still through an agony of tiny tingles and pinches, fine, luxuriant fur sprouts from every bare inch of your skin!  <b>You'll have to get used to being furry...</b>");
	player.skinType = SKIN_TYPE_FUR;
	player.skinAdj = "";
	player.skinDesc = "fur";
	doNext(accessMetamorphMenu);
}

private function removeOddEyes():void {
	if (player.eyeType == EYES_BLACK_EYES_SAND_TRAP) {
		outputText("\n\nYou feel a twinge in your eyes and you blink.  It feels like black cataracts have just fallen away from you, and you know without needing to see your reflection that your eyes have gone back to looking human.");
	}
	else {
		outputText("\n\nYou blink and stumble, a wave of vertigo threatening to pull your " + player.feet() + " from under you.  As you steady and open your eyes, you realize something seems different.  Your vision is changed somehow.", false);
		if (player.eyeType == EYES_FOUR_SPIDER_EYES) outputText("  Your multiple, arachnid eyes are gone!</b>", false);
		outputText("  <b>You have normal, humanoid eyes again.</b>", false);
	}
	player.eyeType = EYES_HUMAN;
}
private function removeOldWings():void {
	outputText("\n\nSensation fades from your " + player.wingDesc + " wings slowly but surely, leaving them dried out husks that break off to fall on the ground. Your back closes up to conceal the loss, as smooth and unbroken as the day you entered the portal.", false);
	player.wingType = WING_TYPE_NONE;
	player.wingDesc = "non-existant";
}
private function restoreHumanLegs():void {
	if (player.isTaur()) {
		outputText("\n\nYour quadrupedal hind-quarters seizes, overbalancing your surprised front-end and causing you to stagger and fall to your side.  Pain lances throughout, contorting your body into a tightly clenched ball of pain while tendons melt and bones break, melt, and regrow.  When it finally stops, <b>you look down to behold your new pair of human legs</b>!", false);
	}
	else {
		if (player.isGoo()) {
			outputText("\n\nYour lower body rushes inward, molding into two leg-like shapes that gradually stiffen up.  In moments they solidify into normal-looking legs, complete with regular, human feet.", false);
		}
		if (player.isNaga()) {
			outputText("\n\nYou collapse as your sinuous snake-tail tears in half, shifting into legs.  The pain is immense, particularly where your new feet are forming.", false);
		}
		if (player.isScylla()) {
			outputText("\n\nYou collapse as your tentacle legs starts to merge.  The pain is immense, particularly where your new feet are forming.", false);
		}
		//(Non-human -> Normal Human Legs)
		if (player.isBiped() && player.lowerBody != LOWER_BODY_TYPE_HUMAN) {
			outputText("\n\nYou collapse as your legs shift and twist.  By the time the pain subsides, you notice that you have normal legs and normal feet.", false);
		}
		outputText("  <b>You now have normal feet!</b>", false);
	}
	player.lowerBody = LOWER_BODY_TYPE_HUMAN;
	player.legCount = 2;
}
private function restoreHumanArms():void {
	outputText("You scratch at your biceps absentmindedly, but no matter how much you scratch, it isn't getting rid of the itch.  Glancing down in irritation, you discover that your ", false);
	if (player.armType == ARM_TYPE_HARPY || player.armType == ARM_TYPE_PHOENIX) {
		outputText("feathery arms are shedding their feathery coating.  The wing-like shape your arms once had is gone in a matter of moments, leaving " + player.skinDesc + " behind.", false);
	}
	if (player.armType == ARM_TYPE_SPIDER) {
		outputText("arms' chitinous covering is flaking away.  The glossy black coating is soon gone, leaving " + player.skinDesc + " behind.", false);
	}
	if (player.armType == ARM_TYPE_MANTIS) {
		outputText("arms' chitinous covering is flaking away and scythe shrinking until it vanish completly.  The glossy green coating is soon gone, leaving " + player.skinDesc + " behind.", false);
	}
	if (player.armType == ARM_TYPE_BEE) {
		outputText("arms' chitinous covering and fuzz is flaking away.  The glossy black and yellow coating is soon gone, leaving " + player.skinDesc + " behind.", false);
	}
	if (player.armType == ARM_TYPE_SALAMANDER || player.armType == ARM_TYPE_LIZARD) {
		outputText("arms' scales are flaking away.  The leathery ", false);
		if (player.armType == ARM_TYPE_SALAMANDER) outputText("red ", false);
		outputText("scales are soon gone, leaving " + player.skinDesc + " behind.", false);
	}
	if (player.armType == ARM_TYPE_PLANT) {
		outputText("arms' vines are withering.  Leaves also falling donw, leaving " + player.skinDesc + " behind.", false);
	}
	if (player.armType == ARM_TYPE_SHARK) {
		outputText("arms' fin suddenly fell down, leaving " + player.skinDesc + " behind.  Also webbing between your fingers slowly disappearing.", false);
	}
	if (player.armType == ARM_TYPE_WOLF || player.armType == ARM_TYPE_FOX) {
		outputText("arms' " + player.furColor + " fur is flaking away, leaving " + player.skinDesc + " behind.  Also the claws on your fingers reverts back into ordinary nails.", false);
	}
	if (player.armType == ARM_TYPE_KITSUNE) {
		outputText("arms' claws retracting back into ordinary nails. You hand looks human again.", false);
	}
	outputText("\n\n", false);
	player.armType = ARM_TYPE_HUMAN;
}*/
//}endregion	
	}
}