//: [Previous](@previous)

import Foundation

//* Function

func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}

//favoriteAlbum(name: "Fearless")

func printAlbunRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

//printAlbunRelease(name: "Fearless", year: 2008)

func counterLettersInString(myString string: String) {
    print("The string \(string) has \(string.count) letters")
}

//counterLettersInString(myString: "Hello World")

//? Returnin the value
func albumIsTaylors(name: String) -> Bool {
    if name == "Fearless" {
        return true
    }
    if name == "Taylor Swift" {
        return true
    }

    return false
}

//if albumIsTaylors(name: "Taylor Swift") {
//    print("That's one of hers!")
//}else {
//    print("Who made that?")
//}
//
//if albumIsTaylors(name: "The White Album") {
//    print("That's one of hers!")
//}else {
//    print("Who made that?")
//}

//* Optionals
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status = getHaterStatus(weather: "rainy")

//if let unwrappedStatus = status {
//    // unwrappedStatus contains a non-optional string
//}else  {
//    in case you want an else blcok, here you go...
//}

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

//if let haterStatus = getHaterStatus(weather: "rainy") {
//    takeHaterAction(status: haterStatus)
//}

//* Enumerations
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus1(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .rain:
        return "hate"
    case .cloud, .snow, .wind:
        return "dislike"
    }
}

//getHaterStatus1(weather: .cloud)

//* Structs
struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

//print(taylor.clothes)
//print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

//print(taylor)
//print(taylorCopy)

//* Classes
class Person1 {
    var shoes: String
    var name: String

    //! it should has initializer method because unline Structs it has not membervise initializers
    init(shoes: String, name: String) {
        self.shoes = shoes
        self.name = name
    }

    func sing() {
        print("La la la la")
    }
}

let taylor1 = Person1(shoes: "sneakers", name: "Taylor")
//taylor1.sing()
