var multiplier:Float = camZoomingStrength = 1;

function impact() {
	if (camZoomingInterval < 1) camZoomingInterval = 1;
	if (Options.camZoomOnBeat && camZooming && FlxG.camera.zoom < maxCamZoom && curBeat % camZoomingInterval == 0)
	{
		FlxG.camera.zoom += 0.015 * multiplier;
		// camHUD.zoom += 0.03 * multiplier;
	}
};
