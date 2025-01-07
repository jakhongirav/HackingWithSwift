//* Structs, part 1

//? Creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)  // Tennis

tennis.name = "Lawn tennis"
