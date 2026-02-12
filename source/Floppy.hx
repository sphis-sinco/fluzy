import flixel.util.typeLimit.NextState;
import flixel.util.FlxColor;
import macohi.overrides.MSprite;

class Floppy extends MSprite
{
	public var minigame:NextState = null;

	override public function new(?minigame:NextState)
	{
		super();

		makeGraphic(320, 320, FlxColor.GRAY);

		this.minigame = minigame;
	}
}
