
function canShoot() {
    return canShoot && currentBullets < maxBullets;
}

// Function para realizar el doble salto
function doubleJump() {
    if (canDoubleJump && jumpCount < maxJumps) {
        // Realizar el doble salto
        // Código para ejecutar el salto adicional aquí
        jumpCount++; // Incrementar el contador de saltos
    }
}

// Function para el ataque del slime
function attack(enemyDistance) {
    if (enemyDistance < attackRange) {
        // Realizar el ataque
        // Código para ejecutar la animación de ataque y causar daño al enemigo aquí
        return true;
    } else {
        return false;
    }
}

/// BlueSlime object (Herencia de superSlime)
// No hay herencia directa en GML, se simula llamando a las funciones de la superclase manualmente

// Create event de BlueSlime
// Aquí se pueden definir propiedades específicas de BlueSlime
color = "blue"; // Propiedad específica para BlueSlime

// Function específica de BlueSlime
function specialAbility() {
    // Código para la habilidad especial del BlueSlime
}

/// RedSlime object (Herencia de superSlime)
// No hay herencia directa en GML, se simula llamando a las funciones de la superclase manualmente

// Create event de RedSlime
// Aquí se pueden definir propiedades específicas de RedSlime
color = "red"; // Propiedad específica para RedSlime

// Function específica de RedSlime
function specialAttack() {
    // Código para el ataque especial del RedSlime
}