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

func countUp(to target: Int, startingAt currentNum: Int) {
    guard currentNum <= target  else { return }
    print(currentNum)
    countUp(to: target, startingAt: currentNum + 1)
}
//countUp(to: 15, startingAt: 11)

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
//dynamicFibonacci(25)// only run for 23 times

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


var outputStr = ""
func concatenateAllElements (in wordArr: [String]) -> String {
    guard !wordArr.isEmpty else {
        return outputStr
    }
    outputStr = outputStr + " " + wordArr.first!
//    print(outputStr)
    concatenateAllElements(in: Array(wordArr.dropFirst()))
    return outputStr
}
concatenateAllElements(in: ["Hi", "there", ",", " ", "user","!"])

 //--------------------------------------------------------------------------------------
4. Find the sum of all the numbers in an array

Sample Input: [3,6,1,3,2]
Sample Output: 15
//https://learnappmaking.com/swift-recursion-how-to/
 
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
 
func sumEvenRecursive(_ numArr: [Int]) -> Int {
    guard !numArr.isEmpty else { return 0 }
    print(numArr.first!)
    return numArr.first! % 2 == 0 ? (numArr.first! + sumEvenRecursive(Array(numArr.dropFirst()))) : sumEvenRecursive(Array(numArr.dropFirst()))
}
sumEvenRecursive([3,4,6])
 
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
*/
func recursiveSumMultiplyNumbers (_ numX: Int, _ numY: Int) -> Int {
    guard numX > 0 && numY >= 1 else { return 0 }
    return numX + recursiveSumMultiplyNumbers(numX, numY - 1)
}
recursiveSumMultiplyNumbers(3, 5)
 
 //--------------------------------------------------------------------------------------

/*
7. Write a recursive function pow that takes two numbers x and y as input and returns x to the power y.  Do not use for/while loops
Sample Input: 3 ^ 4
Sample Output: 81
 //Solution
 //This means in math --> 3 * 3 * 3 * 3 = 81
 // 0^0 = infinite
 // 5^0 = 1

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

//5^4 = 5 * 5 * 5 * 5
func recursivePower(_ numN: Int, _ numPowerM: Int) -> Int {
    guard numN != 0 && numPowerM >= 1 else { return 1 }
    return numN * recursivePower(numN, numPowerM - 1)
}
recursivePower(5, 3)
 
 
//-----------------------------------------------------------------------------------
//       MORE RECURSION EXERCISES from https://github.com/joinpursuit/Pursuit-Core-DSA
//-----------------------------------------------------------------------------------
Multiply array
Write a function called multArr that takes in an array of numbers as an argument and recursively multiplies together all of the values in the array.

multArr([2, 3, 5]); // returns 30
multArr([5, 5, 1, 2]); //returns 50

var resultSum = 1

func sumInNumArr (_ numArr: [Int]) -> Int {
    guard !numArr.isEmpty else {
        return 1
    }
    resultSum *= numArr.first!
    print(resultSum)
    sumInNumArr(Array(numArr.dropFirst()))
    return resultSum
}
//sumInNumArr([2,3,5])
//sumInNumArr([5, 5, 1, 2])

 //-----------------------------------------------------------------------------------
Concatenate array
Write a function called concatArr that takes in an array of strings as an argument and recursively concatenates the strings together into a single string, with spaces between each original string.

concatArr(['is', 'it', 'tomorrow']); // returns 'is it tomorrow'
concatArr(['or', 'just', 'the', 'end', 'of', 'time']); //returns 'or just the end of time'
Sum evens
Write a function called sumEvens that takes in an array of numbers as an argument and recursively sums only the even numbers in the array.

sumEvens([2, 3, 5, 6]); // returns 8
sumEvens([10, 5, 1, 2, 12]); //returns 24
 
 //-----------------------------------------------------------------------------------
Recursive range
Write a function called range which takes in two numbers (num1, num2) as arguments. The function should return an array of numbers between num1 and num2.

range(2,10); // returns [2, 3, 4, 5, 6, 7, 8, 9, 10]
range(17,20); // returns [17, 18, 19, 20]
 */

var numArr = [Int]()

func numbersInRange (between lowNum: Int, to highNum: Int) -> [Int] {
    guard lowNum <= highNum else {
        return numArr
    }
    numArr.append(lowNum)
    numbersInRange(between: lowNum + 1, to: highNum)
    return numArr
}
//numbersInRange(between: 2, to: 10)

 //-----------------------------------------------------------------------------------
/*
 Factorial
Write a function called calculateFactorial that takes in a number as arguments and returns the factorial of that number. A factorial is basically the product of all integers between that number and 1.

For example, factorial of 5 would be: 5 x 4 x 3 x 2 x 1 = 120

Factorial of 10 would be: 10 x 9 x 8 x 7 x 6 x 5 x 4 x 3 x 2 x 1 = 3,628,800

(Factorials grow really fast and actually end up producing some of the largest numbers known in mathematics).

Function examples:

calculateFactorial(3); //returns 6
calculateFactorial(4); //returns 24
calculateFactorial(7); //returns 5040
 
 //-----------------------------------------------------------------------------------
 //https:www.geeksforgeeks.org/count-ways-reach-nth-stair-using-step-1-2-3
Triple Step
A child is running up a staircase with n steps and can hop either 1 step 2 steps or 3 steps at a time. Write a function called 'tripleStep', that takes in an argument n that represents the number of steps in the staircase, and returns a count of how many possible ways the child can run up the stairs.

tripleStep(3); //returns 4
tripleStep(4); //returns 7
tripleStep(5); //returns 13
tripleStep(10); //returns 274
Source: CTCI
 
*/

func findStep (_ n: Int) -> Int {
    if n == 1 || n == 0 {
        return 1
    }
    else if n == 2 {
        return 2
    }
    return findStep(n - 3) + findStep(n - 2) + findStep(n - 1)
}
findStep(9)
/*

 //-----------------------------------------------------------------------------------
Coin Combos
Given an infinite number of quarters, dimes, nickels, and pennies, write code to calculate the number of possible ways of giving exact change for n cents.

In other words, write a function called coinCombos that takes in one argument: n, which represents the total amount of money (in cents) that you need to make change for. Your function should return the amount of possible combinations you can make to return that exact amount of change.

For example:

coinCombos(5); //returns 2
coinCombos(10); //returns 4
coinCombos(25); //returns 13
coinCombos(60); //returns 73
*/
