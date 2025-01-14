//* Protocols
//?≈ Protocols are a way of describing what properties and methods something must have. You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol.
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

struct Book {
    var name: String
}

func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}

protocol Purchaseable {
    var name: String { get set }
}

struct Book1: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

//! Here now we're using protocol in function, so we can pass any type of object which is conforming to Purchaseable protocol
func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

//? Protocol inheritance
//! One protocol can inherit from another in a process known as protocol inheritance.

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

//! Now we can define a single protocol that brings all three together:
protocol Employee: Payable, NeedsTraining, HasVacation {}

//? Extensions
//! Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
// print(number.squared()) // 64

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

//? Protocol extensions
let pythons = ["Eric", "Frank", "John", "Michael", "Graham", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

//! Both Array and Set conform to a protocol called Collection, so we can write an extension to that protocol to add a summarize() method to print the collection neatly.
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

// pythons.summarize()  // There are 7 of us: Eric, Frank, John, Michael, Graham, Terry, Terry
// beatles.summarize() // There are 4 of us: John, Paul, George, Ringo

//? using protocol extension for arrays
let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

//? using protocol extension for Set
let numbers1 = Set([4, 8, 15, 16])
let allEven1 = numbers1.allSatisfy { $0.isMultiple(of: 2) }

//? using protocol extension for Dictionary
let numbers2 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven2 = numbers2.allSatisfy { $0.value.isMultiple(of: 2) }

//? Protocol-oriented programming
protocol Identifiable1 {
    var id: String { get set }
    func identify()
}

extension Identifiable1 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User1: Identifiable1 {
    var id: String
}

let twostraws = User1(id: "twostraws")
// twostraws.identify()

//! Summary
//* Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
//* You can build protocols on top of other protocols, similar to classes.
//* Extensions let you add methods and computed properties to specific types such as Int.
//* Protocol extensions let you add methods and computed properties to protocols.
//* Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.

//! Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
//! You can build protocols on top of other protocols, similar to classes.
//! Extensions let you add methods and computed properties to specific types such as Int.
//! Protocol extensions let you add methods and computed properties to protocols.
//! Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
