package altertrack.game;

import flixel.FlxG;
import funkin.backend.utils.CoolUtil;
import funkin.backend.assets.Paths;

class RPGState extends funkin.backend.MusicBeatState
{
	var player:RPGCharacter;

	override public function create():Void
	{
        player = new RPGCharacter(69, FlxG.height - (69*69));
        add(player);
		CoolUtil.playMusic(Paths.music('RPG/GONEloop'));
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}