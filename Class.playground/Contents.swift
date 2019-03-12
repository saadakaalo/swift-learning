import UIKit

/*:
 ## Class
 */
class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    //    var compressionRatio: Double // cannot have a uninitialized non-optional property
}
let vMode = VideoMode()

class ExtendedVideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    /// Uninitialize optionals need to be initialize in the init()
    var compressionRatio: Double
    init() {
        compressionRatio = 0.8
    }
}
let evMode = ExtendedVideoMode()

/*:
 ### Inheritence
 */
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
    func test() {
        super.makeNoise()
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
