import macohi.objects.interactable.InteractableMSprite;
import flixel.util.typeLimit.NextState;
import flixel.util.FlxColor;

class Floppy extends InteractableMSprite
{
	public var minigame:NextState = null;

	override public function new(?minigame:NextState)
	{
		super();

		makeGraphic(80, 80, FlxColor.GRAY);

		this.minigame = minigame;
	}
}
