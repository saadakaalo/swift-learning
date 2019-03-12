import UIKit

/*:
 ## Switch
 Different Kind of switch cases
 */
var num = 13

switch num {
case 0:
    print("Zero")
    print("Wow")
case 1,2,3,4:
    print("OneTwoThreeFour")
case 5...11:
    print(">= five and <= eleven")
case let x where x%2 == 0:
    print("Even  \(x)")
default:
    print(">> 11 odd")
}


/*:
 ## Optionals
 */
var possibleString: String?
possibleString = "This is water"

print(possibleString!)

possibleString = nil

/*:
 ### Optionals binding
 */
if let surelyThereIsString = possibleString {
    print(surelyThereIsString)
}

/*:
 ### Multiple optionals binding
 */
possibleString = "This is water"
let possibleInt: Int? = 21

if let sureString = possibleString, let sureInt = possibleInt, sureInt > 20 {
    print("All right")
    print(sureString, sureInt)
} else {
    print("Something must be wrong")
}

/*:
 ### Implicitly unwrapped optionals
 */
var assumedString: String!
var sureString: String
assumedString = "This will always have a value from now"
//assumedString = nil
sureString = assumedString
print(sureString)

/*:
 ### Nil Coalescing Operator
 */
let defaultColorName = "red"
var userDefinedColorName: String?

var myColor = userDefinedColorName ?? defaultColorName
userDefinedColorName = "blue"
myColor = userDefinedColorName ?? defaultColorName

/*:
 ## Tuples
 */
var yellowRGB = (red: 1, green: 1, blue: 0)
yellowRGB.red
yellowRGB.green
yellowRGB.blue

var whiteRGB = (1, 1, 1)
whiteRGB.0
whiteRGB.1

let (red, _, blue) = whiteRGB
print(red)


/*:
 ### Tuples in switch
 */
let somePoint = (5, 9)

switch somePoint {
case (0, 0):
    print("Origin")
case (_, 0):
    print("X axis")
case (0, _):
    print("Y axis")
case (-1...1, -1...1):
    print("Inside a box")
case (2, let x):
    print("Value binding only one element:", x)
case let (x, y):
    print("Value binding with all elements:", x, y)
}

/*:
 ### Tuples comparison
 Tuples comparison is possible for the number and type of the elements match
 */
(1, "zbra") >= (1, "zeba")

/*:
 Function returns tuple
 */
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let (minim, maxim) = minMax(array: [4, 2, 56, 23, 8, 29]);
