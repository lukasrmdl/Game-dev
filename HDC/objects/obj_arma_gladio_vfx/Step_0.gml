/// @description etapas vfx gladio
alpha -= alpha_step;

if alpha <= 0 {
	instance_destroy();
}