import UIKit

/*
Write a function that counts up to a target number.
 
func countUp(to target: Int, startingAt currentNum: Int) {
    for number in currentNum...target {
        print(number)
    }
}
countUp(to: 10, startingAt: 1) //we dont need recursive, because iteratively it is simple to be done!
*/
func countUpToTwenty(from currentNum: Int) {
    guard currentNum <= 20 else {return}
    print(currentNum)
    countUpToTwenty(from: currentNum + 1)
}
//countUpToTwenty(from: 1)

func factorial(_ n: Int) -> Int {
    guard n > 1 else { return 1 }   //base case = 1
    print("n = \(n) and n-1 = \(n - 1)")
    return n * factorial(n - 1)    //recursive call
    // if n = 4 on line 25 will run:
        // return 4 * factorial(4 - 1) or return 4 * factorial(3) ---- then next 'loop'
        // return 3 * factorial(3 - 1) or return 3 * factorial(2) ---- then next 'loop'
        // return 2 * factorial(1) ---- then it will stop because of line 23
}
//factorial(4)

//Write func to show the fibonacci's result at n, using recursive and dynamic programming
//https://www.youtube.com/watch?v=lhwNwSXH_Yw
//https://www.youtube.com/watch?v=Es4Tk0nU1OQ

func fibonacci(_ n: Int) -> Int {
    //base case
    guard n > 2 else { return 1 }
    return fibonacci(n - 1) + fibonacci(n - 2)
}
//fibonacci(25) // it runs 75,025 times

// using dynamic programming with 'cache-ing' the known values

// 1. create a freqDict to capture the values at its key -> 'n'
var fibDict = [Int: Int]()

func dynamicFibonacci (_ n: Int) -> Int {   // 2. set up the func

    if let fibValue = fibDict[n] {          //3. check if we already have the value at n, use dictionary at step 1. to capture key'(n)' and its value.
        return fibValue
    }
    
    guard n > 2 else {return 1}             //3. base case
    let fibValue = dynamicFibonacci(n - 1) + dynamicFibonacci(n - 2) //4. put in the formula
    fibDict[n] = fibValue                                            //cache the values or results (memoization)
    return fibValue
}
dynamicFibonacci(25)// only run for 23 times

 //-----------------------------------------------------------------------------------
//                              RECURSION    EXERCISES
 //-----------------------------------------------------------------------------------
/*
1. Find the factorial of a given number (review)
Factorial definition:
5 factorial = 5! = 5 * 4 * 3 * 2 * 1 = 120
 
func recursiveFactorial(_ givenNumber: Int) -> Int {
    guard givenNumber > 1 else { return 1 }  //base case = 1
    return givenNumber * recursiveFactorial(givenNumber - 1)
}
recursiveFactorial(5)
 
//--------------------------------------------------------------------------------------
2. Print out all elements in an array recursively

func allElements(in numberArr: [Int]) {
    guard !numberArr.isEmpty else { return }
    print(numberArr.first!)
    return allElements(in: Array(numberArr.dropFirst()))
}
allElements(in: [1,3,0,7,-13])
 
//--------------------------------------------------------------------------------------
3. Concatenate all the elements in an array of Strings

Sample Input: ["Hi", "there", ",", " ", "user","!"]
Sample Output: "Hi there, user!"
 
//--------------------------------------------------------------------------------------
4. Find the sum of all the numbers in an array

Sample Input: [3,6,1,3,2]
Sample Output: 15

func sum (_ numArr: [Int]) -> Int {
    guard !numArr.isEmpty else {
        return 0                    //once the array is empty, the func will stop
    }
    return numArr.first! + sum(Array(numArr.dropFirst()))
}
sum([3,6,1,3,2])
 //--------------------------------------------------------------------------------------
 
5. Find the sum of all the even numbers in an array

Sample Input: [3,6,1,3,2,10]
Sample Output: 18

var sum = 0

func sumOfEvenNums(_ numArr: [Int]) -> Int {
//    for n in numArr {
//        if n % 2 == 0 {
//            sum += n
//        }
//    }
    guard !numArr.isEmpty else {
        return 0
    }
    if numArr.first! % 2 == 0 {
        sum += numArr.first!
        print(sum)
    }
    sumOfEvenNums(Array(numArr.dropFirst()))
    return sum
}
sumOfEvenNums([3,6,1,3,2,10])
 //--------------------------------------------------------------------------------------

6. Multiply two given Ints.  Do not use for/while loops or the * operator.
Sample Input: 5 * 6
Sample Output: 30
 //Solution
 //this means we are adding number 5 -> six times --> 5 + 5 + 5 + 5 + 5 + 5

var multiplySum = 0
func multiplyTwoNumbers(_ num1: Int,_ num2: Int) -> Int {
    guard num1 > 0 && num2 >= 1 else {
        return 0
    }
    multiplySum += num1
    print(multiplySum)
    multiplyTwoNumbers(num1, (num2 - 1))
    return multiplySum
}
multiplyTwoNumbers(5, 6)
 //--------------------------------------------------------------------------------------


7. Write a recursive function pow that takes two numbers x and y as input and returns x to the power y.  Do not use for/while loops
Sample Input: 3 ^ 4
Sample Output: 81
 //Solution
 //This means in math --> 3 * 3 * 3 * 3 = 81
 // 0^0 = infinite
 // 5^0 = 1
 */
 
var powerResult = 1 //result needs to be 1 because if you multiply any number to 0, you get 0
func powerNumbers(_ numX: Int, _ numY: Int) -> Int {
    guard numX != 0 && numY > 0 else {
        return 1
    }
    powerResult *= numX
    print(powerResult)
    powerNumbers(numX, numY - 1)
    return powerResult
}
powerNumbers(-3, 4)
 //--------------------------------------------------------------------------------------

