import UIKit

/*:
 ## Array
 */

var someInts = [Int]()
someInts.append(2)
someInts.append(contentsOf: [3, 4, 5])
//someInts = []

let moreInts = [5, 6, 7]
//moreInts.append(6) // error; cannot append new vals in a constant
someInts += moreInts

someInts[1...4] = [0, 9]
someInts

var cosmopolitan: [Any] = []
cosmopolitan.append("🤥")
cosmopolitan.append(5)
cosmopolitan.append([3, 5, "🤖"])



/*:
 ## Pass operator as closure
 Sort an array by passing operator as operator.
 */
let array = [3, 9, 1, 4, 6, 2]
let sorted = array.sorted(by: <)


/*:
 ## String
 */
/*:
 Multiline String
 */
let quotation = """
The hardest thing to learn in life is which bridge to cross and which to burn.
Spend each day trying to be a little wiser than you were when you woke up. Discharge your duties faithfully and well. Systematically you get ahead, but not necessarily in fast spurts.
Nevertheless, you build discipline by preparing for fast spurts. Slug it out one inch at a time, day by day. At the end of the day – if you live long enough – most people get what they deserve.
"""

/*:
 Substring
 */
let greeting = "Hey, you!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]

// Convert the result to a String for long-term storage.
let newString = String(beginning)
