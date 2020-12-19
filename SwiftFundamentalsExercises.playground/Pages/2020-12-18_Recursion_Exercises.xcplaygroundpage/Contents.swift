import Foundation
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
factorial(4)

//Write func to show the fibonacci's result at n, using recursive and dynamic programming
//https://www.youtube.com/watch?v=lhwNwSXH_Yw
//https://www.youtube.com/watch?v=Es4Tk0nU1OQ

func fibonacci(_ n: Int) -> Int {
    //base case
    guard n > 2 else { return 1 }
    
    return fibonacci(n - 1) + fibonacci(n - 2)
}
fibonacci(15) // it runs 610 times

// using dynamic programming with 'cache-ing' the known values

func dynamicFibonacci (_ n: Int) -> Int {
    //1. check if we already have the value at n, use dictionary to capture key'(n)' and its value.
    var fiboDict = [Int: Int]()
    
    guard n > 2 else {return 1}
    
    return 1
}
/*
 //-----------------------------------------------------------------------------------
                                    RECURSION    EXERCISES
 //-----------------------------------------------------------------------------------
 1. Find the factorial of a given number (review)
 Factorial definition:

 5 factorial = 5! = 5 * 4 * 3 * 2 * 1 = 120

func recursiveFactorial(_ givenNumber: Int) -> Int {
    guard givenNumber > 1 else { return 1}  //base case = 1
    return givenNumber * recursiveFactorial(givenNumber - 1)
}
recursiveFactorial(5)
 
 2. Print out all elements in an array recursively
*/
func allElements(in numberArr: [Int]) {
    guard !numberArr.isEmpty else { return }
    print(numberArr.first?.description)
    return
}
/*


 3. Concatenate all the elements in an array of Strings

 Sample Input: ["Hi", "there", ",", " ", "user","!"]

 Sample Output: "Hi there, user!"



 4. Find the sum of all the numbers in an array

 Sample Input: [3,6,1,3,2]

 Sample Output: 15



 5. Find the sum of all the even numbers in an array

 Sample Input: [3,6,1,3,2, 10]

 Sample Output: 18



 6. Multiply two given Ints.  Do not use for/while loops or the * operator.

 Sample Input: 5 * 6

 Sample Output: 30



 7. Write a recursive function pow that takes two numbers x and y as input and returns x to the power y.  Do not use for/while loops

 Sample Input: 3 ^ 4

 Sample Output: 81
*/

