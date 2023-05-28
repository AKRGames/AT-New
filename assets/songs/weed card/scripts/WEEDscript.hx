var daCamZoomingOnDaBeet:Bool = Options.camZoomOnBeat;
var daCamZooming:Bool = PlayState.camZooming;
var daCamera:FlxCamera = FlxG.camera;
var wtfIsAHUD:HudCamera = PlayState.camHUD;

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
		case 416:
			impact();
		case 440:
			impactSoft();
		case 448:
			impact();
		case 456:
			impactSoft();
		case 462:
			impactSoftest();
		case 466:
			impactSoftest();
		case 468:
			impact();
		case 472:
			impactSoft();
		case 480:
			impact();
		case 488:
			impactSoft();
		case 494:
			impactSoftest();
		case 498:
			impactSoftest();
		case 500:
			impact();
		case 504:
			impactSoft();
		case 512:
			impact();
		case 515:
			impactSoftest();
		case 516:
			impactSoft();
		case 518:
			impactSoftest();
		case 520:
			impact();
		case 523:
			impactSoftest();
		case 524:
			impactSoft();
		case 526:
			impactSoftest();
		case 528:
			impactSoft();
		case 530:
			impactSoft();
		case 532:
			impactSoft();
		case 534:
			impactSoft();
		case 672:
			impact();
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