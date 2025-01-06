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
// travel1(to: "Swith") {
//     print("Let's go!")
// }

//* Closures, part 2
//? Using closures as parameters when they accept parameters
func travel2(action: (String) -> Void) {
    print("I am getting ready to go.")
    action("London")
    print("I arrived!")
}

// travel2 { (place: String) in
//     print("I am going to \(place) in my car")
// }

//? Using closures as parameters when they return values
func travel3(action: (String) -> String) {
    print("I am getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// travel3 { (place: String) -> String in
//     return "I am going to \(place) in my car"
// }

// Reducer function
func reduceArr(arr: [Int], reducer: (Int, Int) -> Int) -> Int {
    var current = arr[0]
    for num in arr[1...] {
        current = reducer(current, num)
    }
    return current
}

let numbers = [1, 2, 3, 4, 5]
let sumReducer = { (current: Int, num: Int) -> Int in
    return current + num
}

// print(reduceArr(arr: numbers, reducer: sumReducer))  // 15

//? Shorthand parameter names
func travel4(action: (String) -> String) {
    print("I am getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//? Swift knows the type of the parameters, so we can remove them
//? $0 is the first parameter, $1 is the second, and so on
//? We can also remove the return keyword
//? We can also remove the in keyword
//! travel4 { "I am going to \($0) in my car" }

//? Trailing and shorthand syntax with multiple parameters
func travel5(action: (String, Int) -> String) {
    print("I am getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

// travel5 { "I am going to \($0) at \($1) miles per hour" }

//? Returning closures from functions
func travel6() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel6()
// result("London")
//! or
// let result1 = travel6()("London")

//? Capturing values
func travel7() -> (String) -> Void {
    var counter = 0
    return {
        print("\(counter), I'm going to \($0)")
        counter += 1
    }
}

let result2 = travel7()
// result2("London") // 0, I'm going to London
// result2("Paris") // 1, I'm going to Paris
// result2("New York")  // 2, I'm going to New York
// result2("Tashkent")  // 3, I'm going to Tashkent

// random numbers function
func makeRandomNumberGenerator() -> () -> Int {
    var previousNumber = 0
    return {
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}
let generator = makeRandomNumberGenerator()

// for _ in 1...10 {
//     print(generator())
// }

//? Interesting function
func storeTwoValues(value1: String, value2: String) -> (String) -> String {
    var previous = value1
    var current = value2
    return { new in
        let removed = previous
        previous = current
        current = new
        print(previous, current)
        return "Removed \(removed)"
    }
}
// let store = storeTwoValues(value1: "Hello", value2: "World")
// let removed = store("Value Three")
// print(removed)

// example of capturing values
func visitPlaces() -> (String) -> Void {
    var places = [String: Int]()
    return {
        places[$0, default: 0] += 1
        let timesVisited = places[$0, default: 0]
        print("Number of times I've visited \($0): \(timesVisited).")
    }
}
let visit = visitPlaces()
// visit("London")
// visit("New York")
// visit("London")
// visit("New York")
