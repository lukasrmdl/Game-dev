/// @description etapas controle

if global.level_up = true{
	alarm[0]++;
	exit;
}

var _side = irandom(1);

if alarm[0] <= 0 {
	if _side = 0 {
		var _xx = irandom_range(global.cmx, global.cmx + global.cmw);
		var _yy = choose(global.cmy - 16, global.cmy + global.cmh + 16);
		instance_create_layer(_xx, _yy, "Instances", obj_inimigo_1);
	}
	if _side = 1 {
		var _xx = choose(global.cmx - 16, global.cmx + global.cmw + 16);
		var _yy = irandom_range(global.cmy, global.cmy + global.cmh);
		instance_create_layer(_xx, _yy, "Instances", obj_inimigo_1);
	}
	
	alarm[0] = spawn_timer;
}

//subir de nivel

if global.exp >= global.exp_max {
	global.level++;
	global.exp = global.exp - global.exp_max;
	global.level_up = true;
	global.exp_max += 10; //balancear
	
	upgrade_list = ds_list_create();
	repeat(upgrade_num) {
	var _upgrade = irandom(ds_grid_height(upgrades_grid) - 1);
	while ds_list_find_index(upgrade_list, _upgrade) != -1 {
		var _upgrade = irandom(ds_grid_height(upgrades_grid) - 1);
	}
	ds_list_add(upgrade_list, _upgrade);
	}
	
	
}