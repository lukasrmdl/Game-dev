/// @description Desenhos de hud
draw_sprite(spr_exp_hud, -1, 206, 2);
draw_sprite_ext(spr_exp_bar, -1, 259, 3, global.exp/global.exp_max, 1, 0, c_white, 1);
draw_sprite_ext(spr_arma_hud_gladio, 0, 5, 222, 1, 1, 0, make_color_rgb(255, 255, 255), 1);