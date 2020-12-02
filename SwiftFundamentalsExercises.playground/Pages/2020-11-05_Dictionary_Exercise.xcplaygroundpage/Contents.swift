import Foundation
import UIKit

//https://github.com/alexpaul/Swift-Fundamentals/blob/main/Collection-Types-Dictionaries.md

/*
 Question 1:
 
 var applesDict: [String: Int] = ["Adam": 3,
 "Beth": 5,
 "Cal": 3,
 "Dan": 5,
 "Eve": 4]
 // a. Set eveAppleCount equal to the number of apples that Eve has
 let eveAppleCount = applesDict["Eve"] ?? 0
 print(eveAppleCount)
 // b. Change the number of apples that Adam has to 4
 applesDict["Adam"] = 4
 print(applesDict["Adam"] ?? 0)
 
 //c. Set calAndDanAppleCount equal to the sum of Cal and Dan
 let calAndDanAppleCount = (applesDict["Cal"] ?? 0) + (applesDict["Dan"] ?? 0)
 // Expected output: 8
 print(calAndDanAppleCount)
 //d. Set all the values in applesDict to 0
 //applesDict.forEach({applesDict[$0.key] = 0})
 for (k,v) in applesDict {
 let v = 0
 print(k,v)
 }
 */

/*
 Question Two
 var citiesDict: [String: String] = ["Afghanistan": "Kabul",
 "Russia": "Moscow",
 "Iceland": "Reykjavik"]
 // a. Set russiaCapital equal to Russia's capital using citiesDict
 
 // let russiaCapital = /* Your code here (Replace "" with your solution)*/ ""
 let russiaCapital = citiesDict["Russia"] ?? ""
 print(russiaCapital) // Moscow
 
 // b. Add a new key value pair "Jamaica" and its capital "Kingston"
 citiesDict["Jamaica"] = "Kingston"
 print(citiesDict["Jamaica"] ?? "")
 
 // c. Add a new key value pair "Indonesia" and its capital "Jakarta"
 citiesDict["Indonesia"] = "Jakarta"
 print(citiesDict)
 */

/*Question 3
 a. Create a dictionary that represents the table below listing an authors name and their comprehensibility score.
 */
/*
 | Author Name |    Score |
 | :--: | :--: |
 | Mark Twain |    8.9 |
 | Nathaniel Hawthorne    | 5.1 |
 | John Steinbeck    | 2.3 |
 | C.S. Lewis | 9.9 |
 | Jon Krakauer | 6.1 |
 */

var authorScores = [String: Double] ()

/*
 Expected outputs:
 ["Mark Twain": 8.9, "John Steinbeck": 2.3, "Jon Krakauer": 6.1, " C.S. Lewis": 9.9, "Nathaniel Hawthorne": 5.1]
 
 authorScores["Mark Twain"] = 8.9
 authorScores["John Steinbeck"] = 2.3
 authorScores["Jon Krakauer"] = 6.1
 authorScores["C.S. Lewis"] = 9.9
 authorScores["Nathaniel Hawthorne"] = 5.1
 //b. Add an additional author named “Erik Larson” with an assigned score of 9.2.
 authorScores["Erik Larson"] = 9.2
 print(authorScores)
 
 Question Four
 You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.
 */
var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

// Expected output: "Garry Mckenzie"

func topScorePerson (in peopleScoreDict: [[String:String]]) -> String {
    
    var highestScore = 0
    var personHighestScore = ""
    
    for scoreDict in peopleScoreDict {
        if let scoreStr = scoreDict["score"],
            let scoreInt = Int(scoreStr),
            let scoreFirstName = scoreDict["firstName"],
            let scoreLastName = scoreDict["lastName"] {
            if scoreInt > highestScore {
                highestScore = scoreInt
                personHighestScore = scoreFirstName + " " + scoreLastName
            }
        }
    }
    return personHighestScore
}

//
//func findHighestScorePerson(in peopleScoreDict: [[String : String]]) -> String {
//    var highestScoringName = ""
//    var highestScore = 0
//
//    for scoreDict in peopleWithScores {
//        if let scoreStr = scoreDict["score"],
//            let scoreInt = Int(scoreStr),
//            let firstName = scoreDict["firstName"],
//            let lastName = scoreDict["lastName"] {
//            if scoreInt > highestScore {
//                highestScore = scoreInt
//                highestScoringName = firstName + " " + lastName
//            }
//        }
//    }
//    return highestScoringName
//}
//findHighestScorePerson(in: peopleWithScores)




/*Question Five
 Write code below such that cubeDict maps the numbers between 1 and 20 inclusive to their cubes. A number's cube is that number multiplied by itself twice:
 
 2 ^ 3 = 2 * 2 * 2 = 8
 var cubeDict = [Int: Int]()
 
 /*
 Sample output:
 
 cubeDict.count // 20
 cubeDict[2] // 8
 cubeDict[3] // 27
 cubeDict[20] // 8000
 cubeDict[14] // 2744
 */
 // Your code here
 
 Solution
 
 
 Question Six
 Find the most common letter in the string below. Use a dictionary to generate your solution that maps a character to the number of times it appears in the string. Ignore whitespaces and capitalization.

 let myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."

 var frequencyDict = [Character: Int]()
 var mostFrequentChar: Character = "?"

 // Excpected output: "e"

 
 
 
 */
