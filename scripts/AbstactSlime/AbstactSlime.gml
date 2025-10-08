
function specialAbility() {
    show_debug_message(".");
}

function specialAttack() {
    show_debug_message(".");
}

inherit SuperSlime;

// Create event de BlueSlime
color = "blue"; // Propiedad específica para BlueSlime

// Implementación de la función specialAbility en BlueSlime
function specialAbility() {
    show_debug_message("¡Habilidad especial del BlueSlime!");
    // Código para la habilidad especial del BlueSlime
}

/// RedSlime object (Herencia de superSlime)
inherit SuperSlime;

// Create event de RedSlime
color = "red"; // Propiedad específica para RedSlime

// Implementación de la función specialAttack en RedSlime
function specialAttack() {
    show_debug_message("¡Ataque especial del RedSlime!");
    // Código para el ataque especial del RedSlime
}
[9:23 a. m., 17/11/2023] Wilson B: /// superSlime object

// Funciones "abstractas" simuladas (plantillas)
function punchAttack() {
    show_debug_message("¡Error! La función punchAttack debe ser implementada en la subclase.");
}

function specialAttack() {
    show_debug_message("¡Error! La función specialAttack debe ser implementada en la subclase.");
}

// Resto del código común...

/// BlueSlime object (Herencia de superSlime)
inherit superSlime;

// Create event de BlueSlime
color = "blue"; // Propiedad específica para BlueSlime

// Implementación de la función punchAttack en BlueSlime
function punchAttack() {
    show_debug_message("¡Ataque de golpe del BlueSlime!");
    // Código para el ataque de golpe del BlueSlime
}

/// RedSlime object (Herencia de superSlime)
inherit superSlime;

// Create event de RedSlime
color = "red"; // Propiedad específica para RedSlime

