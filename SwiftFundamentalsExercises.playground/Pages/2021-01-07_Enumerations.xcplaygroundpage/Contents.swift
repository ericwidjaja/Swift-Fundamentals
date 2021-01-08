import Foundation

//https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html
//https://github.com/alexpaul/Swift-Fundamentals/blob/main/Enumerations-Exercises.md


// Question One
// a. Define an enumeration called iOSDeviceType with member values iPhone, iPad, appleWatch. Create a variable called myiPad and initialize it to .iPad.
 

enum iOSDeviceType {
    case iPhone(String)
    case iPad(String)
    case appleWatch
}

let myiPad = iOSDeviceType.iPad

// b. Adjust your code above so that iPhone and iPad have associated values of type String which represents the model number. Create an instance of a .iPhone("12") and assign it to a variable called myPhone

var myPhone = iOSDeviceType.iPhone("12")
print(myPhone)

//  ===================================================================================

/*Question 2.
 Write a function named getPosition(startingAt:afterSteps:) that takes an array of Steps, and a starting location of (Int, Int) and returns an (Int, Int) tuple representing the final position.

 A step .up will increase the y coordinate by 1. A step .down will decrease the y coordinate by 1. A step .right will increase the x coordinate by 1. A step .left will decrease the x coordinate by 1.

 enum Step {
     case up
     case down
     case left
     case right
 }

 let startingLocation = (x: 0, y: 0)
 let steps: [Step] = [.up, .up, .left, .down, .left]

 // expected output: (x: -2, y: 1)
*/

enum Step {
    case up
    case down
    case left
    case right
}

func getPosition(startingAt location: (x: Int, y: Int), afterSteps steps: [Step]) -> (x: Int, y: Int) {
    var finalPosition = location
    
    for step in steps {
        switch step {
        case .up:
            finalPosition.y += 1
        case .down:
            finalPosition.y -= 1
        case .left:
            finalPosition.x -= 1
        case .right:
            finalPosition.x += 1
        }
    }
    return finalPosition
}

let startingLocation = (x: 0, y: 0)
let steps: [Step] = [.up, .up, .left, .down, .left]
print("my latests coordinate is: \(getPosition(startingAt: startingLocation, afterSteps: steps))")

//  ===================================================================================
/*Question 3.
 You are given a Coin enumeration which describes different coin values. Write a function called getTotalValue(from:) that takes in an array of tuples of type (number: Int, coin: Coin), and returns the total value of all coins in cents.

 enum Coin: Int {
     case penny = 1
     case nickle = 5
     case dime = 10
     case quarter = 25
 }
 
 let coinArr: [(Int, Coin)] = [(10, .penny),
                               (15, .nickle),
                               (3, .quarter),
                               (20, .penny),
                               (3, .dime),
                               (7, .quarter)]
 let total = getTotalValue(from: coinArr)
 // expected total: 385
 */
enum Coin: Int {
    case penny = 1
    case nickle = 5
    case dime = 10
    case quarter = 25
}

func getTotalValue(from values: [(number: Int, coin: Coin)]) -> Int {
    var totalCents = 0
    
    for value in values {
        let number = value.number
        let coinVal = value.coin.rawValue
        totalCents += number * coinVal
    }
    return totalCents
}

let coinArr: [(Int, Coin)] = [(10, .penny),
                              (15, .nickle),
                              (3, .quarter),
                              (20, .penny),
                              (3, .dime),
                              (7, .quarter)]

let total = getTotalValue(from: coinArr)

print(total)
//  ===================================================================================
/*
Question Four
Write an enum called Day to represent the days of the week with a raw value of type String. Write a method inside Day that returns whether or not it is a weekday (Monday - Friday).

// Sample expected outputs

let day = Day.saturday
day.isWeekday() // false

let anotherDay = Day.wednesday
anotherDay.isWeekday() // true
*/

enum Day: String {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    func isItWeekday() -> Bool {
        switch self {
        case .monday, .tuesday, .wednesday, .thursday, .friday:
            return true
        case .saturday, .sunday:
            return false
        }
    }
}
let today = Day.friday
print(today.isItWeekday())

let tomorrow = Day.saturday
print(tomorrow.isItWeekday())
