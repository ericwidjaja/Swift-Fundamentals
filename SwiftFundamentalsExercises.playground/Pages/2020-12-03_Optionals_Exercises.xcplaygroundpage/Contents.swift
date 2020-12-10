import Foundation

/*
 https://github.com/alexpaul/Swift-Fundamentals/blob/main/Optionals.md
 
 Question 1
 a. Given the variable userNameOne below, print "The username is Test User". Use Optional Binding (if let) to print the name.
 var userNameOne: String? = "Test User"
 
 b. Given the variable userNameTwo below, print "The username is undefined". Use the nil coalescing operator (??).
 
 var userNameTwo: String? = nil
 
 var userNameOne: String? = "Test User"
 
 if let userOne = userNameOne {
 print("The user name is \(userOne)")
 }
 
 var userNameTwo: String? = nil
 print(userNameTwo ?? "The username is undefined")
 --------------------------------------**********---------------------------------------------
 
 Question 2
 a. Given the variables rectOneWidth and rectOneHeight below, print "The area of rectOne is 50". Use Optional Binding (if let) to print the area.
 
 b. Given the variables rectTwoWidth and rectTwoHeight below, print "The are of rectTwo is not able to be calculated". Use Optional Binding (if let) to print this message.

var rectOneWidth: Double? = 5
var rectOneHeight: Double? = 10

if let rectHeight = rectOneHeight,
    let rectWidth = rectOneWidth {
    var rectOneArea = Int(rectHeight * rectWidth)
    print("The area of rectOne is \(rectOneArea)")
}

var rectTwoWidth: Double? = nil
var rectTwoHeight: Double? = nil

if let rectHeight = rectTwoHeight,
    let rectWidth = rectTwoWidth {
    var rectTwoArea = Int(rectHeight * rectWidth)
    print("The area of rectTwo is \(rectTwoArea)")
} else {
    print("The are of rectTwo is not able to be calculated")
}

Question 3
a. Given the variables userOneName, userOneAge, and userOneHeight below, write code that prints "Hello Anne! You are 15 years old and 5.8 feet tall" (1 foot = 12 inches). Use optional binding.

--------------------------------------**********---------------------------------------------
*/
var userOneName: String? = "Anne"
var userOneAge: Int? = 15
var userOneHeight: Double? = 70
    
if let userName = userOneName,
    let userAge = userOneAge,
    let userHeight = userOneHeight {
    let height = String(format: "%.1f", Double(userHeight) / Double(12.0))
    print(" Hello \(userName)!\n You are \(userAge) and \(height) feet tall")
}

/*
 Give the variable favoriteNumber, write code that either prints "Your favorite number is " followed by the number, or "I don't know what your favorite number is"

 favoriteNumber is of type Int? and will either be nil or a random number between 0 and 10. It will change each time you run your Playground.

 var favoriteNumber = Bool.random() ? Int.random(in: 0...10) : nil
 */
