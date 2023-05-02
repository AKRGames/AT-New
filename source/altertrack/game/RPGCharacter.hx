package altertrack.game;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class RPGCharacter extends FlxSprite
{
	static inline var SPEED:Float = 100;

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
		var walkAway:Bool = false;
		var walkTowards:Bool = false;
		var left:Bool = false;
		var right:Bool = false;

		walkAway = FlxG.keys.anyPressed([UP, W]);
		walkTowards = FlxG.keys.anyPressed([DOWN, S]);
		left = FlxG.keys.anyPressed([LEFT, A]);
		right = FlxG.keys.anyPressed([RIGHT, D]);

		if (walkAway && walkTowards)
			walkAway = walkTowards = false;
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
		if (walkAway || walkTowards)
		{
			if (walkAway)
			{
				thiccness -= 1
				tallness -= 1
			}
			else if (walkTowards)
			{
				thiccness += 1
				tallness += 1
			}
		}
	}

	override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}
}