import UIKit

/*:
 ## Structure
 - note:
 Structures are value type
 */

/*:
 Structures With Default Values
 */
struct Person {
    var name = "Nicola"
    var age = 23
    var gender = "Male"
}

let aPerson = Person()
let anotherPerson = Person(name: "Ganduly", age: 25, gender: "Male")

struct Book {
    var name: String
    var author: String
    var price: Int = 0
}
//let aBook = Book() //This is error
let anotherBook = Book(name: "Kafka in the shore", author: "Haruki Murakami", price: 780)

struct Computer {
    let processor: String
    var brand = "Nicola"
    var price = 23000
}
let anotherComputer = Computer(processor: "Intel", brand: "Apple", price: 50000)

struct WindowsComputer {
    let processor: String = "Intel"
    var brand = "Nicola"
    var price = 23000
    func whoBuildWindows() {
        print("Bill Gates")
    }
    /// Need to add 'mutating' because stucts are value type
    mutating func changeBrand() {
        brand = "AMD"
    }
}
let aWindowsComp = WindowsComputer(brand: "HP", price: 34000)
var bWindowsComp = WindowsComputer()
bWindowsComp.whoBuildWindows()
bWindowsComp.changeBrand()

struct Celsius {
    var temperatureInCelsius: Double

    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }

    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }

    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let celsius = Celsius(fromKelvin: 34)
