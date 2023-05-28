package altertrack.game;

import flixel.FlxG;

class RPGState extends funkin.backend.MusicBeatState
{
	var player:RPGCharacter;

	override public function create():Void
	{
        player = new RPGCharacter(69, FlxG.height - 69);
        add(player);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}