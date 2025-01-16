//: [Previous](@previous)

import Foundation

//* Optionals

//? Handling missing data
var age: Int? = nil
age = 38

//? Unwrapping optionals
var name: String? = nil

// if let unwrapped = name {
//     print("\(unwrapped.count) letters")
// } else {
//     print("Missing name.")
// }

//? Unwrapping with guards
func greet(name: String?) {
    guard let unwrappedName = name else {
        print("You did not provide a name.")
        return
    }
    print("Hello, \(unwrappedName)!")
}

// greet(name: name)


//? Force unwrapping
let str = "5"
//! Crash operator
let num = Int(str)!

//? Implicitly unwrapped optionals
let age1: Int! = nil

//? Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0
//! or
//! Dictionary has its own nil coalescing method
let crusherScrore2 = scores["Crusher", default: 0]

//? Optional chaining
let names = ["", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

let names1 = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names1["Vincent"]?.first?.uppercased() ?? "?"

//? Optional try
