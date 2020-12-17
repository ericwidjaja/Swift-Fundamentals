import Foundation

/*
 Question One
 Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.
 
func applyKTimes(_ k: Int, closure: () -> ()) {
    for _ in 0..<k {
        closure()
    }
}

var myNum = 0
applyKTimes(3) {
    myNum += 1
}
print(myNum)
    ---------------------------------------------------------------------------------
 Question Two
 Write a function called multiples(of:in) that takes in an array of Ints and returns all of the Ints that are a multiple of a given number n. Use filter in your function.

 // input: [1, 2, 3, 4, 6, 8, 9, 3, 12, 11], n = 3
 // output: [3, 6, 9, 3, 12]

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
func multiples(of num: Int) -> [Int] {
    var q2Result = [Int]()
    for element in numbers {
        if element % num == 0 {
            q2Result.append(element)
        }
    }
    return q2Result
}
multiples(of: 3)

func multiplesWithFilter (of num: Int, in numArr: [Int]) -> [Int] {
    numArr.filter { $0 % num == 0 }
}
multiplesWithFilter(of: 2, in: numbers)
//   ---------------------------------------------------------------------------------

Question Three
Write a function called largestValue(in:) that finds the largest Int in an array of Ints. Use reduce to solve this exercise.

// input: [4, 7, 1, 9, 6, 5, 6, 9]
// output: 9


let moreNumbers = [4, -12]
func largestValue(in numArr: [Int]) -> Int {
    guard !numArr.isEmpty else { return -1 }            //check if the array is NOT empty
    let q3Result = numArr.reduce(Int.min) {(previousResult, currentValue) -> Int in
        if previousResult > currentValue {
            return previousResult
        }
        return currentValue
    }
    return q3Result
}
largestValue(in: moreNumbers)
 //   ---------------------------------------------------------------------------------

Question Four
Write a function called sortedNamesByLastName(in:) that takes in an array of tuples of type (String, String) and returns an array of tuples sorted ascending by last name.

// input:
let firstAndLastTuples = [
    ("Johann S.", "Bach"),
    ("Claudio", "Monteverdi"),
    ("Duke", "Ellington"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov"),
    ("Scott","Joplin"),
    ("Josquin","Des Prez")
]

// output:
 (firstName: "Johann S.", lastName: "Bach")
 (firstName: "Josquin", lastName: "Des Prez")
 (firstName: "Duke", lastName: "Ellington")
 (firstName: "Scott", lastName: "Joplin")
 (firstName: "Claudio", lastName: "Monteverdi")
 (firstName: "W. A.", lastName: "Mozart")
 (firstName: "Nicolai", lastName: "Rimsky-Korsakov")

func sortedNamesByLastName(in namesArr: [(firstName: String, lastName: String)]) -> [(firstName: String, lastName: String)] {
    
    let sortedByLastName = namesArr.sorted { (name1, name2) -> Bool in
        return name1.lastName < name2.lastName
    }
    return sortedByLastName
}

print(sortedNamesByLastName(in: firstAndLastTuples))
 //   ---------------------------------------------------------------------------------
 
 Question Five
 Write a function called sumOfSquaresOfOddNumbers(in:) that returns the sum of the squares of all the odd numbers from an array of Ints. Use filter, map and reduce in your function.

 // input: [1, 2, 3, 4, 5, 6]
 // output: 35

let numArr = [1, 2, 3, 4, 5, 6]
func sumOfSquaresOfOddNumbers(in numArr: [Int]) -> Int {
    guard !numArr.isEmpty else { return -1 }
    return numArr.filter { ($0 % 2 != 0) }
        .map { ($0 * $0) }
        .reduce (0, +)
}
sumOfSquaresOfOddNumbers(in: numArr)

 //   ---------------------------------------------------------------------------------
 
 
 Question 6
 Rewrite the built-in implementation of the map function.
 Review: map takes in an array of elements and performs a transformation on each element and returns a resulting array.

 Make it generic so it can works with any type.
 
 // input: [1, 2, 3, 4] , square each element
 // output: [1, 4, 9, 16]
 
 // input: ["ALEX", "KIM", "SAM", "TOM", "RACHEL"], lowercase each String
 // output: ["alex", "kim", "sam", "tom", "rachel"]
*/

func recreateMap <T> (_ elementsArr: [T], closure: (T) -> T) -> [T] {
    var transformedArr = [T]()
    for element in elementsArr {
        transformedArr.append(closure(element))
    }
    return transformedArr
}

let intsArr = [1, 2, 3, 4] // sqr each element
let sqrEachElement = recreateMap(intsArr) { (intValue) -> Int in
    return intValue * intValue
}
print(sqrEachElement)

let names = ["ALEX", "KIM", "SAM", "TOM", "RACHEL"] //lowercase each String

let lowercasedNames = recreateMap(names) { (upperCaseNames) -> String in
    return upperCaseNames.lowercased()
}

print(lowercasedNames)
