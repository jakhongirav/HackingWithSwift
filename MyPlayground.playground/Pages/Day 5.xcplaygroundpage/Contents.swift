//: [Previous](@previous)

import Foundation

//* Functions

//? Writing funcitions
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

// print(greet(person: "Anna"))
//? Accepting parameters
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

// print(greetAgain(person: "Anna"))

//? Returning values
// also here we omitting parameter labels with underscore
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

// print(add(4, 5))

//? Parameter labels
// default one
func greet(person: String, from hometown: String) -> String {
    return "Hello " + person + "! Glad you could visit from " + hometown + "."
}
// print(greet(person: "Bill", from: "Cupertino"))

// function with two name parameters
func greet(_ person: String, from hometown: String) -> String {
    return "Hello " + person + "! Glad you could visit from " + hometown + "."
}
// print(greet("Bill", from: "Cupertino"))

//? Default parameters
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    print(parameterWithoutDefault + parameterWithDefault)
}
// someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)

//? Variadic functoins
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
// print(arithmeticMean(1, 2, 3, 4, 5))

//? Throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// do {
//     try checkPassword("password")
//     print("That password is good!")
// } catch {
//     print("You can't use that password.")
// }

//? In-out parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
// print(doubleInPlace(number: &myNum))
