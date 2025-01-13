//* Creating your own classes

class Dog {
    var name: String
    var breed: String

    func makeNoise() {
        print("Woof!")
    }

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

//? Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//? Overriding methods
class Labrador: Dog {

    //! overriding function
    override func makeNoise() {
        print("Yip!")
    }

    init(name: String) {
        super.init(name: name, breed: "Labrador")
    }
}

//? Final classes
//! You can mark a class with the final keyword, which stops other classes from inheriting from it.
final class Dog1 {
    var name: String
    var breed: String

    func makeNoise() {
        print("Woof!")
    }

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//? Copying objects
//! Another difference between class and struct is that when you copy a class they both point to the same object in memory, so changing one does change the other. This is called a reference type because Swift just points to the same object twice.
class Singer {
    var name = "Taylor Swift"
}

//! in this example shown the class copying and try to change the prop of the class.
var singer = Singer()
// print(singer.name)  // Outputs: Taylor Swift
var copyTaylorSwift = singer
//! But if you try this with struct it won't change the prop of the struct.
copyTaylorSwift.name = "Adele"
// print(singer.name)  // Outputs: Adele

//? Deinitializers
//! Classes can have a deinitializer, which is code that gets run when an instance of a class is destroyed.
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }

    deinit {
        print("\(name) is no more!")
    }
}

// for _ in 1...3 {
//     let person = Person()
//     person.printGreeting()
// }

//? Mutability
//! Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
class Singe1 {
    var name = "Taylor Swift"
}

let taylor = Singe1()
taylor.name = "Adele"
print(taylor.name)  // Outputs: Adele

//? Structs are value types
//! When you copy a struct, both the original and the copy are different things – changing one won’t change the other. This makes them safer to use in your code.
struct Singer1 {
    var name = "Taylor Swift"
}

//! in this example shown the struct copying and try to change the prop of the struct. but if it would let instead of var it won't change the prop of the struct.
var taylorCopy = Singer1(name: "Adele")
print(taylorCopy.name)  // Outputs: Adele
