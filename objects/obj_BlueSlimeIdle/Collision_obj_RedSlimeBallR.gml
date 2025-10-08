// Reducción del tamaño del personaje cuando es golpeado
if (image_xscale > 0.3 || image_yscale > 0.3) 
{
    scale -= 0.1;	
    image_xscale = scale;
    image_yscale = scale;
}

// Cuando el tamaño llega a 0.3
if (scale == 0.3) 
{
    audio_stop_sound(global.bgMusic);  // Detener la música de fondo global
    global.redSlimeWon = true;  // Establecer la variable global "redSlimeWon" como verdadera
    room_goto(Room1End);  // Cambiar a la sala "Room1End"
}