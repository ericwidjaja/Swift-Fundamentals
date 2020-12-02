import Foundation

// control flow - executing different branches of code or repeating blocks of code in
//                the case of loops e.g for-in loops
// https://repl.it/@alexpaul/Control-Flow#main.swift
// https://www.youtube.com/watch?v=AWnnAeK18NI&feature=youtu.be
//=====================================
// for-in loops
//=====================================

// for-in loops - arrays
let names = ["Alex", "Sarah", "Bob", "Tom"]
for name in names {
  print(name)
}

// for-in loops - dictionaries
let phoneBook = ["Alex": 33455555, "Sarah": 849400303, "Kim": 8398484949]
for (name, phoneNumber) in phoneBook {
  print("\(name)'s phone number is \(phoneNumber)")
}

// for-in loops - close range
for num in 0...10 {
  print(num)
}

// for-in loops - half-open range
for num in 1..<10 {
  print(num)
}

// stride - through
for num in stride(from: 10, through: 1, by: -3) {
  print(num)
}

// stride - to
for num in stride(from: 5, to: 1, by: -1) {
  print(num)
}

// while loops

var count = 10

while count >= 0 {
  print(count) // 10, 9 ....0
  // without decrementing this will run infinitely
  count -= 1 //9, 8....0..-1
}


// repeat-while
var keepPlaying = false
repeat {
  print("Currently playing")
} while keepPlaying

//=====================================
// conditional statements
//=====================================

// if

var isWednesday = true

if isWednesday {
  print("Happy hump day")
}

// if...else
isWednesday = false
if isWednesday {
  print("Happy hump day")
} else {
  print("Not Wednesday")
}

// switch

let language = "Perl"

switch language {
case "Swift":
  print("iOS is Awesome")
case "Java":
  print("Are you an Android developer?")
default:
  print("Just another language")
}

// tuples - in switches

let coordinate = (40, 74) // lat, lon

switch coordinate {
case (40, 75):
  print("In the North.")
case (40, _):
  print("Lat is 40")
default:
  print("not a valid coordinate")
}

// value bindings - in switches

switch coordinate {
case (40, let lon):
  print("In the North. Longitude is \(lon)")
case (40, _):
  print("Lat is 40")
default:
  print("not a valid coordinate")
}



// where clause - in switches

let number = 10

switch number {
case 10 where number % 2 == 0:
  print("value is 10 and even")
default:
  print("not a valid input")
}


// compound cases - in switches

let char: Character = "c"

switch char {
case "a", "b":
  print("found character")
case "c", "s":
  print("found the character")
default:
  print("not the character we are looking for")
}


//=====================================
// Control Transfer Statements
//=====================================

// continue

for num in 1...10 {
  if num % 2 == 0 { // even
    continue
  }
  print(num)
}

// break

for num in 1...10 {
  if num % 2 == 0 {
    break // exits the for loop, stops execution of the for loop
  }
  print(num)
}

// fallthrough

let grade = 89

switch grade {
case 0...65:
  print("D")
case 66...75:
  print("C")
case 76...85:
  print("B")
case 86...90:
  print("B+")
  fallthrough
default:
  print("have a good holiday")
}


// early exit using guard

// return

func addNumbers(_ numbers: [Int]) -> Int {
  guard !numbers.isEmpty else {
    return 0 // exits the function
  }
  
  let results = numbers.reduce(0, +)
  return results
}

let arr: [Int] = [5, 2, 10]
let result = addNumbers(arr)
print(result)


// throw

enum AppError: Error {
  case badRequest
}

func fetchData() throws {
  throw AppError.badRequest
}

do {
  try fetchData()
} catch {
  print(error)
}

// labeled statements

outerloop: for i in 0...5 {
  for j in 0...5 {
    if j == 4 {
      continue outerloop
    }
    print(i, j)
  }
}
