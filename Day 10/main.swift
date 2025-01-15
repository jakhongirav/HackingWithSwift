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
