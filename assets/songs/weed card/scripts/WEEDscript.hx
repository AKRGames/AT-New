import flixel.FlxCamera;

var camZoomOnBeat:Bool = Options.camZoomOnBeat;
var camZooming:Bool = PlayState.camZooming;
var camera:FlxCamera = FlxG.camera;
var camHUD:HudCamera = PlayState.camHUD;

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
		case 88:
			impactSofter();
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
		case 256:
			impact();
		case 288:
			impact();
		case 320:
			impact();
		case 336:
			impact();
		case 352:
			impactSoft();
		case 360:
			impactSoft();
		case 368:
			impactSoft();
		case 372:
			impactSoft();
		case 376:
			impactSofter();
		case 378:
			impactSofter();
		case 380:
			impactSoftest();
		case 381:
			impactSoftest();
		case 382:
			impactSoftest();
		case 383:
			impactSoftest();
		case 384:
			negativeImpact();
	}
};

function impact() {
	if (camZoomOnBeat && camZooming)
		{
			camera.zoom += 1;
			camHUD.zoom += 0.03;
		}
};

function impactSoft() {
	if (camZoomOnBeat && camZooming)
		{
			camera.zoom += 0.5;
			camHUD.zoom += 0.03;
		}
};

function impactSofter() {
	if (camZoomOnBeat && camZooming)
		{
			camera.zoom += 0.25;
			camHUD.zoom += 0.03;
		}
};

function impactSoftest() {
	if (camZoomOnBeat && camZooming)
		{
			camera.zoom += 0.125;
			camHUD.zoom += 0.03;
		}
};

function negativeImpact() {
	if (camZoomOnBeat && camZooming)
		{
			camera.zoom += -1;
			camHUD.zoom += 0.03;
		}
};