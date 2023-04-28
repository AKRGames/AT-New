package funkin.backend.system.framerate;

import openfl.text.TextFormat;
import openfl.display.Sprite;
import openfl.text.TextField;
import funkin.backend.system.macros.GitCommitMacro;
import lime.app.Application;

class AlterTrackBuildField extends TextField {
	public function new() {
		super();
		defaultTextFormat = Framerate.textFormat;
		autoSize = LEFT;
		multiline = wordWrap = false;
		text = 'AlterTrack v${Application.current.meta.get('version')}\nBuild ${funkin.backend.system.macros.AlterBuildCounterMacro.getATBuildNumber()}';
	}
}