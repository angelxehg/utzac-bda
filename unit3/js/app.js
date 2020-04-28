class Vehicle {

    constructor(brand, model, color) {
        // Attributes
        this.brand = brand;
        this.model = model;
        this.color = color;
    }

    // Methods
    turnOn() {
        // TODO
        return this.brand + ": Engine ON";
    }

    turnOff() {
        // TODO
        return this.brand + ": Engine OFF";
    }
}

sedan = new Vehicle("BMW", "i3 2020", "Red");
console.log(sedan);

vocho = new Vehicle("VW", "1980", "Green");
console.log(vocho);
