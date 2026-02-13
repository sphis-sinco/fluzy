package;

import macohi.debugging.CustomTrace;
import macohi.debugging.CrashHandler;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		haxe.Log.trace = CustomTrace.newTrace;
		
		CrashHandler.initalize(null, 'fluzy_', null, 'fluzy');

		addChild(new FlxGame(0, 0, PlayState));
	}
}
