import UIKit
import Foundation
/*
 Oct 22, 2020 Strings & Characters
 */
let str = "Welcome to Swift"
/*
 ============================================================================================
                                        EXERCISES
 ============================================================================================
 */

//Question 1
//Write code that prints out all the numbers from 1 to 10 as a single string.
var numStr = ""
for num in 1...10 {
    numStr = numStr + " " + String(num)
}
print("Numbers from 1-10: \(numStr) ")

//Question 2
//Write code that prints out all the even numbers from 5 to 51 as a single string.
var evenNumbers = ""
for number in 5...51 {
    if number % 2 == 0 {
        evenNumbers.append(String(number) + ", ")
    }
}
print("Even numbers from 5...51 are: \(evenNumbers) ")

//Question 3
//Write code that prints out every number ending in 4 between 1 and 60 as a single string.

var numbersEndsWith4 = ""
for num in 1...60 {
    if num % 10 == 4 {
        numbersEndsWith4.append(String(num) + ", ")
    }
}

print("Numbers between 1-60 that ending in '4' are: \(numbersEndsWith4) ")
//Question 4
//Print each character in the string "Hello world!"
var helloStr : String = "Hello world!"
for char in helloStr {
    print(char)
}

//Question 5
//Print out the last character in the string below. You cannot use the Character literal "!" (i.e you must access myStringSeven's characters).
//
let myStringSeven = "Hello world!"
let lastCharIndex = myStringSeven[myStringSeven.index(before: myStringSeven.endIndex)]
print(lastCharIndex)

/*
 Question 6
 You are given a string stored in the variable aString. Create new string named replacedString that contains the characters of the original string with all the occurrences of the character "e" replaced by "*".

 var aString = "Replace the letter e with *"
 // Your code here
 Example:

 Input: let aString = "Replace the letter e with *"

 Expected values: replacedString = "R*plac* th* l*tt*r * with *"
 */

func replaceChar(inputStr: String, replaceChar: String, withChar: String) -> String {
    var resultStr = ""
    
    for element in inputStr {
        if element == Character(replaceChar) {
            resultStr.append(withChar)
        } else {
            resultStr.append(element)
        }
    }
    return resultStr
}
print(replaceChar(inputStr: "Pursuit", replaceChar: "u", withChar: "*"))
