import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxG;
import flixel.util.typeLimit.NextState;
import macohi.overrides.MState;

class PlayState extends MState
{
	public var floppy_count:Int = 3;
	public var floppies:FlxTypedGroup<Floppy>;

	public var floppies_minigames:Array<NextState> = [null, null, null];
	public var floppies_base_positions:Array<Float> = [0, FlxG.width / 2, FlxG.width];

	override public function create()
	{
		super.create();

		floppies = new FlxTypedGroup<Floppy>();
		add(floppies);

		var i = 0;
		while (i < floppy_count)
		{
			var floppy = new Floppy(floppies_minigames[i]);

			floppy.screenCenter();
			floppy.y = FlxG.height - floppy.height;

			floppy.x = floppies_base_positions[i] - floppy.width / 2;

			floppy.ID = i;
			floppies.add(floppy);

			i++;
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
