/// ISlimeInterface object (Simulación de interfaz)

function canShoot() {
    // Esta función debe ser implementada en las subclases
}

/// Special object (clase especial para specialAttack)

function specialAttack(slimeColor) {
    if (slimeColor == "blue") {
        if keyboard_check_pressed(vk_insert) {
            canShoot();
            // Código para el ataque especial del BlueSlime
        }
    } else if (slimeColor == "red") {
        if keyboard_check_pressed(ord("V"))) {
            canShoot();
            // Código para el ataque especial del RedSlime
        }
    }
}

/// BlueSlime object (Implementación de la clase Special)
inherit ISlimeInterface;

// Create event de BlueSlime
color = "blue"; // Propiedad específica para BlueSlime

// Implementación de la función canShoot en BlueSlime
function canShoot() {
    // Código para verificar si puede disparar (BlueSlime)
}

// Implementación de la función specialAttack en BlueSlime
specialAttack("blue");

/// RedSlime object (Implementación de la clase Special)
inherit ISlimeInterface;

// Create event de RedSlime
color = "red"; // Propiedad específica para RedSlime

// Implementación de la función canShoot en RedSlime
function canShoot() {
    // Código para verificar si puede disparar (RedSlime)
}

// Implementación de la función specialAttack en RedSlime
specialAttack("red");