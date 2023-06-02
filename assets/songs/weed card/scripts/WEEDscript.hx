import flixel.FlxCamera;

var daCamZoomingOnDaBeet:Bool = Options.camZoomOnBeat;
var daCamZooming:Bool = PlayState.camZooming;
var daCamera:FlxCamera = FlxG.camera;
var wtfIsAHUD:HudCamera = PlayState.camHUD;

function stepHit(curStep) {
	switch(curStep)
	{
		case 0 | 16 | 32 | 48 | 64 | 72 | 80 | 128 | 256 | 288 | 320 | 336 | 416 | 448 | 468 | 480 | 500 | 512 | 520 | 672:
			impact();
		case 26 | 29 | 58 | 61 | 90 | 93 | 96 | 100 | 104 | 108 | 352 | 360 | 368 | 372 | 440 | 456 | 472 | 488 | 504 | 516 | 524 | 528 | 530 | 532 | 534:
			impactSoft();
		case 88 | 112 | 114 | 116 | 118 | 376 | 378:
			impactSofter();
		case 380 | 381 | 382 | 383 | 462 | 466 | 494 | 498 | 515 | 518 | 523 | 526:
			impactSoftest();
		case 384:
			negativeImpact();
		case 512 | 640:
			shakeTheCamera(camGame, 2, 1);
		case 544:
			shakeTheCamera(camGame, 8.04, 0.5);
	}
};

function impact() {
	if (daCamZoomingOnDaBeet && daCamZooming)
		{
			daCamera.zoom += 1;
			wtfIsAHUD.zoom += 0.03;
		}
};

function impactSoft() {
	if (daCamZoomingOnDaBeet && daCamZooming)
		{
			daCamera.zoom += 0.5;
			wtfIsAHUD.zoom += 0.03;
		}
};

function impactSofter() {
	if (daCamZoomingOnDaBeet && daCamZooming)
		{
			daCamera.zoom += 0.25;
			wtfIsAHUD.zoom += 0.03;
		}
};

function impactSoftest() {
	if (daCamZoomingOnDaBeet && daCamZooming)
		{
			daCamera.zoom += 0.125;
			wtfIsAHUD.zoom += 0.03;
		}
};

function negativeImpact() {
	if (daCamZoomingOnDaBeet && daCamZooming)
		{
			daCamera.zoom += -1;
			wtfIsAHUD.zoom += 0.03;
		}
};

function shakeTheCamera(camera:String, duration:Float, intensity:Float) {
	switch(camera) {
		case 'camHUD' | 'HUD': return PlayState.camHUD;
		case 'camGame' | 'Game': return PlayState.camGame;
	}
	if(duration > 0 && intensity != 0) {
		camera.shake(intensity, duration);
	}
};