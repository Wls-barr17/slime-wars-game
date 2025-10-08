function punchAttack(slimeColor) {
    if (slimeColor == "blue") {
        if keyboard_check_pressed(vk_control) {
            show_debug_message("¡Ataque de golpe del BlueSlime!");
            // Código para el ataque de golpe del BlueSlime
        }
    } else if (slimeColor == "red") {
        if keyboard_check_pressed(ord("C"))) {
            show_debug_message("¡Ataque de golpe del RedSlime!");
            // Código para el ataque de golpe del RedSlime
        }
    }
}