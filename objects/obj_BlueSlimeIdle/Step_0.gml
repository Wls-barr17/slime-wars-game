// Comprueba si está en el suelo
// isGrounded = place_meeting(x, y + 1, obj_PlatformPlaceholder);
canShoot -= 1;

// Función de disparo
if (keyboard_check(vk_rcontrol)) 
{
	
	if (canShoot <= 0) 
	{
	
		sprite_index = spr_BlueSlimeShoot;
	
		if (image_xscale == scale) 
		{
			var slimeBallL = instance_create_layer(x, y, "instances", obj_BlueSlimeBallL);
			slimeBallL.direction = image_angle + 180;
			audio_play_sound(LanzamientoAtack, 0, false);
		}
	
		if (image_xscale == -scale) 
		{
			var slimeBallR = instance_create_layer(x, y, "instances", obj_BlueSlimeBallR);
			slimeBallR.direction = image_angle;
			audio_play_sound(LanzamientoAtack, 0, false);
		}
		
		canShoot = (0.5 * room_speed);
	}
	
}

// Animación de golpe
if (keyboard_check(vk_numpad0)) 
{
	sprite_index = spr_BlueSlimeHit;

	if (image_xscale == -scale) 
	{
		var PunchBox = instance_create_layer(x, y, "instances", obj_PunchBox);
		PunchBox.direction = image_angle;
		
		audio_play_sound(Golpesonido, 0, false);
	}
	
	if (image_xscale == scale) 
	{
		var PunchBox = instance_create_layer(x, y, "instances", obj_PunchBox);
		PunchBox.direction = image_angle + 180;
		
		audio_play_sound(Golpesonido, 0, false);
	}	
}

// Gravedad
// y += 0.98 * delta_time / 5000;
vsp = vsp + grv;

// Animación quieta cuando no se mueve a la izquierda ni a la derecha
if (!keyboard_check(vk_left) && jump_current == 2 && !keyboard_check(vk_numpad0) && !keyboard_check(vk_rcontrol) || !keyboard_check(vk_right) && jump_current == 2 && !keyboard_check(vk_numpad0) && !keyboard_check(vk_rcontrol)) 
{
	sprite_index = spr_BlueSlimeIdle;
	hsp = 0;
}

// Movimiento a la izquierda
if (keyboard_check(vk_left) && jump_current == 2 && !keyboard_check(vk_rcontrol))
{
    sprite_index = spr_BlueSlimeRun;
	image_xscale = scale;
	
	// Movimiento cuando no colisiona con jugadores
	if (!place_meeting(x + hsp, y, obj_RedSlimeIdle)) 
	{
		hsp = -6;
	}
}

if (keyboard_check(vk_left) && jump_current < 2)
{
    if (vsp < 0) 
	{
		sprite_index = spr_BlueSlimeJumpUp;
		image_xscale = scale;
	}
	
	if (vsp == 0) 
	{
		sprite_index = spr_BlueSlimeJumpDown;
		image_xscale = scale;
	}
	
	// Movimiento cuando no colisiona con jugadores
	if (!place_meeting(x + hsp, y, obj_RedSlimeIdle)) 
	{
		hsp = -6;
	}
}


// Sprint hacia la izquierda
if (keyboard_check(vk_left) && keyboard_check(vk_rshift) && !keyboard_check(vk_rcontrol))
{
    sprite_index = spr_BlueSlimeSprint;
    image_xscale = scale;
    
    // Movimiento cuando no hay colisión con otros jugadores
    if (!place_meeting(x + hsp, y, obj_RedSlimeIdle))
    {
        hsp = -8;
    }
}

if (keyboard_check(vk_left) && keyboard_check(vk_rshift) && jump_current < 2)
{
    if (vsp < 0) 
    {
        sprite_index = spr_BlueSlimeJumpUp;
        image_xscale = scale;
    }
    
    if (vsp == 0) 
    {
        sprite_index = spr_BlueSlimeJumpDown;
        image_xscale = scale;
    }
    
    // Movimiento cuando no hay colisión con otros jugadores
    if (!place_meeting(x + hsp, y, obj_RedSlimeIdle))
    {
        hsp = -8;
    }
}

if (keyboard_check(vk_right) && jump_current == 2 && !keyboard_check(vk_rcontrol))
{
    sprite_index = spr_BlueSlimeRun;
    image_xscale = -scale;
    
    // Movimiento cuando no hay colisión con otros jugadores
    if (!place_meeting(x + hsp, y, obj_RedSlimeIdle))
    {
        hsp = 6;
    }
}

if (keyboard_check(vk_right) && jump_current < 2)
{
    if (vsp < 0) 
    {
        sprite_index = spr_BlueSlimeJumpUp;
        image_xscale = -scale;
    }
    
    if (vsp == 0) 
    {
        sprite_index = spr_BlueSlimeJumpDown;
        image_xscale = -scale;
    }
    
    // Movimiento cuando no hay colisión con otros jugadores
    if (!place_meeting(x + hsp, y, obj_RedSlimeIdle))
    {
        hsp = 6;
    }
}

// Sprint hacia la derecha
if (keyboard_check(vk_right) && keyboard_check(vk_rshift) && jump_current == 2 && !keyboard_check(vk_rcontrol))
{
    sprite_index = spr_BlueSlimeSprint;
    image_xscale = -scale;
    
    // Movimiento cuando no hay colisión con otros jugadores
    if (!place_meeting(x + hsp, y, obj_RedSlimeIdle)) 
    {
        hsp = 8;
    }
}

if (keyboard_check(vk_right) && keyboard_check(vk_rshift) && jump_current < 2)
{
    if (vsp < 0) 
    {
        sprite_index = spr_BlueSlimeJumpUp;
        image_xscale = -scale;
    }
    
    if (vsp == 0) 
    {
        sprite_index = spr_BlueSlimeJumpDown;
        image_xscale = -scale;
    }
    
    // Movimiento cuando no hay colisión con otros jugadores
    if (!place_meeting(x + hsp, y, obj_RedSlimeIdle)) 
    {
        hsp = 8;
    }
}

// Salto
if (keyboard_check_pressed(vk_up) && jump_current > 0)
{
    sprite_index = spr_BlueSlimeJumpUp;
    
    vsp = -10;
    jump_current--;
}

if (vsp == 0) 
{
    sprite_index = spr_BlueSlimeJumpDown;
}

// Colisión con otros jugadores
if (place_meeting(x + hsp, y, obj_RedSlimeIdle)) 
{
    while (!place_meeting(x + hsp, y, obj_RedSlimeIdle))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}

// Colisión con PowerUp
if (place_meeting(x + hsp, y, obj_PowerUp))
{
    instance_deactivate_object(obj_PowerUp);
    scale += 0.2;
}

// Colisión vertical
if (place_meeting(x, y + vsp, obj_PlatformPlaceholder))
{
    while (!place_meeting(x, y + sign(vsp), obj_PlatformPlaceholder))
    {
        y = y + sign(vsp);
    }
    if (vsp > 0)
    {
        jump_current = jump_number;
    }
    vsp = 0;
}
y = y + vsp;

// Colisión horizontal
if (place_meeting(x + hsp, y, obj_PlatformPlaceholder))
{
    while (!place_meeting(x + hsp, y, obj_PlatformPlaceholder))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
    x = xprevious;
}
x = x + hsp;

// Colisión horizontal con los bordes de la sala
if (x > room_width)
{
    x = xprevious;
}
if (x < 0)
{
    x = 0;
}