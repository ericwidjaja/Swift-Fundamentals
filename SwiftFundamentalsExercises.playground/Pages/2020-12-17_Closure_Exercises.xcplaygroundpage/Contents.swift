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
 */
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
 
 /*
//   ---------------------------------------------------------------------------------

Question Three
Write a function called largestValue(in:) that finds the largest Int in an array of Ints. Use reduce to solve this exercise.

// input: [4, 7, 1, 9, 6, 5, 6, 9]
// output: 9
*/

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
