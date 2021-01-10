import Foundation


//write a function to find the same element(s) in two arrays of Ints, the result needs to show only ONE element of those identical elements.

//step 1. ask clarifying questions:
// - should I check if the arrays are empty?
// = how about negative Ints?
// - can I use built in functions?
// - Do you want the result sorted?

// step 2. write down some edge cases / examples, opportunity to ask more questions

var input1 = [100,2,3,11]
var input2 = [2,3,5,6,11]
// output = [2,3,11]

var input3 = [1,2,2,3,5]
var input4 = [2,3,5,6,7,5,6]
// output = [2,3,5]

var input5 = [1,3,22,12,3,12]
var input6 = [3,5,6,53,12]
// output = [3, 12]

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
//findSameInt(arr1: input6, arr2: input5)

//Refactor using Sets, because the above function does NOT work for sample input5 and input6

func findIdentical(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    
    guard !arr1.isEmpty || !arr2.isEmpty else { return [] }
    
    let arr1Set = Set(arr1)
    let arr2Set = Set(arr2)
    
    let intersectionResult = Array(arr1Set.intersection(arr2Set))
    return intersectionResult.sorted()
}

print(findIdentical(input1, input2))
print(findIdentical(input3, input4))
print(findIdentical(input5, input6))
print(findIdentical(input7, input8))
