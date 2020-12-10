import Foundation

//===============================================================================
//                  FUNCTIONS               2020-12-10
//===============================================================================

//https://www.youtube.com/watch?v=E3lmXVUdj38&feature=youtu.be
//https://docs.swift.org/swift-book/LanguageGuide/Functions.html

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

 
*/

// =====================================================================================
