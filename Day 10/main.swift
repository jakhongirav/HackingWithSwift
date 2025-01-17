//: [Previous](@previous)

var score = 85
var str = "Your score was \(score)"

var result: String = "Your test results are here: \(str)"
// print(result)

// Example 2: Using a variable to store the result of a calculation
var num1 = 10
var num2 = 5
var sum = num1 + num2
var sumString = "The sum of \(num1) and \(num2) is \(sum)"
// print(sumString)

// Example 3: Using a variable to store the result of a boolean operation
var a = 5
var b = 10
var isGreater = a > b
var comparisonResult = "Is \(a) greater than \(b)? \(isGreater)"
// print(comparisonResult)

// Unchangable variable
let jakhongir: String = "swift"
// jakhongir = "java" // This line will cause a compile-time error

//? Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//do {
//    try checkPassword("password")
//    print("That password is good!")
//} catch {
//    print("You can't use that password.")
//}

//if let result = try? checkPassword("password") {
//    print("Result was \(result)")
//} else {
//    print("D'oh.")
//}

try! checkPassword("sekrit")
//print("OK!")

let str1 = "5"
let num = Int(str1)

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 5 {
            self.id = id
        } else {
            return nil
        }
    }
}

//? Typecasting
class Animal {}
class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]
//! To pick Dog class from array of animals
//for pet in pets {
//    if let dog = pet as? Dog {
//        dog.makeNoise()
//    }
//}
