import UIKit
/*
1. Variable Declarations
Which of the following variables/constants are declared correctly? Select all that apply.

a. let nameOfPrincipal: Character = "Mrs. Watkins"
b. var temperatureOutside: Int = 90.7
c. var isSummer: String = false
d. let whiteHouseAddress: Int + String = 1600 + "Pennsylvania Ave"
e. var peopleAtParty: Double = "95"
*/

//Solution for #1:
let nameOfPrincipal: String = "Mrs. Watkins"
var temperatureOutside: Double = 90.7
var isSummer: Bool = false
let whiteHouseAddress: String = String(1600) + "Pennsylvania Ave"
var peopleAtParty: String = "95"

/*
2. Boolean Evaluations 1
 Which of the following expressions evaluate to true?
 a. !(4 + 3 < 2 * 4)
 b. !(1 + 1 != 2) && !(3 >= 3)
 c. (3 < 2 || (0 < 1 && 3 >= 3)) && true
 d. !!(!!true && !!false)
 e. true && (true && (true && (true || false)))
 */
//Solution for #2:
// a. !(7 < 8) -> false
// b. false && false -> false
// c. (false || true) && true -> true
// d. error
// e. true

/*
 3. Sum
 You are given two variables a and b, compute their sum, store it in a variable named sum, then print the result.

 Example 1
 Input:
 var a = 1
 var b = 2
 Expected values:
 sum = 3
 Output:
 3

 Example 2
 Input:
 var a = 13
 var b = 22
 Expected values:
 sum = 35
 Output:
 35
 */
var sum = 0
func addTwoNumbers(a: Int, b: Int) -> Int {
    sum = a + b
    return sum
}
//print("Solution for example 1: sum is \(addTwoNumbers(a: 1, b: 2))\n")

//print("Solution for example 2: sum is \(addTwoNumbers(a: 13, b: 22))\n")
/*4. Seconds in Year
Determine the number of seconds in a year and store the number in a variable named secondsInAYear.
*/


//https://stackoverflow.com/questions/29999024/adding-thousand-separator-to-int-in-swift
extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = ","
        return formatter
    }()
}
extension Numeric {
    var formattedWithSeparator: String { Formatter.withSeparator.string(for: self) ?? "" }
}

let numOfSecondsInAYear = 365 * 24 * 60 * 60

//print(numOfSecondsInAYear.formattedWithSeparator)

/*
 5. Number of Pixels
 Your are given the width and height of a screen in pixels. Calculate the total number of pixels on the screen and store the result in a variable named numberOfPixels.

 var width = 1920
 var height = 1080

 Example 1
 Input:
 var width = 4
 var height = 3
 Expected values:
 numberOfPixels = 12

 Example 2
 Input:
 var width = 1920
 var height = 1080
 Expected values:
 numberOfPixels = 2073600

 */
//Solution:
var numberOfPixels = 0
func totalPixelsNumber(in width: Int, height: Int) -> Int {
    numberOfPixels = width * height
    return numberOfPixels
}
//print(totalPixelsNumber(in: 4, height: 3).formattedWithSeparator)
//print(totalPixelsNumber(in: 1920, height: 1080).formattedWithSeparator)

/*6. Sum and Difference
You are given the sum and the difference of two numbers. Find out the values of the original numbers and store them in variables a and b.

var sum = 16 // a + b
var diff = 4 // a - b

Example 1
Input:
var sum = 16
var dif = 4
Expected values:
a = 10
b = 6

Example 2
Input:
var sum = 2
var dif = 0
Expected values:
a = 1
b = 1

Hint:
sum + diff = a + a + b - b
sum + diff = 2 * a
 */
var a = 0
var b = 0
func findOrigNum (sum: Int, diff: Int) -> (a:Int, b:Int) {
    a = (sum + diff) / 2
    b = sum - a
    return (a,b)
}
//print(findOrigNum(sum: 16, diff: 4))

/*7. Swap Values
 Given two variable a and b, swap their values. That is the new value of a will become the old value of b and vice versa.

 var a = 1
 var b = 2

 Example 1
 Input:
 a = 2
 b = 1

 Hint:
 Just assigning a to the value of b and b to the value of a will not work.

 var a = 1
 var b = 2

 a = b // a will have the value 2. The original value of a is lost
 b = a // b will remain the same
 
 */

var oldA = 1
var oldB = 2
let newA = oldB

oldB = oldA
oldA = newA
//print(oldA,oldB)

/*
 8. Find last number
 You are given a number a. Print the last digit of a.

 Example 1
 Input:
 var a = 123
 Output: 3

 Example 2
 Input:
 var a = 337
 Output: 7

 Hint:
 Use the remainder % operator.
 */

func findLastDigit (for number: Int) -> Int {
    var remainder = 0
    remainder = number % 10
    return remainder
}
print("The last digit is -> \(findLastDigit(for: 123))")

//Example 1
//Input:
var rockysAgeInDogYears = 50

//Output: 7
 var output = rockysAgeInDogYears / 7
/*
 Example 1
 Input:
 var x = 3
 var y = 2
 var bob = 12
 Expected values:
 alice = 27
 */
var x = 3
var y = 2
var bob = 12
var alice = x + (y * bob)

//var x = 17
//
//Example 1
//Input:
//var x = 17
//
//Expected values:
//apples = 2
//oranges = 9
var originApple = 17
var remainderApple = 0
var oranges = 0

oranges = (originApple / 5) * 3
remainderApple = originApple % 5
