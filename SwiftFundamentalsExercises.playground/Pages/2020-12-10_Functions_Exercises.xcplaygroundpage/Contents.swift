import Foundation

//===============================================================================
//                  FUNCTIONS               2020-12-10
//===============================================================================

//https://www.youtube.com/watch?v=E3lmXVUdj38&feature=youtu.be
//https://docs.swift.org/swift-book/LanguageGuide/Functions.html
//https://github.com/alexpaul/Swift-Fundamentals/blob/main/Functions.md

/*
 Question 1.
 Write a function named doubleNumber(_:) that takes in a Double and returns that number times two

 // input: 99
 // output: 198
 // input: 3.0
 // output: 6.0

func doubleNumber(_ number: Double) -> Double {
    return number * 2
}

doubleNumber(99)
doubleNumber(3.0)
 =====================================================================================
 
 Question 2.
 Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number. Don't use the built-in max() function.

 // input: 2.3, 2.03
 // output: 2.03

 // input: 8.0, 3.0
 // output: 3.0

func smallest(of num1: Double, and num2: Double) -> Double {
    var result: Double = Double()
    
    if num1 < num2 {
        result = num1

    } else {
        result = num2
    }
    return result
}
smallest(of: 2.3, and: 2.03)
smallest(of: 8.0, and: 3.0)
// =====================================================================================

 Question 3.
    Write a function named smallestValue(in:) that takes in an array of Doubles and returns the smallest Double

    // input: [1.0,2,3,4,5,5]
    // output: 1.0

    // input: [-4,-59,-348,-34,-4]
    // output: -348

func smallestValue(in numArray: [Double]) -> Double {
    guard var smallestNum = numArray.first else { return 0.0}
    print(smallestNum)
    for num in numArray {
        if num < smallestNum {
            smallestNum = num
        }
    }
    return smallestNum
}
smallestValue(in: [-1.0,2,3,4,5,5])
smallestValue(in: [-45,-59,-348,-34,-4])
// =====================================================================================

 Question 4.
 Write a function named occurrences(of:in:) that counts how many Characters in a String match a specific character.

 // input: "hello", "l"
 // output: 2

 // input: "Now with some spaces", " "
 // output: 3
 
func occurrences(of char: Character, in wordStr: String) -> Int {
  let resultCharacters = wordStr.filter { $0 == char }
  return resultCharacters.count
}
occurrences(of: " ", in: "Now with some spaces")

// =====================================================================================

 Question 5
 Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

 // input: [1, nil, 9, nil, 10, nil]
 // output: [1, 9, 10]

 // input: [1, 2, 3]
 // output: [1, 2, 3]

 // input: [nil]
 // output: []

 // input: []
 // output: []
func removeNils(from intArr: [Int?]) -> [Int] {
    let nonNilResults = intArr.compactMap { $0 }
    return nonNilResults
}
removeNils(from: [1, nil, 9, nil, 10, nil])
 // =====================================================================================

 Question 6.
 Write a function named average(of:) that returns the average of an array of Doubles.

 // input: [1,2,3,4,5]
 // output: 3

 // input: [1.5, 2.25, 4.5, -1.5]
 // output: 1.6875


func average(of numArr: [Double]) -> Double {
    let totalNum = numArr.reduce(0.0, +)
    let averageResult = totalNum / Double(numArr.count)
    return averageResult
}
average(of: [1.5, 2.25, 4.5, -1.5])
 // =====================================================================================

 Question 7

 Write a function named frequencyDictionary(of:) that takes a String as input and returns a dictionary that maps each Character to its number of occurrances.

 // input: "hello"
 // output: ["h": 1, "e": 1, "l": 2, "o": 1]

 // input: "aaaaaAAA"
 // output: ["a": 5, "A":3]

 // input: "More words"
 // output: ["M": 1, "o": 2, "r": 2, "e": 1, " ": 1, "w": 1, "d": 1, "s": 1]
 */

func frequencyDictionary(of wordsString: String) -> [Character: Int] {
    var freqDict = [Character: Int]()
    //"hello"
    for char in wordsString {
        if let count = freqDict[char] {
            freqDict[char] = count + 1
        } else {
            freqDict[char] = 1
        }
    }
    return freqDict
}
print(frequencyDictionary(of: "hello"))
   
// =====================================================================================
/*Question 8.
Write a function named value(_:isGreaterThanAverageOf:) that takes in an array of Doubles and a Double and returns whether the Double is greater than the average.

// input: 4.0, [1.0,2,3,4,5]
// output: true

// input: 3, [1,2,3,4,5]
// output: false

// input: 100.8, [1,42,1,541,42,5]
// output: false

// =====================================================================================
*/
func value(_ num: Double, isGreaterThanAverageOf numArr: [Double]) -> Bool {
    
    let average = numArr.reduce(0.0, +) / Double(numArr.count)
    print("the number is  : \(num)")
    print("the average is : \(average)")
    let result = num > average ? true : false
    print(result)
    return result
}

value(100.08, isGreaterThanAverageOf: [1,42,1,541,42,5])
/*
 
 // =====================================================================================
 Question 9.
 Write a function that finds the second smallest Int an an array of Ints

 // input: [1, 2, 3, 4]
 // output: 2

 // input: [2, 1, 3, 4]
 // output: 2
func secondSmallestInt(in IntArr: [Int]) -> Int {
    let sortedIntArr = IntArr.sorted()
    print("sorted  array  = \(sortedIntArr)")
    print("secondSmallestInt = \(sortedIntArr[1])")
    return sortedIntArr[1]
}
secondSmallestInt(in: [-2, 1, 3, 4])
 
// =====================================================================================
 Question 10.
 Write a program that outputs the string representation of numbers from 1 to n.

 But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
 */

func fizzBuzz (withRangeUpTo n: Int) -> [String] {
    
    var resultStr = [String]()
    for num in 1...n {
        if num % 3 == 0 && num % 5 == 0 {
            resultStr.append("FizzBuzz")
        }
        else if num % 3 == 0 {
            resultStr.append("Fizz")
        }
        else if num % 5 == 0 {
            resultStr.append("Buzz")
        } else {
            resultStr.append(num.description)
        }
    }
    return resultStr
}
print(fizzBuzz(withRangeUpTo: 9))
// =====================================================================================

