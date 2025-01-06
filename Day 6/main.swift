//* Closures

//? Basic usage
let driving = {
    print("I am driving my car")
}

// driving()
//? Accepting parameters

let driving1 = { (place: String) in
    print("I am going to \(place) in my car")
}

// driving1("New York")
//? Returning values
let drivingWithReturn = {
    (place: String) -> String
    in
    return "I am going to \(place) in my car"
}

// print(drivingWithReturn("London"))
//? Closures as parameters
let driving3 = {
    print("I am driving my car")
}

func drive(drivingFunc: () -> Void) {
    print("I am getting ready to go")
    drivingFunc()
    print("I arrived!")
}

// drive(drivingFunc: driving3)

//? Trailing closures syntax
func travel(action: () -> Void) {
    print("I am getting ready to go.")
    action()
    print("I arrived!")
}

//? It also runs the function travel
// travel {
//     print("I am driwing my car")
// }

func travel1(to place: String, _ action: () -> Void) {
    print("I am getting ready my car")
    action()
    print("I arrived!")
}

//? It also can be used like this, in case when the label of clouser is underscore
travel1(to: "Swith") {
    print("Let's go!")
}
