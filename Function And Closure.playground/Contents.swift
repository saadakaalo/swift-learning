import UIKit

/*:
 ## Functions
 Different types of functions
 */
func funcWithoutParameter() {
}
funcWithoutParameter()

func funcWithReturnValue() -> Bool {
    return false
}
let aBool = funcWithReturnValue()

func difference(x: Int, y: Int) -> Int {
    return x - y
}
difference(x: 5, y: 3)

func difference(of x: Int, with y: Int) -> Int {
    return x - y
}
difference(of: 7, with: 3)

func difference(_ x: Int, _ y: Int) -> Int {
    return x - y
}
difference(3,7)

func funcWithDefaultParam(x: Int = 5) {
    print(x)
}
funcWithDefaultParam()
funcWithDefaultParam(x: 10)

/*:
 ### Function overloading
 */
func foo(_ value: String) {
    print("..1")
    print(value)
}

func foo(_ value: Int) {
    print("..2")
    print(value)
}

func foo() {
    print("..3")
    print("Foo!")
}

func foo() -> String {
    print("..4")
    return "Foo!"
}

foo("hi")
foo(5)
let withReturnValue:String = foo()
foo() as Void /// this is strnage 🧐

/*:
 ### Nested Function
 */
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var value = 5
for _ in 1...50 {
    let aRandomBool = arc4random()%2 == 0
    let stepFunc = chooseStepFunction(backward: aRandomBool)
    value = stepFunc(value)
}
print(value)

/*:
 ### Function types
 */
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
let mathFuction: (Int, Int) -> Int
mathFuction = multiplyTwoInts
mathFuction(3, 6)

/*:
 ## Closure
 */
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
reversedNames = names.sorted(by: { (s1, s2) -> Bool in
    return s1 > s2
})
/*:
 Infering the function parameter and return type
 */
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2})
/*:
 Implicit Returns from Single-Expression Closures
 */
reversedNames = names.sorted(by: { s1, s2 in s1 > s2})
reversedNames = names.sorted(by: { $0 > $1 } )
reversedNames = names.sorted(by: >)
reversedNames = names.sorted() { $0 > $1 }

/*:
 Closure as function trailing parameter
 */
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

// Here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

