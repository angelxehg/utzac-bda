class Vehicle {

    constructor(brand, model, color) {
        // Attributes
        this.brand = brand;
        this.model = model;
        this.color = color;
    }

    // Methods

    name() {
        return this.color + " " + this.brand + " " + this.model;
    }
    turnOn() {
        // TODO
        return this.name() + ": Engine ON";
    }

    turnOff() {
        // TODO
        return this.name() + ": Engine OFF";
    }
}

sedan = new Vehicle("BMW", "i3 2020", "Red");
console.log(sedan);
console.log(sedan.turnOn());

vocho = new Vehicle("VW", "1980", "Green");
console.log(vocho);
console.log(sedan.turnOff());

class Truck extends Vehicle {

    constructor(brand, model, color) {
        super(brand, model, color);
        console.log(this.turnOn());
    }
}

voltron = new Truck("H1", "X2020", "Yellow");
console.log(voltron.turnOff());
