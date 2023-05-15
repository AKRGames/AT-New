function impact() {
	if (curStep == 0 || curStep == 16 || curStep == 32 || curStep == 48 || curStep == 64 || curStep == 72 || curStep == 80 || curStep == 128)
	{
		if (Options.camZoomOnBeat && camZooming && curBeat % camZoomingInterval == 0)
		{
			FlxG.camera.zoom += 0.015;
			camHUD.zoom += 0.03;
		}
	}
};