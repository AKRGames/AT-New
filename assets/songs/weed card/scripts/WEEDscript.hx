function stepHit(curStep) {
	switch(curStep)
	{
		case 0:
			impact();
		case 16:
			impact();
		case 26:
			impactSoft();
		case 29:
			impactSoft();
		case 32:
			impact();
		case 48:
			impact();
		case 58:
			impactSoft();
		case 61:
			impactSoft();
		case 64:
			impact();
		case 72:
			impact();
		case 80:
			impact();
		case 90:
			impactSoft();
		case 93:
			impactSoft();
		case 96:
			impactSoft();
		case 100:
			impactSoft();
		case 104:
			impactSoft();
		case 104:
			impactSoft();
		case 108:
			impactSoft();
		case 112:
			impactSofter();
		case 114:
			impactSofter();
		case 116:
			impactSofter();
		case 118:
			impactSofter();
		case 128:
			impact();
	}
};

function impact() {
	if (Options.camZoomOnBeat && camZooming)
		{
			FlxG.camera.zoom += 1;
			camHUD.zoom += 0.03;
		}
};

function impactSoft() {
	if (Options.camZoomOnBeat && camZooming)
		{
			FlxG.camera.zoom += 0.5;
			camHUD.zoom += 0.03;
		}
};

function impactSoft() {
	if (Options.camZoomOnBeat && camZooming)
		{
			FlxG.camera.zoom += 0.5;
			camHUD.zoom += 0.03;
		}
};

function impactSofter() {
	if (Options.camZoomOnBeat && camZooming)
		{
			FlxG.camera.zoom += 0.25;
			camHUD.zoom += 0.03;
		}
};	