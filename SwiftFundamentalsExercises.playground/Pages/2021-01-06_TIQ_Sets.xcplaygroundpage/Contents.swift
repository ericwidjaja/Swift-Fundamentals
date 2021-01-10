import Foundation


//write a function to find the same element(s) in two arrays of Ints, the result needs to show only ONE element of those identical elements.

//step 1. ask clarifying questions:
// - should I check if the arrays are empty?
// - can I use built in functions?

// step 2. write down some edge cases / examples, opportunity to ask more questions

var input1 = [1,2,3]
var input2 = [2,3,5,6]
// output = [2,3]

var input3 = [1,2,2,3]
var input4 = [2,3,5,6]
// output = [2,3]

var input5 = [2,2,3]
var input6 = [3,5,6]
// output = [3]

var input7:[Int] = []
var input8 = [3,5,6,6,8]
// output = []

// Step 3. Pseudocode not just verbally but also in writing
// 1. Function that take 2 arrays of Ints as parameter, returning an array of Int.
// 2. Using brute force first, loop within loop.
// 3. The identical element(s), will be put in as result variable

func findSameInt(arr1: [Int], arr2: [Int]) -> [Int] {
    
    var resultArr = [Int]()
    guard !arr1.isEmpty || !arr2.isEmpty else { return [] }
    
    for n in arr1 {
        for m in arr2 {
            if n == m {
                resultArr.append(n)
            }
        }
    }
    return resultArr
}
findSameInt(arr1: input6, arr2: input8)

