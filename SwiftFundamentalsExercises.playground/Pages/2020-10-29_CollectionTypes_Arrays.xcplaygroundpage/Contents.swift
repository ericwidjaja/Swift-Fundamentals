import Foundation
import UIKit
//https://github.com/alexpaul/Swift-Fundamentals/blob/main/Collection-Types-Arrays.md
/* Question 1
Create an array of strings called colors that contain "orange", "red", "yellow", "turquoise", and "lavender".

Then, using array subscripting and string interpolation, print out the String "orange, yellow, and lavender are some of my favorite colors".

//Solution
var colors:[String] = ["orange", "red", "yellow", "turquoise", "lavender"]
print(" \(colors[0]), \(colors[2]), and \(colors[colors.count - 1]) are some of my favorite colors \n")
//--------------------------------------------------------------------------------------------
 
 Question 2
 Remove "Illinois" and "Kansas" from the array below.
 var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
func removeStates(state1: String, state2: String, fromStates: [String]) -> [String] {
    var remainingStates = [String]()
    for state in fromStates {
        if state != state1 && state != state2 {
            remainingStates.append(state)
        }
    }
    return remainingStates
}
print(" The new westernStates are: \(removeStates(state1: "Illinois", state2: "Kansas", fromStates: westernStates))")
//--------------------------------------------------------------------------------------------
 
 Question 12
 Iterate through thirdListOfNumbers, and print out the sum of all the even numbers.

 var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]

func sumEvenNumbers (in numbersList: [Int]) -> Int {
    var sum = 0
    
    for number in numbersList {
        if number % 2 == 0 {
            sum += number
        }
    }
    return sum
}
print(sumEvenNumbers(in: thirdListOfNumbers))

 //--------------------------------------------------------------------------------------------
.
.
.
 Question 13
 Append every Int that appears in both listOne and listTwo to the sharedElements array. Then print how many Ints are shared.

 Assumption: both arrays are of equal length.

 Constraints: you cannot use Sets

 var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
 var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
 var sharedElements = [Int]()
 
Solution:

var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()

func sameElements(in list1:[Int], list2:[Int]) -> [Int] {
    for number in listOne {
        if listTwo.contains(number) {
            sharedElements.append(number)
        }
    }
    return sharedElements
}

print(sameElements(in: listOne, list2: listTwo))
 //--------------------------------------------------------------------------------------------
 
 Question 15
 Find the second smallest number in an Array of Ints
 let arrayOfNumbers = [-6, 13, 0, 34, 0, 45, -12, 9, 11, 4]

// Solution*/
 let arrayOfNumbers = [-6, 13, 21]

 var secondSmallest = Int.max
 var smallest = Int.max

 for num in arrayOfNumbers {
   if num < smallest {
    print(smallest)
     secondSmallest = smallest
     smallest = num
   } else if num < secondSmallest && num != smallest {
     secondSmallest = num
   }
 }

 print(smallest, secondSmallest) // -12, -6
 //--------------------------------------------------------------------------------------------
 /*
 Question 16
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

 Find the sum of all the multiples of 3 or 5 below 1000.
 */

func sumAllMultiplesOf(num1: Int, num2:Int, inNumbersbelow: Int) -> Int {
    var sum = 0
    
    for num in 1..<inNumbersbelow {
        if num % num1 == 0 || num % num2 == 0 {
            sum += num
        }
    }
    return sum
}
print("the sum of all numbers between 0 to 1000 is \(sumAllMultiplesOf(num1: 3, num2: 5, inNumbersbelow: 1000))")

