function create() {
	if (curStep == 0 || curStep == 16 || curStep == 32 || curStep == 48 || curStep == 64 || curStep == 72 || curStep == 80 || curStep == 128)
	{
		if (Options.camZoomOnBeat && camZooming && curBeat % camZoomingInterval == 0)
		{
			FlxG.camera.zoom += 1;
			camHUD.zoom += 0.03;
		}
	}
	if (curStep == 26 || curStep == 29 || curStep == 58 || curStep == 61 || curStep == 90 || curStep == 93 || curStep == 96 || curStep == 100 || curStep == 104 || curStep == 108)
	{
		if (Options.camZoomOnBeat && camZooming && curBeat % camZoomingInterval == 0)
		{
			FlxG.camera.zoom += 0.5;
			camHUD.zoom += 0.03;
		}
	}
};