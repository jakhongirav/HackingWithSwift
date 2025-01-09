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

//* Initializers
struct User {
    var username: String

    init() {
        self.username = "Anonymous"
        // print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"
// print(user)  // twostraws
var user1 = User()
// print(user1)  // Anonymous

//? Referring to the current instance
struct Person1 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//? Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    //! lazy keyword to make familyTree independent
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
//! To be family tree initialized it should be called at least once
// ed.familyTree

//? Static properties and methods
struct Student {
    static var classSize: Int = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var ed1 = Student(name: "Ed")
var taylor = Student(name: "Taylor")
// print(Student.classSize)

//? Access control
struct Person3 {
    //! to make id not accessible, now only method inside Person3 can readi the id property
    private var id: String

    //! another common option is public, to let all other code use the property or method
    // public var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
