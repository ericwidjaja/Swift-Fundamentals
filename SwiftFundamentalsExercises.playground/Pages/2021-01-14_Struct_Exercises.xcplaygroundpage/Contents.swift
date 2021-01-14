import Foundation

/*
 Question 1
Take a look at this struct that represents an alien:

struct Alien {
 var name: String
 var height: Double
 var homePlanet: String
}
let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
Will these three lines of code run? If so, why not?

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

struct Alien {
 var name: String
 var height: Double
 var homePlanet: String
}
let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus") //
 change to 'var'
print(bilbo)
 
bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"
print(bilbo) // after changing 'let' to 'var'

 ==========================================================================================
 Question 3
 
struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
    
    
}
var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(40.0)
print(joeAccount.balance)
print(joeOtherAccount.balance)
 
 ==========================================================================================
 Question 4
 a. Write a struct called Person that has 3 properties of type String: a first name, a last name and a middle name. Have the middle name be optional. Create 2 instances of a Person, one with a middle name and one without. Print one of their first names.
 
struct PersonA {
    var firstName: String
    var middleName: String
    var lastName: String
}

var alex = PersonA(firstName: "Alex", middleName: "Sunil", lastName: "Jones")
var alec = PersonA(firstName: "Alec", middleName: "", lastName: "Torque")
print(alec.firstName)

//b. Write a computed property in Person called fullName that will return a formatted string of an instance's full name. Call this property on both the instances you created in part a.

struct PersonB {
    var firstName: String
    var middleName: String?
    var lastName: String
    
    var fullName: String {
        let middleName = self.middleName == nil ? " " : "\(self.middleName ?? "")"
        return firstName + middleName + lastName
    }
}

let heather = PersonB(firstName: "Heather", middleName: nil, lastName: "Lee")
let peter = PersonB(firstName: "Peter", middleName: "Not", lastName: "Pan")
print(heather.fullName)

==========================================================================================
 Question 5
 a. Create a struct called Book that has properties title, author and rating, of type String, String, and Double respectively. Create some instances of Book.
 
struct Book {
    var title: String
    var author: String
    var rating: Double
}

var theHobbit = Book(title: "The Hobbit", author: "J.R.R Tolkien", rating: 8.4)
var endersGame = Book(title: "Ender's Game", author: "Orson Scott Card", rating: 8.6)
    //b. Add a computed property to Book called isGood that returns true if its rating is greater than or equal to 7 and test this new functionality with one of the created instances above.

struct BookToo {
    var title: String
    var author: String
    var rating: Double
    
    var isGood: Bool {
        return rating >= 7.0
    }
}

var theLOTR = BookToo(title: "The Lord Of The Ring", author: "J.R.R Tolkien", rating: 9.4)
let goodToGreat = BookToo(title: "Good To Great", author: "Jim Collins", rating: 8.9)
let unbroken = BookToo(title: "Unbroken", author: "Laura Hillenbrand", rating: 9.1)
let pragmaticProgrammer = BookToo(title: "The Pragmmatic Programmer", author: "Andrew Hunt", rating: 9)

print(pragmaticProgrammer.isGood) // true
 ==========================================================================================

Question 6
There are three common scales that are used to measure temperature: Celsius, Fahrenheit, and Kelvin:
C = (F - 32) / 1.8 F = 1.8 * C + 32 K = C + 273

a. Make a struct called FreezingPoint that has three static properties: celsius, fahrenheit, and kelvin. Give them all values equal to the freezing point of water.
*/

struct FreezingPoint {
    static let celsius: Double = 0 // freezing point of water
    static let fahrenheit: Double = 1.8 * celsius + 32
    static let kelvin: Double = celsius + 273
}

//b. Make a struct called Celsius that has one property: celsius, and two methods getFahrenheitTemp, and getKelvinTemp. Make the values of fahrenheit and kelvin correct values, converted from the celsius property.

struct Celsius {
    var celsius: Double
    
    mutating func getFahrenheitTemp() -> Double {
        return 1.8 * celsius + 32
    }
    
    mutating func getKelvinTemp() -> Double {
        return celsius + 273
    }
}

var tenDegreesCelsius = Celsius(celsius: 10.0)
print(tenDegreesCelsius.celsius) //returns 10.0
print(tenDegreesCelsius.getKelvinTemp()) //returns 283.0
print(tenDegreesCelsius.getFahrenheitTemp()) //returns 50.0
/*
    ======================================================================================

Question 7
Create a struct called RGBColor that has 3 properties, red, green, blue that are all of type Double.

Given the below array of color dictionaries, create an array of RGBColor.
let colorDictArray: [[String: Double]] = [["red": 1.0, "green": 0.0, "blue": 0.0],
 ["red": 0.0, "green": 1.0, "blue": 0.0],
 ["red": 0.0, "green": 0.0, "blue": 1.0],
 ["red": 0.6, "green": 0.9, "blue": 0.0],
 ["red": 0.2, "green": 0.2, "blue": 0.5],
 ["red": 0.5, "green": 0.1, "blue": 0.9],]
*/
struct RGBColor {
    var red: Double
    var green: Double
    var blue: Double
}
let colorDictArray: [[String: Double]] = [["red": 1.0, "green": 0.0, "blue": 0.0],
                                          ["red": 0.0, "green": 1.0, "blue": 0.0],
                                          ["red": 0.0, "green": 0.0, "blue": 1.0],
                                          ["red": 0.6, "green": 0.9, "blue": 0.0],
                                          ["red": 0.2, "green": 0.2, "blue": 0.5],
                                          ["red": 0.5, "green": 0.1, "blue": 0.9]]

var colors: [RGBColor] = [RGBColor]()

for dictArr in colorDictArray {
    if let redValue = dictArr["red"],
       let greenValue = dictArr["green"],
       let blueValue = dictArr["blue"] {
        
        colors.append(RGBColor(red: redValue, green: greenValue, blue: blueValue))
    }
}

print(colors.count)
print(colors.first?.red ?? 0.0) // 1.0
print(colors.last?.blue ?? 0.0) // 0.9

/*
 ======================================================================================
 
 Question 8
 Create a struct called Movie that has properties for name (String), year (Int), genre (String), cast ([String]), and description (String) which is a property of the CustomStringConvertible protocol. Create an instance of your Movie class.

 // Sample Input:
 let theBanker = Movie(name: "The Banker", year: 2020, genre: "Drama", cast: ["Anthony Markie", "Samuel L. Jackson", "Nicholas Hoult", "Nia Long"])

 // Output:
 print(theBanker)
 The Banker is a Drama released in 2020 with the following cast members: Anthony Markie, Samuel L. Jackson, Nicholas Hoult and Nia Long
 */
struct Movie: CustomStringConvertible {
    var name: String
    var year: Int
    var genre: String
    var cast: [String]
    
    var description: String {
        
        var castMembers = String()
        for (index, actor) in cast.enumerated() {
            var endSeparator = index == cast.count - 1 ? "" : ", "
            if index == cast.count - 2 {
                endSeparator = " and "}
        castMembers += actor + endSeparator
            }
        return "\(name) is a \(genre) released in \(year) \n with the following cast members:  \(castMembers)"
    }
}

let clearAndPresentDanger = Movie(name: "Clear and Present Danger", year: 1994, genre: "political action-thriller", cast: ["Harrison Ford", "Willem Dafoe", "Joaquim de Almeida", "James Earl Jones", "Anne Archer"])
print(clearAndPresentDanger)
