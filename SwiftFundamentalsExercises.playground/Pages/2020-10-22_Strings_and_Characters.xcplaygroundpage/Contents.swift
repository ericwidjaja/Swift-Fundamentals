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
/*
 Question 12
 Given a string of words separated by a " ". Write code that prints out the length of the last word.
 If there is no last word print out "No last word"
 Example: Input: "How are you doing this Monday?"
 */

func lengthLastWord (in inputStr: String) -> Int {
    if let lastWord = inputStr.split(separator: " ").last {
        return lastWord.count
    } else {
        print("No last word")
    }
    return 0
}
//print(lengthLastWord(in: "How are you doing this Monday ?"))

/*
 Question 13
 Given a string testString create a new variable called condensedString that has any consecutive spaces in testString replaced with a single space.
 
 let testString = "  How   about      thesespaces  ?  "
 var condensedString = ""
 // Output: " How about thesespaces ? "
 */

let testString = "  How   about      thesespaces  ?  "
var condensedString = ""
var previousChar: Character = "🎯"

for currentChar in testString {
    if previousChar == " " && currentChar == " " {
        continue
    }
    condensedString.append(currentChar)
    previousChar = currentChar
}
//print(condensedString)
/*
 Question 14
 Given a string with multiple words. Reverse the string word by word. You cannot use built-in reverese or swapAt.
 
 Example:
 
 Sample Input: "Swift is the best language"
 Sample Output: "language best the is Swift"
 */

func reverseSentenceByWords (in inputSentence: String) -> String {
    var reversedStr = ""
    
    for word in inputSentence.split(separator: " ") {
        reversedStr = word + " " + reversedStr
    }
    return reversedStr
}
reverseSentenceByWords(in: "Swift is the best language")

/*
 Question 15
 Given a string with multiple words. Write code that prints how many of them are palindromes.
 
 Note: Feel free to use functions if you are already familiar with them.
 
 Example:
 Sample Input: "danaerys dad cat civic bottle"
 Sample Output: 2
 */


let aSentence = "racecar danaerys dad cat civic rotator bottle "
func howManyPalindromes (in aSentence: String) -> Int {
    var numOfPalindromes = 0
    
    for word in aSentence.split(separator: " ") {
        if checkPalindrome(in: String(word)) {
            numOfPalindromes += 1
        }
    }
    return numOfPalindromes
}
//print("There are \(howManyPalindromes(in: aSentence)) palindrome(s) ")
/*
 You are given a string representing an attendance record for a student. The record only contains the following three characters:

 'A' : Absent.

 'L' : Late.

 'P' : Present.

 If a student has more than one 'A' or more than 2 continuous 'L's that student should not be rewarded. Print true if student is to be rewarded and False if they shouldn't.

 Example:
 Sample Input: "PPALLP"
 Sample Output: true
 */

let attendanceRecord = "PPPLALLP"
func shouldStudentRewarded(base attendanceRecord: String) -> Bool {
    var absentCounter = 0
    var lateCounter = 0
    var shouldRewarded = true
    var previousChar: Character = "*"
    
    for char in attendanceRecord {
        if char == "A" {
            absentCounter += 1
            if absentCounter > 1 {
                shouldRewarded = false
                break
            }
        }
        if char == "L" {
            lateCounter += 1
            if previousChar == "L" {
                if lateCounter > 2 {
                    shouldRewarded = false
                    break
                }
            }
        } else {
            lateCounter = 0
        }
        previousChar = char
        }
    print("absent: \(absentCounter) ")
    print("late : \(lateCounter) ")
    return shouldRewarded
}
shouldStudentRewarded(base: attendanceRecord)
/*
 Question 17
 Given a tuple with two strings. The first string is a ransom note, the second string being the characters from a magazine. Determine whether or not you can construct the ransom note using the characters from the magazine.

 Each letter from the magazine can only be used once. You can assume all letters are lowercased.

 Examples:
 Sample Input1: ("a", "b")
 Sample Output1: False
 Sample Input2: ("aa", "aab")
 Sample Output2: True
 */

var ransomLetter = "abcde"
var magzArticle = "ebcda"
var canMakeRansomNote = false

func createRansomNote (from magazine: String, ransomNote: String) -> Bool {
    if ransomLetter.count <= magzArticle.count {
        for letter in ransomLetter {
            if magzArticle.contains(letter) {
                canMakeRansomNote = true
            }
        }
    } else {
        print("Ransom Note can NOT be made")
        canMakeRansomNote = false
    }
    return canMakeRansomNote
}
createRansomNote(from: magzArticle, ransomNote: ransomLetter)


var str1 = "babc"
var str2 = "abc"
var temp = ""

for char in str1 {
    if str2.contains(char) {
        str2.remove(at: str2.firstIndex(of: char) ?? str2.endIndex)
    } else {
        print("The Strings don't match")
        break
    }
}
