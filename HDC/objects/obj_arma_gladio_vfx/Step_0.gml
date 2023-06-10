/// @description etapas vfx gladio

if global.level_up = true{
	exit;
}

alpha -= alpha_step;

if alpha <= 0 {
	instance_destroy();
}