package altertrack.game;

import flixel.FlxState;

class RPGState extends MusicBeatState
{
	var player:funkin.game.RPGCharacter;

	override public function create():Void
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