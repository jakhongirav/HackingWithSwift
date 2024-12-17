// Conplex data types

let john = "John Lennon"
let paul = "Paul Hadson"
let george = "George Green"
let ringo = "Ringo Starr"

let beatles: [String] = [john, paul, george, ringo]
// print(beatles[1])

// Sets
let colors: Set<String> = Set(["black", "blue", "purple", "white", "something"])
let colors2: Set<String> = Set(["black", "blue", "purple", "white", "something"])

// print(colors)
// print(colors2)

// Tuples
var name = (first: "John", last: "Snow")
// print(name.0)
// print(name.first)

// Rules for using different data types
// Array, Set, and Tuples
let address = (house: 555, street: "Taylot Swift Avenue", ciry: "Nashville")  // Tuple

let set = Set(["aadrvark", "astronaut", "azalea"])  // Set

let pythons = ["Eric", "Graham", "John Snow", "Lazik"]  // Array

// Dictionaries
let heights = ["Taylor Swift": 1.78, "Edd Sheeran": 1.73]
// print(heights["Edd Sheeran"] ?? 0)

// Dictionary default values
let favoriteiceCream = ["John": "Chocolate", "Sophie": "Vanilla"]
// print(favoriteiceCream["John"] ?? 0)
// print(favoriteiceCream["Charlotte", default: "Unknown"])

// Creating empy collections
var teams = [String: String]()  // Dictionary
teams["Paul"] = "Red"

var results = [Int]()  // Array

var words = Set<String>()  // Set
var numbers = Set<Int>()  // Set

var scores = [String: Int]()  // Dictionary
var resultsArr = [String]()  // Array

// Enumerations
enum Result {
    case success
    case failure
}

let result4 = Result.success
// print(result4)

// Enum associated vaules
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Swift programming")
// print(talking)

// Enum Raw Values
enum Planet: Int {
    case mercury = 1
    case venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earthIndex = Planet.earth.rawValue
let earth = Planet(rawValue: 3)
print(earth ?? 0)
