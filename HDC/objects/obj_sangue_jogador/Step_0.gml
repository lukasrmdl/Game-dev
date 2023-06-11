/// @description etapas sangue inimigo

image_angle += rotac;

image_alpha -= 0.05;

if image_alpha <= 0 {
	instance_destroy();
}