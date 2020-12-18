
import Foundation
// Optionals - a type in swift that says there could exist a value or not on an object
// https://repl.it/@alexpaul/Optionals#main.swift
// https://www.youtube.com/watch?v=B77J3WIhDAw


var myDict = [String: String]()
//build the myDict
myDict["Eric"] = "Widjaja"
let myLastName = myDict["Eric"]! //force unwrap

//implicitly unwrapped optionals
var myName: String!
myName = "Jocelyn"
let unwrappedMyName: String = myName
//print(unwrappedMyName)

//nil coalescing
let myOtherLastName = myDict["Sara"] ?? "No last name"

//optional binding - if let, if var
if let myLastName = myDict["Eric"] {
    print(myLastName)
} else {
    print("no last name found")
}



var dict = [String: String]()

// force unwrap
dict["Alex"] = "Paul"

let lastName = dict["Alex"]!
print(lastName)

//let otherLastName = dict["Sarah"]!

// implicitly unwrapped optionals
var name: String!

name = "Bob"

let unwrappedName: String = name
print(unwrappedName)

// nil coelescing
let otherLastName = dict["Sarah"] ?? "Nameless"
print(otherLastName)

// optional binding - if let, if var
if let lastName = dict["Alex"] {
            //remember = rhs always the variable that has optional type.
            // how to read line 54: unwrap rhs var, check if it has value of Alex's lastname. If it does assign it to var lastName and print it
  print(lastName)
} else {
  print("no last name found")
}

// optional binding - guard let, guard var
func printMessage(message: String?) {
  guard let messageRetrieved = message else {  //how to read: if we have amessage in 'message', assign it to messageRetrieved and the stastement is true, goes directly yo line 68.
    // if message has 'nil' as value, line 64 is false, goes to line 66
    print("no message recieved")
    return // exit the function
  }
  print(messageRetrieved)
}

printMessage(message: nil) // "" or nil

// optional binding - while let

// abstract data structures

class Node {
  var value: Int
  var next: Node?
  init(value: Int) {
    self.value = value
  }
}

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

// 1 -> 2 -> 3 -> nil
node1.next = node2
node2.next = node3

func printNodes(_ node: Node?) {
  var node = node
  while let currentNode = node {
    print(currentNode.value)
    node = currentNode.next
  }
  // when node is nil exits the while let
}

// optional chaining - if let variable1, let variable2,

// two textfields in application, username, password,

var username: String? // textField.text is optional
var password: String?

username = "alexpaul"
password = "ljaofa7fouafdso"
if let usernameExist = username,
   let passwordExist = password {
  print("user entered both values \(usernameExist) \(passwordExist)")
} else {
  print("user is missing fields")
}
