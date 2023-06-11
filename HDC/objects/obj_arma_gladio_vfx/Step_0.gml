/// @description etapas vfx gladio

if global.level_up = true{
	exit;
}

alpha -= 0.5;

if alpha <= 0 {
	instance_destroy();
}