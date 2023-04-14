package funkin.game;

import flixel.FlxState;

var player:funkin.game.RPGCharacter;

class RPGState extends FlxState
{
	override public function create()
	{
        player = new RPGCharacter(69, 69);
        add(player);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}