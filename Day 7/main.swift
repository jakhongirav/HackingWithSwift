//* Structs, part 1

//? Creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
// print(tennis.name)  // Tennis

tennis.name = "Lawn tennis"

//? Computed properties

struct Sport1 {
    var name: String
    var isOlympicSport: Bool

    //? OlympicStatus is trailing func that returns String
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport1(name: "ChessBoxing", isOlympicSport: false)

// print(chessBoxing.olympicStatus)  // ChessBoxing is not an Olympic sport

//? Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
//! didSet is called when the property changes
// progress.amount = 30
// progress.amount = 80
// progress.amount = 100

//? Methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let newYork = City(population: 8_550_000)
// print(newYork.collectTaxes())  // 855,000,000

//? Mutating methods
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var john = Person(name: "John")
// john.makeAnonymous()
// print(john.name)  // Anonymous

//? Properties and methods of strings
let string = "Do or do not, there is no try."
// print(string.count)  // 35
// print(string.hasPrefix("Do"))  // true
// print(string.uppercased())  // DO OR DO NOT, THERE IS NO TRY.

//? Properties and methods of arrays
var toys = ["Woody"]
// print(toys.count)  // 1
toys.append("Buzz")
// print(toys.count)  // 2
// print(toys[1])  // Buzz
// print(toys.firstIndex(of: "Buzz"))
