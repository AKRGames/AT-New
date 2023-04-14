package funkin.game;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class RPGCharacter extends FlxSprite
{
    public function new(x:Float = 0, y:Float = 0)
    {
        super(x, y);
        makeGraphic(64, 128, FlxColor.BLUE);
    }
}