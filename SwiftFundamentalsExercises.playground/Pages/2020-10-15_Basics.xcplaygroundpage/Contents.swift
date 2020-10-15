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
func totalPixelsNumber(in width: Int, height: Int) -> Int {
    let numberOfPixels = width * height
    return numberOfPixels
}
print("Total pixel number = \(totalPixelsNumber(in: 4, height: 3).formattedWithSeparator)")
print("Total pixel number = \(totalPixelsNumber(in: 1920, height: 1080).formattedWithSeparator)")

/*-----------------------------------------------------------------------------------------
 6. Sum and Difference
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

func findOrigNum (sum: Int, diff: Int) -> (a:Int, b:Int) {
    let a = (sum + diff) / 2
    let b = sum - a
    return (a,b)
}
//print(" These are the two original numbers: \(findOrigNum(sum: 16, diff: 4))")

/*----------------------------------------------------------------------------------------
 7. Swap Values
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

/*-----------------------------------------------------------------------------------------
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
//print("The last digit is -> \(findLastDigit(for: 123))")
/*
 9. You are given Rocky’s age in dog years. Print Rocky’s age in human years. You know that 1 human year is 7 dog years.

        Example 1
        Input:
        var rockysAgeInDogYears = 50

        Output: 7
 */

func rockyAgeInDogYears(rockysAgeInDogYears: Int) -> Int {
    return rockysAgeInDogYears / 7
}
print("Rocky age in dog years = \(rockyAgeInDogYears(rockysAgeInDogYears: 50))")

/* ---------------------------------------------------------------------------------------
 10. Alice's Age
 x years from now Alice will be y times older than her brother Bob. Bob is 12 years old. How old is Alice?
     Example 1
     Input:
     var x = 3
     var y = 2
     var bob = 12
     Expected values:
     alice = 27
 */
func aliceAge(xYearsFromNow: Int, yTimesOlderThanBob: Int, bobAge: Int) -> Int {
    return xYearsFromNow + (yTimesOlderThanBob * bobAge)
}
print("Alice will be \(aliceAge(xYearsFromNow: 3, yTimesOlderThanBob: 2, bobAge: 12)) years old")

/* --------------------------------------------------------------------------------------
 11. Trading Oranges for Apples
 You have x apples. Bob trades 3 oranges for 5 apples. He does not accept trades with cut fruit. How many oranges can you get from Bob and how many apples will you have left? The number of apples you will have left should be stored in a variable named apples. The number of oranges you will have after the trade should be stored in a variable named oranges.

var x = 17

Example 1
Input:
var x = 17

Expected values:
apples = 2
oranges = 9
 */

func tradeOranges4Apples (numOriginalApple: Int) -> String {
    let oranges = (numOriginalApple / 5) * 3
    let remainderApple = numOriginalApple % 5
    
    return "\(numOriginalApple)🍏 can be traded for \(oranges)🍊, and Bob still have \(remainderApple)🍏 left!!"
}
print(tradeOranges4Apples(numOriginalApple: 17))
/*
 ----------------------------------------------------------------------
 12. Boy and Girl Percentages
 A class consists of numberOfBoys boys and numberOfGirls girls.

 Print the percentage of boys in the class followed by the percentage of girls in the class. The percentage should be printed rounded down to the nearest integer. For example 33.333333333333 will be printed as 33.

 var numberOfBoys = 20
 var numberOfGirls = 60

 Example 1
 Input:
 var numberOfBoys = 20
 var numberOfGirls = 60

 Output:
 25 // percentage of boys
 75 // percentage of girls
 */

func girlsBoysPercentage (numberOfGirls: Int, numberOfBoys: Int) -> String {
    let total = numberOfGirls + numberOfBoys
    let girlsPercentage = (numberOfGirls * 100) / total
    let boysPercentage = (numberOfBoys * 100) / total
    
    return "There are \(girlsPercentage) percentage of girls and \(boysPercentage) percentage of boys"
}
print(girlsBoysPercentage(numberOfGirls: 60, numberOfBoys: 20))
/*--------------------------------------------------------------------
 13. Boolean Evaluations 2
 Which of the following expressions evaluate to true?

 a. false || true       //true
 b. false && true       //false
 c. !false              //true
 d. !!!true             //error
 e. !(true && true)     //false
 
-----------------------------------------------------------------------
 14. Boolean Evaluations 3
 Which of the following expressions evaluate to true?

 a. 9 == 2                  //false
 b. "Hello!" == "Hello!"    //true
 c. 19.0 >= 19.0            //true
 d. 9 > 7 && 7 < 10         //true
 
 ---------------------------------------------------------------------------------------------
 15. Class Average
 You are given three grades obtained by 3 students, which are stored in variables grade1, grade2, grade3 and all of type Double. Create a variable called yourGrade of type Double and give it a value. Print "above average" if your grade is greater than the class average or "below average" otherwise.

 var grade1 = 7.0
 var grade2 = 9.0
 var grade3 = 5.0
 
 */
func gradeComparison (yourGrade: Double, grade1: Double, grade2: Double, grade3: Double) -> String {
    let classAverage = (grade1 + grade2 + grade3) / 3
    var yourGradeStatus = ""
    if yourGrade > classAverage {
        yourGradeStatus = "Your grade of \(yourGrade) is greater than class average of \(classAverage) 👍🏼"
    } else {
        yourGradeStatus = "Your grade of \(yourGrade) is below than class average of \(classAverage) 😐"
    }
    return yourGradeStatus
}
print(gradeComparison(yourGrade: 7.15, grade1: 7.0, grade2: 9.0, grade3: 5.0))
/*
 ---------------------------------------------------------------------------------------------
 16. Even or Odd
 You are given a number. Print even if the number is even or odd otherwise.

 let number = 2
 */
func evenOrOdd (inputNum: Int) -> String {
    var resultStr = ""
    if inputNum % 2 == 0 {
        resultStr = "your number is an EVEN number"
    } else {
        
        resultStr = "your number is an ODD number"
    }
    return resultStr
}
evenOrOdd(inputNum: 2)
