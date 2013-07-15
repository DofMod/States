package utils
{
	import enums.SpellStateIdEnum;
	
	/**
	 * States description.
	 * 
	 * @author Relena
	 */
	public class StateDescription
	{
		public static function getDescription(stateId:int):String
		{
			switch (stateId)
			{
				case SpellStateIdEnum.DRUNK: 
					return "Autorise et interdit l'utilisation de certains sorts du Pandawa";
				case SpellStateIdEnum.SOUL_SEEKER: 
				case SpellStateIdEnum.CARRYING: 
				case SpellStateIdEnum.COWARD: 
				case SpellStateIdEnum.DISORIENTATED: 
				case SpellStateIdEnum.ROOTED: 
				case SpellStateIdEnum.GRAVITY: 
				case SpellStateIdEnum.CARRIED: 
				case SpellStateIdEnum.SYLVAN_MOTIVATION: 
				case SpellStateIdEnum.TAMING: 
				case SpellStateIdEnum.RIDING: 
				case SpellStateIdEnum.UNRULY: 
				case SpellStateIdEnum.EXTREMELY_DISOBEDIENT: 
				case SpellStateIdEnum.SNOWBOUND: 
				case SpellStateIdEnum.AWAKE: 
				case SpellStateIdEnum.VULNERABLE: 
				case SpellStateIdEnum.PARTED: 
				case SpellStateIdEnum.FROZEN: 
				case SpellStateIdEnum.CRACKED: 
				case SpellStateIdEnum.ASLEEP: 
				case SpellStateIdEnum.LEOPARDO: 
				case SpellStateIdEnum.FREE: 
				case SpellStateIdEnum.ODD_GLYPH: 
				case SpellStateIdEnum.EVEN_GLYPH: 
				case SpellStateIdEnum.FIRST_INK: 
				case SpellStateIdEnum.SECOND_INK: 
				case SpellStateIdEnum.THIRD_INK: 
				case SpellStateIdEnum.FOURTH_INK: 
				case SpellStateIdEnum.DESIRE_TO_KILL: 
				case SpellStateIdEnum.DESIRE_TO_PARALYZE: 
				case SpellStateIdEnum.DESIRE_TO_CURSE: 
				case SpellStateIdEnum.DESIRE_TO_POISON: 
				case SpellStateIdEnum.BLURRY: 
				case SpellStateIdEnum.CORRUPTED: 
				case SpellStateIdEnum.SILENT: 
				case SpellStateIdEnum.WEAKENED: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_65298_: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_246880_: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_246881_: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_138203_: 
				case SpellStateIdEnum.CONFUSED: 
				case SpellStateIdEnum.GHOULIFIED: 
				case SpellStateIdEnum.ALTRUISTIC: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_65347_: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_65336_: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_65357_: 
				case SpellStateIdEnum._UNKNOWN_TEXT_ID_65358_: 
				case SpellStateIdEnum.RETIRED: 
				case SpellStateIdEnum.INVULNERABLE: 
				case SpellStateIdEnum.COUNTDOWN___2: 
				case SpellStateIdEnum.COUNTDOWN___1: 
				case SpellStateIdEnum.DEVOTED: 
				case SpellStateIdEnum.AGGRESSIVE: 
				case SpellStateIdEnum.HEAVY: 
				case SpellStateIdEnum.GLYPHANGER: 
				case SpellStateIdEnum.OMEGA: 
				case SpellStateIdEnum.ALPHA: 
				case SpellStateIdEnum.BETA: 
				case SpellStateIdEnum.GAMMA: 
				case SpellStateIdEnum.DELTA: 
				case SpellStateIdEnum.KORDIS_ALPHA: 
				case SpellStateIdEnum.KORDIS_BETA: 
				case SpellStateIdEnum.KORDIS_GAMMA: 
				case SpellStateIdEnum.ENRAGED: 
				case SpellStateIdEnum.ZOMBIE: 
				case SpellStateIdEnum.UNHEALABLE: 
				case SpellStateIdEnum.WEAKNESS: 
				case SpellStateIdEnum.SPROUT: 
				case SpellStateIdEnum.MAJOR_SECOND: 
				case SpellStateIdEnum.MAJOR_THIRD: 
				case SpellStateIdEnum.PERFECT_FOURTH: 
				case SpellStateIdEnum.PERFECT_FIFTH: 
				case SpellStateIdEnum.MAJOR_SIXTH: 
				case SpellStateIdEnum.MAJOR_SEVENTH: 
				case SpellStateIdEnum.PERFECT_OCTAVE: 
				case SpellStateIdEnum.FULGURATION: 
				case SpellStateIdEnum.BLURRING: 
				case SpellStateIdEnum.BEARK_TO_LIFE: 
				case SpellStateIdEnum.FLAMBOYANT: 
				case SpellStateIdEnum.ECTOPLASMIC: 
				case SpellStateIdEnum.ARDENT: 
				case SpellStateIdEnum.KABOOM: 
				case SpellStateIdEnum.KLAUS_KOMBATNOOB: 
				case SpellStateIdEnum.NOTDIS_THYMNOOB: 
				case SpellStateIdEnum.UNABLE_TO_LOCK: 
				case SpellStateIdEnum.UNLOCKABLE: 
				case SpellStateIdEnum.UNMOVABLE: 
				case SpellStateIdEnum.CLASSIC: 
				case SpellStateIdEnum.PSYCHOPATHIC: 
				case SpellStateIdEnum.COWARDLY: 
				case SpellStateIdEnum.ARCHER: 
				case SpellStateIdEnum.GORGOYLIE: 
				case SpellStateIdEnum.FORTIFIED: 
				case SpellStateIdEnum.BROKEN: 
				case SpellStateIdEnum.TYRANNISED: 
				case SpellStateIdEnum.METEOROID: 
				case SpellStateIdEnum.CRITICAL_MASS: 
				case SpellStateIdEnum.APOCALYPSE: 
				case SpellStateIdEnum.RUBILAX: 
				case SpellStateIdEnum.THE_SWORD: 
				case SpellStateIdEnum.DAGGERO_S_FIRST_MARK: 
				case SpellStateIdEnum.DAGGERO_S_SECOND_MARK: 
				case SpellStateIdEnum.DAGGERO_S_THIRD_MARK: 
				case SpellStateIdEnum.DAGGERO_S_FOURTH_MARK: 
				case SpellStateIdEnum.DAGGERO_S_FIFTH_MARK: 
				case SpellStateIdEnum.EARTHY_GREEN: 
				case SpellStateIdEnum.FLAME_TICKLED_PINK: 
				case SpellStateIdEnum.BLUE_LAGOON: 
				case SpellStateIdEnum.YELLOW_ZEPHYR: 
				case SpellStateIdEnum.DISPLACED: 
				case SpellStateIdEnum.LOAD: 
				case SpellStateIdEnum.UNLOAD: 
				case SpellStateIdEnum.OVERLOAD: 
				case SpellStateIdEnum.BIG_BROTHER: 
				case SpellStateIdEnum.LITTLE_SISTER: 
				case SpellStateIdEnum.MAGNATRON: 
				case SpellStateIdEnum.EARTH: 
				case SpellStateIdEnum.WATER: 
				case SpellStateIdEnum.FIRE: 
				case SpellStateIdEnum.AMBUSH: 
				case SpellStateIdEnum.FIRST_AID: 
				case SpellStateIdEnum.PERISCOPE: 
				case SpellStateIdEnum.DREADNAUT: 
				case SpellStateIdEnum.EVOLUTION_II: 
				case SpellStateIdEnum.EVOLUTION_III: 
				case SpellStateIdEnum.WOEBEGONE: 
				case SpellStateIdEnum.KWABURN: 
				case SpellStateIdEnum.KWAFREEZE: 
				case SpellStateIdEnum.KWAKEARTH: 
				case SpellStateIdEnum.KWABLOW: 
				case SpellStateIdEnum.KWANEUTRAL: 
				case SpellStateIdEnum.PANDAWUSHAI: 
				case SpellStateIdEnum.PANDAWUSHWA: 
				case SpellStateIdEnum.PANDAWUSHFI: 
				case SpellStateIdEnum.PANDAWUSHEA: 
				case SpellStateIdEnum.PANDAWUSHNE: 
				case SpellStateIdEnum.SPYGLASS: 
				case SpellStateIdEnum.CORSELET: 
				case SpellStateIdEnum.BARMY: 
				case SpellStateIdEnum.ENTANGLED: 
				case SpellStateIdEnum.HASTY: 
				case SpellStateIdEnum.SMOOTH_SKIN: 
				case SpellStateIdEnum.DEEP_FREEZE: 
				case SpellStateIdEnum.REBIRTH: 
				case SpellStateIdEnum.ZOMBIMABOB: 
				case SpellStateIdEnum.THERMOLACTIC: 
				case SpellStateIdEnum.UNSHAKABLE: 
			}
			
			return "Pas de description.";
		}
	}
}