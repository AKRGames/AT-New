package altertrack.game;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class RPGCharacter extends FlxSprite
{
	static inline var SPEED:Float = 250;

	var thiccness:Int = 128;
	var tallness:Int = 256;
	var character:FlxSprite;

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		character = makeGraphic(thiccness, tallness, FlxColor.BLUE);
		drag.x = drag.y = 800;
	}

	function updateMovement()
	{
		var left:Bool = false;
		var right:Bool = false;

		left = FlxG.keys.anyPressed([LEFT, A]);
		right = FlxG.keys.anyPressed([RIGHT, D]);

		if (left && right)
			left = right = false;

		if (left || right)
		{
			var newAngle:Float = 0;
			if (left)
				newAngle = 180;
			else if (right)
				newAngle = 0;
			velocity.setPolarDegrees(SPEED, newAngle);
		}
	}

	override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}
}