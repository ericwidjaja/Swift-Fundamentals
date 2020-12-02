import UIKit

// Dictionary - a collection of unordered pairs of key, value elements. The key (is required) to be unique.

// the keys of a dictionary are required to conform to the (Hashable) protocol

// Creating a Dictionary

// - using generic initializer
var usingGenericInitializerDictionary = Dictionary<String, Int>()

usingGenericInitializerDictionary["Alex"] = 7 // years
print(usingGenericInitializerDictionary)

// - using subscript syntax
var subscriptDictSyntax = [Int: Int]()
subscriptDictSyntax[2020] = 11
print(subscriptDictSyntax)

subscriptDictSyntax[2020] = 12
print(subscriptDictSyntax)


// - dictionary literal
var cities = ["Sweden": "Stockholm", "California": "Los Angeles", "Florida": "Miami"]
print(cities)

struct Car: Hashable {
  let brand: String
  let wheels: Int
  let color: UIColor
}

let nissan = Car(brand: "Nissan", wheels: 4, color: .black)
let honda = Car(brand: "Honda", wheels: 4, color: .red)

var carsDict = [nissan: 10, honda: 15]


// Inspecting a Dictionary
  
// - isEmpty
if carsDict.isEmpty {
  print("No more cars in the parking lot")
} else {
  print("There are still cars in the lot.")
}

// - count
print("There are \(carsDict.count) brands of cars in the parking lot")


// Accessing keys and values

// - subscript [key]
// accessing values from a dictionary is always optional because the key may not exist
let numberOfNissans = carsDict[nissan] ?? 0 // returns an optional, we will use nil-coelescing to unwrap the optional
print("There are \(numberOfNissans) nissans in the parking lot")

if let numberOfHondas = carsDict[honda] { // optional binding
  print("There are \(numberOfHondas) hondas in the lot")
} else {
  print("There a 0 honda's left.")
}

// - keys
let allCars = carsDict.keys // 2 cars
for car in allCars {
  print("Car brand is \(car.brand)")
}

// - values
var gradesDict = ["Rachel": 90, "Alex": 85, "Kim": 95, "Tom": 92]
let grades = gradesDict.values
print(grades)

// - first
let firstStudent = gradesDict.first
print(gradesDict)
print(firstStudent)

// - randomElement()
let randomStudent = gradesDict.randomElement()
print(randomStudent)

// Adding Keys and Values

// - updateValue()
let oldGrade = gradesDict.updateValue(89, forKey: "Alex")

print(oldGrade)
print(gradesDict)

let xaviersGrade = gradesDict.updateValue(100, forKey: "Xavier")
print(xaviersGrade)
print(gradesDict)


// - subscript[key]
gradesDict["Esther"] = 79

print(gradesDict)


// Removing Keys and Values

// - filter()
let filteredStudents = gradesDict.filter { $0.value >= 92 } // trailing closure syntax, more coming up in a future lesson on closures
print(filteredStudents.count)
print(filteredStudents)

// - removeValue()
let removedValue = gradesDict.removeValue(forKey: "Xavier")
print(removedValue)
print(gradesDict)

// - removeAll()
gradesDict.removeAll()
print(gradesDict)

// Comparing Dictionaries

// - using ==
var dict1 = [2010: 2]
var dict2 = [2010: 2]

if dict1 == dict2 {
  print("same dates")
}

// - using !=

var dict3 = [2010: 10]
var dict4 = [2020: 10]

if dict3 != dict4 {
  print("not equal dates")
}

// Iterating over Keys and Values

// - forEach()

gradesDict = ["Rachel": 90, "Alex": 85, "Kim": 95, "Tom": 92]

var numbers = [1, 2,3, 4, 5]

for num in numbers {
  print(num)
}

for (student, grade) in gradesDict { // (key, value)
  print("\(student) got a \(grade) on the exam.")
}

// - enumerated()
for (index, studentGrade) in gradesDict.enumerated() { // (index, (key, value))
  print("\(studentGrade.key) is at index \(index)")
}



// Finding Elements

gradesDict = ["Rachel": 90, "Alex": 85, "Kim": 95, "Tom": 92]


// - contains
let studentExist = gradesDict.contains { (student, grade) -> Bool in
  return student == "Kim"
}

if studentExist {
  print("Kim's grade has been entered.")
} else {
  print("Student needs to redo the exam.")
}

// - first

// - firstIndex((key, value) -> Bool) -> Index?

gradesDict = ["Rachel": 90, "Alex": 85, "Kim": 95, "Tom": 92]

let index = gradesDict.firstIndex { $0.value == 95 }

print(gradesDict)
if let foundIndex = index {
  print(gradesDict[foundIndex])
}

// - min(((key, value), (key, value)) -> Bool) -> (key, value)?

// - max(((key, value), (key, value)) -> Bool) -> (key, value)?
let maxElement = gradesDict.max { $0.value > $1.value }
print(maxElement)


// Transforming a Dictionary

// - mapValues((Value) -> T) -> Dictionary<Key, T>
let numbersDict = [1: 2, 2: 3, 3: 4] // [Int: Int]
let valuesSquared = numbersDict.mapValues { $0 * $0 }
print(valuesSquared)

// - map((key, value) -> T) -> [T]

struct Person {
  let name: String
  let age: Int
}

let personDict = ["Rachel": 34, "Henry": 29, "Gabriel": 45, "Tracy": 41]


let people = personDict.map { Person(name: $0.key, age: $0.value) }

people.forEach { print("\($0.name) is \($0.age) old.") }


// - compactMapValues(() -> T?) -> Dictionary<Key, T>

// - sorted(((key, value),(key, value)) -> Bool) -> [(key, value)]
let sortedPeople = personDict.sorted { $0.value > $1.value }
print(sortedPeople)

for (name, age) in sortedPeople {
  print("\(name) is \(age) oid")
}

// - shuffled() -> [(key, value)]

print(personDict)
let shuffledElements = personDict.shuffled()

print(shuffledElements)

/*
More resources:
 Apple documentation: https://developer.apple.com/documentation/swift/dictionary
 Swift Language Guide: https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html
*/


let languages = ["Javascript","Swift","Python","C++","Javascript","Python","C++","Javascript","C++","Python","Javascript","Swift","Javascript"]

var freqDict = [String:Int]()

for language in languages {
  if let count = freqDict[language] {
    freqDict[language] = count + 1
  } else {
    freqDict[language] = 1
  }
}

// using the frequency dictionary created earlier to return a new dictionary of [String: String] where the value show a language is "popular" or "not popular" based on the count. If the count is greater than 2 then the language is popular
// Hint: use mapValues

