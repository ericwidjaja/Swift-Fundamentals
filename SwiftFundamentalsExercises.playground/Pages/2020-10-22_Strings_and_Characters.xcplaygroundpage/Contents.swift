import UIKit
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
    numStr += String(num)
}
print(numStr)

//Question 2
//Write code that prints out all the even numbers from 5 to 51 as a single string.
var evenNumbers = ""
for number in 5...51 {
    if number % 2 == 0 {
        evenNumbers.append(String(number) + ", ")
    }
}
print("Even numbers from 5...51 are: \(evenNumbers) ")

