import macohi.funkin.vslice.util.AnsiUtil;
import flixel.FlxG;
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

		onLeftClick_justReleased.add(function()
		{
			if (minigame != null)
				FlxG.switchState(minigame);
			else
				trace('<warning> : NULL MINIGAME');
		});
	}
}
