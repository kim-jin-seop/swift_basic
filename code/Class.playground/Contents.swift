import UIKit

class Vehicle{
    var currentSpeed = 0.0
    var description:String {
        return "Traveling at \(currentSpeed) miles per hour";
    }
    
    func makeNoise(){
        print("noiseless")
    }
}

let someVehicle = Vehicle()
someVehicle.currentSpeed = 1.0
print(someVehicle.currentSpeed)
someVehicle.makeNoise()
print(someVehicle.description)


//상속
class Bicycle: Vehicle{
    var hasBasket = false
}

let someBicycle = Bicycle()

someBicycle.hasBasket = true
someVehicle.currentSpeed = 15.0
print(someBicycle.description)
print(someBicycle.hasBasket)

class Tandem:Bicycle{
    var currentNumberOfPassengers = 0
    override var description: String{
        return "Traveling at \(currentSpeed) miles per hour, number of passenger : \(currentNumberOfPassengers)"
    }
}

let someTandem = Tandem()
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 22.0

print("Tandem : \(someTandem.description)")

class Train:Vehicle{
    override func makeNoise(){
        print("Choo Choo")
    }
}

//메소드 override
let someTrain = Train()
someTrain.makeNoise()

class Car:Vehicle{
    var gear = 1
    override init(){
        print("Car")
    }
    init(newGear:Int){
        gear = newGear
    }
}

let someCar = Car()

let someCar2 = Car(newGear: 5)
print(someCar2.gear)
