
canShoot = true; // Variable para verificar si puede disparar
maxBullets = 3; // Número máximo de balas

canDoubleJump = true; // Variable para verificar si puede hacer doble salto
jumpCount = 0; // Contador de saltos
maxJumps = 2; // Número máximo de saltos permitidos

attackRange = 50; // Rango de alcance del ataque

function canShoot() {
    return canShoot && currentBullets < maxBullets;
}


function doubleJump() {
    if (canDoubleJump && jumpCount < maxJumps) {

        jumpCount++;
    }
}

// Function para el ataque del slime
function attack(enemyDistance) {
    if (enemyDistance < attackRange) {

        return true;
    } else {
        return false;
    }
}