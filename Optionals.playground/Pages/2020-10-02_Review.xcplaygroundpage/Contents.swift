import UIKit
//Oct 2nd, 2020

/*
==========================================================================================
                                    O P T I O N A L S
==========================================================================================
https://www.youtube.com/c/AlexPaulNYC/search?query=optional
https://www.youtube.com/watch?v=ahviHGF3260
 
 Optional - used to indicate that a value MAY exist
            TWO possible outcomes -> 1. There is a value and it can be used as normal
                                     2. there is not a value, in Swift we call it -> nil
 
 */
//lets say you have an app that can calculate your age in a decade, and it asks you,"How old are you now?" and it will return / answer your input after adding your age to 10 years from now.
//let response = "twenty"
//var age = Int(response) //we are casting "String" type var into "Int" type

//age + 10
//compiler will show -> "value of optional type 'Int'? must be unwrapped to a value of type 'Int'"

/*Ways to unwrap Optional:
 1. forced unwrapping -> var age = Int(response)! with exclamation point. Do not recommended, it may caused our app to crash
 2. nil coalescing operator -> var age = Int(response) ?? 20
    if the compiler open the age variable and it contains nil, it will give us a default value of '21'
    Nil Coalescing allows you to provide a default value
 3. optional binding -> if let bindingValue = optional value { ..some codes block, where we can use binding value in it... }
    -> look at 'response' it's a conditional type, it's value is on the right side of the '=', assigned this value to the left hand side's constant -> 'bindingValue'
 4. Implicit unwrapping -> ex: var name: String!
 */

//1. Force Unwrapping
//let response = "twenty"
//var age = Int(response)!
//print(age)// Fatal Error: Unexpectedly found nil while unwrapping an Optional value

//2. nil coalescing operator
//let response = "twenty"
//var age = Int(response) ?? 21
//print(age)

//3. optional binding
//let response = "twenty"
//
//if let yourAge = Int(response) {
//    // Int(response) is the optional value -> right now at 'nil' because "twenty" as letters can't convert to an Int .
//    // yourAge is the bindingValue constant, that got assigned for the value in the Int(response)
//    print("The age you entered is \(yourAge)")
//} else {
//    print("The 'response' value is 'nil'")
//}




// #1. Show three ways to print five integers consecutively
//var numArray = [1,2,3,4,5]
//
//for num in numArray {
//    print(num)
//}
//
//for number in 10..<15 {
//    print(number)
//}
//
//var num = 20
//while num < 25 {
//    print(num)
//    num += 1
//}

// #2. Show three waya on how to print a variable without showing 'optional'
//var name: String? = "Alex"
//
//print(name!)
//
//if let name = name {
//    print(name)
//}
//
//print(name ?? "no name")


/*
====================================================================================================================
                                            D I C T I O N A R Y
====================================================================================================================
*/


//var fellows = [String: Int]() //empty Dict
//
//var fruits = ["apple": 2, "banana": 3, "oranges": 1]
//
//struct Person: Hashable {
//    var name: String
//    var address: String
//
//}
//
//var personalInfo = [Person : Int]()
//
////print(fruits["banana", default: 0])
//
////print(fruits.keys)
////print(fruits.values)
//
//var totalValues = 0
//for (key, value) in fruits {
//    totalValues += value
//}
//print(totalValues)
//
//// How to remove value from Dict:
//fruits.removeValue(forKey: "apple")
////
//fruits["apple"] = nil
//
//// Add and Substracting into the value
//
//fruits["orange"] = fruits["orange"] ?? 0 + 1 //any value in Dict is ALWAYS optional
//
//// Update value
//fruits.updateValue(10, forKey: "banana")
//
//print(fruits)
//
//
//fruits.updateValue(5, forKey: "grapes")
//
//print(fruits)
//
//var dict = ["September": ["Labor Day"], "October" : ["Columbus Day"], "November" : ["Thanksgiving Day"], "December" : ["Christmas Day"]]
//
//// search
//if let holidays = dict["September"] { // O(1)
//  print(holidays)
//}
//
//// insertion
//dict["November"]?.append("Veterans Day") // O(1)
//
//print("dictionary after insertion: \(dict)")
//
//// deletion
//dict["October"] = nil // O(1)
//
//print("dictionary after deletion: \(dict)")

//creating frequency dict

//var freqDict = [String: Int]()
//
//var languages = ["Javascript","Swift","Python","C++","Javascript","Python","C++","Javascript","C++","Python","Javascript","Swift","Javascript"]
//
//languages.append("Obj C")
//
//for language in languages {
//    if let newVar = freqDict[language]  {
//        freqDict[language] = newVar + 1
//    } else {
//        freqDict[language] = 1
//    }
//}
//print(freqDict)
//
//print(freqDict["Obj C"])
//
//if var newValue = freqDict["Obj C"] {
//freqDict["Obj C"] = newValue + 1
//}
//
//print(freqDict["Obj C"])

//******************************************************************************************************************
//                                  LESSON      ON   OPTIONAL
//https://www.youtube.com/watch?v=AHegXlW7Lg4&list=PLjdVqs-1R8wG5UCYQzbvAYP0wCEUySPey&index=1
//****************************************************************************************************************

// Optionals: is a type that represents two possibilities
//            either we have a value or we do not have a
//            value (nil).
// Swift data types support optionals e.g
/*
  String
*/

//===============================================
//              Introduction of Optionals
//===============================================
var name: String = "Alex"
print(name)

var age: Int? = 21 // optional Int? with default value of nil
print(age as Any) // nil - doesn't have a value
var num = Int("It's Monday") // optional Int?

//===============================================
//              Ways to unwrap Optionals
//  1. Forced Unwrapping using an exclaimation mark !
//     or some programmers refer to it as banging !
//  2. Nil-coalescing using two question marks ?? followed
//     by a default value that we provide
//  3. Optional binding using if let, where a value is
//     assigned the existing if one is available.
//  4. Implicit unwrapping e.g var name: String!
//
//===============================================
//===============================================
//               Forced Unwrapping
//===============================================
let decadeFromNow = age! + 10 // Cannot add Int? + Int
print(decadeFromNow)

// to be used sparingly ONLY when you the developer is
// GUARANTEED a value at runtime

//===============================================
//                 Nil-Coalescing
//===============================================
var temperature: Int? = 75// degrees
let validTemperature = temperature ?? 67 // 67 is the default value in the case temperature is nil
print("Temperature is \(validTemperature)")


var cohort: Int?

var nextYearCohort = (cohort ?? -1)

if nextYearCohort == -1 {
  print("something went wrong with the application")
} else {
  print("everything went well")
}

print("Pursuit next cohort will be \(nextYearCohort)")


//===============================================
//               Optional binding: if let, while let
//===============================================
var wage: Int? = 40_000 // dollars
var year: Int? // nil by default if a value is not provided
// if let unwrappes the wage variable, if it does have a value then that value gets assigned to the bindedValue constant
// 1. wage within the if is still optional
// 2. not idiomatic swift (swifty)
if wage != nil {/*.......*/}

if 5 < 2 || 5 > 10 {
  print("in here")
} else {
  print("out here")
}
// validWage is 40000
// validYear is nil
if let validWage = wage,
  let validYear = year {
  // we only enter the if let block {.....}
  // if wage is NOT nil, in other words
  // ONLY if wage has a value
  
  // if wage has a value the if let is TRUE
  // if wage is nil the if let is FALSE
  print("You entered \(validWage) as your wage in the current year of \(validYear)")
} else { // else codition is false, or wage is nil
  print("Values are unavailable")
}

// string interpolation
var modelYear: Int?
print("model year is \(modelYear ?? 1959)")


//===============================================
//         testing optional for equality
//===============================================
 
var someValue: Int? = 7
if someValue == 7 {
  print("\(String(describing: someValue)) is equal to 7")
}


//===============================================
//         looping through and optional array
//===============================================
 
var numbers: [Int?]
numbers = [4, 9, nil, 10, 20, nil]

// add ONLY valid or non-nil integers
var sumUnwrappedUsingOptionalBinding = 0
var sumUsingNilCoalescing = 0
for currentNum in numbers {
  // optional binding to unwrap
  if let validNum = currentNum {
    sumUnwrappedUsingOptionalBinding += validNum
  }
  
  // using nil-coalescing
  sumUsingNilCoalescing += currentNum ?? 0
}
print("the sum of numbers using optional binding \(sumUnwrappedUsingOptionalBinding)")
print("the sum of numbers using nil-coalescing \(sumUsingNilCoalescing)")


var isAbscent: Bool? = false // Bool, Int, Double, Float...
if let unwrappedValue = isAbscent {
  print(unwrappedValue)
} else {
  print("isAbscent does not have a value")
}
