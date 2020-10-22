import UIKit

/*
 Oct 22, 2020 Strings & Characters
 */
let str = "Welcome to Swift"
/*
 ============================================================================================
                                        EXERCISES
 ============================================================================================
 */

//Question 1
//Write code that prints out all the numbers from 1 to 10 as a single string.
var numStr = ""
for num in 1...10 {
    numStr = numStr + " " + String(num)
}
//print("Numbers from 1-10: \(numStr) ")

//Question 2
//Write code that prints out all the even numbers from 5 to 51 as a single string.
var evenNumbers = ""
for number in 5...51 {
    if number % 2 == 0 {
        evenNumbers.append(String(number) + ", ")
    }
}
//print("Even numbers from 5...51 are: \(evenNumbers) ")

//Question 3
//Write code that prints out every number ending in 4 between 1 and 60 as a single string.

var numbersEndsWith4 = ""
for num in 1...60 {
    if num % 10 == 4 {
        numbersEndsWith4.append(String(num) + ", ")
    }
}

//print("Numbers between 1-60 that ending in '4' are: \(numbersEndsWith4) ")
//Question 4
//Print each character in the string "Hello world!"
//var helloStr : String = "Hello world!"
//for char in helloStr {
//    print(char)
//}

//Question 5
//Print out the last character in the string below. You cannot use the Character literal "!" (i.e you must access myStringSeven's characters).
//
let myStringSeven = "Hello world!"
let lastCharIndex = myStringSeven[myStringSeven.index(before: myStringSeven.endIndex)]
//print(lastCharIndex)

/*
 Question 6
 You are given a string stored in the variable aString. Create new string named replacedString that contains the characters of the original string with all the occurrences of the character "e" replaced by "*".

 var aString = "Replace the letter e with *"
 // Your code here
 Example:

 Input: let aString = "Replace the letter e with *"

 Expected values: replacedString = "R*plac* th* l*tt*r * with *"
 */

func replaceChar(inputStr: String, replaceChar: String, withChar: String) -> String {
    var replacedString = ""
    
    for element in inputStr {
        if element == Character(replaceChar) {
            replacedString.append(withChar)
        } else {
            replacedString.append(element)
        }
    }
    return replacedString
}
//print(replaceChar(inputStr: "Pursuit", replaceChar: "u", withChar: "*"))

//Question 7
//You are given a string stored in variable aString. Create a new string called reverse that contains the original string in reverse order. Print the reversed string. You cannot used built-in reverse.

let aString = "this string has 29 characters"
var reverse = ""

// Your code here
//Example: Input: let aString = "Hello"
//Output: "olleH"

func reverseStr(in inputStr: String) -> String {
    
    for char in inputStr {
        reverse = (String(char)) + reverse
    }
    return reverse
}
//print(reverseStr(in: aString))
/*
Question 8
You are given a string stored in variable aString. Print true if aString is a palindrome, and false otherwise. A palindrome is a string which reads the same backward or forward.

let str1 = "anutforajaroftuna"

// Your code here
Example 1: Input: let str1 = "anutforajaroftuna"
Output: true

Example 2: Input: let str2 = "Hello"
Output: false
 */
func checkPalindrome (in inputStr: String) -> Bool {
    var outputStr = ""
    for letter in inputStr {
        outputStr = String(letter) + outputStr
    }
    return outputStr == inputStr
}
//checkPalindrome(in: "racecar")

/*
 Question 9
 You are given a string stored in variable problem. Write code so that you print each word of the string on a new line.

 let problem = "split this string into words and print them on separate lines"

 // Your code
 Example: Input: let problem ="split this string into words and print them on separate lines"

 Output:

 split
 this
 string
 into
 words
 and
 print
 them
 on
 separate
 lines
 */

let problem = "split this string into words and print them on separate lines"
//for word in problem.split(separator: " "){
//    print("\(word)")
//}
func splitStr (inputStr: String, separatorChar: Character) -> String {
    for word in inputStr.split(separator: separatorChar) {
        print(word)
    }
    return "\(inputStr)"
}
//splitStr(inputStr: problem, separatorChar: " ")
/*
 
 Question 10
 You are given a string stored in variable problem. Write code that prints the longest word in the string.

 let problem = "find the longest word in the problem description"

 // Your code here
 Example: Input: let problem = "find the longest word in the problem description"
 Output: description
 Hint: Keep track of the longest word you encounter and also keep track of its length.
 */

let problemLong = "find the longest word in the problem description"

func findLongestWord(in inputStr: String) -> String {
    
    var longestWord = ""
    for word in inputStr.split(separator: " ") {
        if word.count > longestWord.count {
            longestWord = String(word)
        }
    }
    return longestWord
}
findLongestWord(in: problemLong)

/*
 Question 11
 Given a string in English, create a tuple containing the number of vowels and consonants.

 let vowels = "aeiou"
 let consonants = "bcdfghjklmnpqrstvwxyz"
 let input = "Count how many vowels I have!"
 */

func howManyVowelsAndConsonants(in inputStr: String) -> String {
    var vowelsCount = 0
    var consonantsCount = 0
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    for char in inputStr {
        if vowels.contains(char.lowercased()) {
            vowelsCount += 1
        } else {
            if consonants.contains(char.lowercased()) {
                consonantsCount += 1
            }
        }
    }
    return "There are \(String(vowelsCount)) vowels and \(String(consonantsCount)) consonants "
}
print(howManyVowelsAndConsonants(in: "Pursuit"))
