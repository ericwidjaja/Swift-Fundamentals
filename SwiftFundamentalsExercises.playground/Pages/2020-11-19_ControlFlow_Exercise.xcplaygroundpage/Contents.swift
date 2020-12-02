import Foundation
/*
 Question 1
 What will be printed when the code below is run? Select all that apply.
 
 let conditionOne = !(4 < 5) || !(3 > 8)
 let conditionTwo = !(!true)
 
 if conditionOne {
 print("A")
 } else if conditionTwo {
 print("B")
 }
 if conditionTwo {
 print("C")
 }
 print("D")
 
 Solution:

let conditionOne = !(4 < 5) || !(3 > 8) // 4>5 || 3<8 -> false || true
let conditionTwo = !(!true) // true
A & C & D
 
 _---------------------------------------------------------------------_
 Question 2
 What will the code block below print? Select all that apply:

 let appInfo = (name: "myCoolApp", version: 0.4)
 switch appInfo {
  case (_, 0.0..<1.0):
  print("\(appInfo.0) hasn't released yet")
  case ("myCoolApp", _):
  print("Thanks for looking at myCoolApp!")
  default:
  print("I'm not quite sure what you are looking at")
 }
 appInfo.0 hasn't released yet
 myCoolApp hasn't released yet --->>> SOLUTION
 Thanks for looking at myCoolApp!
 I'm not quite sure what you are looking at
 It will give a compile-time error
_----------------------------------------------------------------------_

Question 3
What will be printed to the console when the code below is run? Select all that apply.

let x: Int = 4
switch x {
case 0..<4:
 print("A")
case 5..<10:
 print("B")
case 11...:
 print("C")
default:
 print("D")
}
 SOLUTION : D
 _----------------------------------------------------------------------_
 
 Question 4
 What are the errors in the code below for the switch statement? Select all that apply.

 let candyType : String = "skittles"

 switch candyType {
 case "mAndM":
  print("Melts in your mouth, not in your hand")
 case "skittles":
  print("Taste the rainbow")
 case "snickers":
  print("Hungry? Grab a Snickers")
 }
 No parentheses around the conditions
 No opening and closing brackets in each of the cases
 No default case in the switch statement --->>>> SOLUTION
 No print statement right outside the switch statement
 _----------------------------------------------------------------------_
 
 Question 5
 Given the current weather conditions (rain, sunny, snow), use a switch statement to print an appropriate message to the user

 let currentWeather = "rain"

 // enter code below
let currentWeather = "rain"

switch currentWeather {
case "rain":
    print("Please bring an umbrella when you go out!")
case "sunny":
    print("Don't forget to use sun glasses")
default:
    print("It's snowing, don't forget")
}
_----------------------------------------------------------------------_
 Question 6
 Given the first name and last name of a Fellow, declare a variable fullName and use string interpolation to concatenate the Fellow's full name and print to the console e.g The Fellow's full name is John Appleseed

 let firstName = "John"
 let lastName = "Appleseed"
 
SOLUTION:
let firstName = "John"
let lastName = "Appleseed"
let fullName = "\(firstName) \(lastName)"
print("The Fellow's full name is \(fullName)")
 _----------------------------------------------------------------------_
 
Question 7
Convert the if/else statement below into a switch statement.

let temperatureInFahrenheit = 34

if temperatureInFahrenheit <= 40 {
 print("It's cold out.")
} else if temperatureInFahrenheit >= 85 {
 print("It's really warm.")
} else {
 print("Weather is moderate.")
}
SOLUTION:
let temperatureInFahrenheit = 34
switch temperatureInFahrenheit {
case ...40:
    print("It's cold out.")
case 85...:
    print("It's really warm.")
default:
    print("Weather is moderate.")
}
 _----------------------------------------------------------------------_

Question 8
Complete the following code so that "You win!" is printed.

if {
 print("You win!")
}
else {
 print("You lose!")
}

SOLUTION:
let didYouWin = true

if didYouWin {
 print("You win!")
}
else {
 print("You lose!")
}
 _----------------------------------------------------------------------_
Question 9
 Given a variable called numberOfSides, write code using a switch so that it prints out the name of the shape. Account for shapes with 3 to 10 sides and print an error message if out of range.

 var numberOfSides = 6

 Example 1:

 Input:
 var numberOfSides = 4

 Output:
 Quadilateral

 Example 2:

 Input:
 var numberOfSides = 2

 Output:
 Error

var numberOfSides = 10
switch numberOfSides {
case 3:
    print("Triangle")
case 4:
    print("Quadilateral")
case 5:
    print("Pentagon")
case 6:
    print("Hexagon")
case 7:
    print("Heptagon")
case 8:
    print("Octagon")
case 9:
    print("Nonagon")
case 10:
    print("Decagon")
default:
    print("error")
}
_----------------------------------------------------------------------_
 
 Question 10
 Create a switch statement that will convert a number grade into a letter grade as shown below:

 Numeric Score     Letter Grade
 100     A+
 90 - 99    A
 80 - 89    B
 70 - 79     C
 65 - 69     D
 Below 65     F

let numberScore: Int = 60

switch numberScore {
case 100:
    print("Student level grade is A+")
case 90...99:
    print("Student level grade is A")
case 80...89:
    print("Student level grade is B")
case 70...79:
    print("Student level grade is C")
case 65...69:
    print("Student level grade is D")
default:
    print("Student level grade is F")
}
 _----------------------------------------------------------------------_
 
 Question 11
 What is wrong with the block of code below? Correct it so it behaves as expected.

 let firstName = "Peter"

 if firstName == "Peter" {
  let lastName = "Gabriel"
 } else if firstName == "Phil" {
  let lastName = "Collins"
 }
 let fullName = firstName + " " + lastName
 SOLUTION:
 lastName was out of the 'if ... else if ..' code block and never declared!
 We should declared it as -> var lastName = ""

let firstName = "Peter"
var lastName = ""
if firstName == "Peter" {
    lastName = "Gabriel"
} else if firstName == "Phil" {
    lastName = "Collins"
}
let fullName = firstName + " " + lastName
 _----------------------------------------------------------------------_

Question 12
Write an if statement that prints out what decade of life someone is in (e.g "You are in your twenties). Then, write it as a switch statement.

let nameAndBirthYear: (String, Int) = ("Eric", 1917)

let currentYear = 2020
let yearsOld = currentYear - nameAndBirthYear.1

if yearsOld >= 13 && yearsOld <= 19 {
    print("You are in your teens")
}
if yearsOld >= 20 && yearsOld <= 29 {
    print("You are in your twenties")
}
if yearsOld >= 30 && yearsOld <= 39 {
    print("You are in your thirties")
}
if yearsOld >= 40 && yearsOld <= 49 {
    print("You are in your thirties")
}

if yearsOld >= 50 && yearsOld <= 59 {
    print("You are in your fifties")
}

if yearsOld >= 60 && yearsOld <= 69 {
    print("You are in your sixties")
}
if yearsOld >= 70 && yearsOld <= 79 {
    print("You are in your seventies")
}
else {
    print("age is out of range")
}

switch yearsOld {
case 13...19:
    print("You are in your teens")
case 20...29:
    print("You are in your twenties")
case 30...39:
    print("You are in your thirties")
case 40...49:
    print("You are in your fourties")
case 50...59:
    print("You are in your fifties")
case 60...69:
    print("You are in your sixties")
case 70...79:
    print("You are in your seventies")
case 80...89:
    print("You are in your eighties")
case 90...99:
    print("You are in your nineties")
default:
    print("age is out of range")
}

_----------------------------------------------------------------------_
 
 Question 13
 Consider the below switch statement. What should your system currently print?

 let number = 42

 switch number {
 case 365:
  print("Days in year")
 case 1024:
  print("Bytes in a Kilobyte")
 case 0:
  print("Where arrays start")
 case 42:
  print("The answer to life, the universe and everything")
 default:
  print("Some uninteresting number")
 }

//SOLUTION:
//"The answer to life, the universe and everything" in console
What happens when you change number to:

-a. 365? - prints "Days in year"

-b. 1024? - prints "Bytes in a Kilobyte"

-c. 65? - Some uninteresting number

What happens when you remove the default clause?
- compiler error, the switch must be exhaustive, we need a default statement as numbers are infinite
 _----------------------------------------------------------------------_
 
 Question 14
 Consider the variable below called population and the if-condition.

 a. Add an else-if-condition that states if population is less than 10000 but greater than 5000, then message changes to say it's "a medium size town".

 b. Add an else-condition where message changes to say it's a mid-size town.

 c. Convert your final if-else statement to a switch statement.

var population: Int = 10000
var message = String()

if population > 10000 {
    message = "\(population) is a large town"
}
if population > 5000 && population < 10000 {
    message = "\(population) is a medium size town"
} else {
    message = "\(population) is a mid-size town"
}
print(message)
//Using Switch
switch population {
case 10_001...:
    message = "\(population) is a large town"
case ..<10_000 where population > 5_000:
    message = "\(population) is a medium size town"
default:
    message = "\(population) is a mid-size town"
}
print(message)
_----------------------------------------------------------------------_

 Question 15
 Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15.

 a. Using a conditional

 b. Using a switch statement

let myTuple: (Int, Int) = (5, 10)
let myTupleSum = myTuple.0 + myTuple.1

if myTupleSum >= 15 {
    print("The sum of Ints in myTuple: \(myTuple), is at least 15")
} else {
    print("The sum of Ints in myTuple is only \(myTupleSum)")
}

//using Switch Statement

switch myTupleSum {
case 15...:
    print("The sum of Ints in myTuple: \(myTuple), is at least 15")
default:
    print("The sum of Ints in myTuple is only \(myTupleSum)")
}
_----------------------------------------------------------------------_

Question 16
FizzBuzz
 //https://leetcode.com/problems/fizz-buzz/
 */

func fizzBuzz(_ n: Int) -> [String] {
    var messages = [String]()
    for num in 1...n {
        if num % 3 == 0 && num % 5 == 0 {
        messages.append("FizzBuzz")
        } else if num % 5 == 0 {
            messages.append("Buzz")
        } else if num % 3 == 0 {
            messages.append("Fizz")
        } else {
            messages.append("\(num)")
        }
    }
    return messages
}
print(fizzBuzz(15))
