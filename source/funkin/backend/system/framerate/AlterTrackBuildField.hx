package funkin.backend.system.framerate;

import openfl.text.TextFormat;
import openfl.display.Sprite;
import openfl.text.TextField;
import funkin.backend.system.macros.GitCommitMacro;

class AlterTrackBuildField extends TextField {
	public function new() {
		super();
		defaultTextFormat = Framerate.textFormat;
		autoSize = LEFT;
		multiline = wordWrap = false;
		text = 'AlterTrack v0.0.0\nBuild ${funkin.backend.system.macros.AlterBuildCounterMacro.getATBuildNumber()}';
	}
}