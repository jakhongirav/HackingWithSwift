// Operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// Why can’t Swift add a Double to an Int?

let value: Double = 90_000_000_000_000_001
// here it shows warning about double value

let value1: Int = 90_000_000_000_000_001
// and here it does not show warning about value

// Why does Swift have a dedicated division remainder operator?

let weeks = 465 / 7
// print("There are \(weeks) weeks until the event.")
// here it is not correct

let weeks1: Double = 465 / 7
// print("There are \(weeks1) weeks until the event.")
// here we get something that’s Technically Correct™ but not actually that useful: there are 66.42857142857143 weeks until the event.

// This is where reminder operator comes in
let weeks2 = 465 / 7
let days = 465 % 7
// print("There are \(weeks2) weeks and \(days) days until the event.")

// Tip: If your goal is to ask “does this number divide equally into some other number?” then Swift has an easier approach:
let number = 465
let isMultiple = number.isMultiple(of: 7)

// Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42
// print(doubleMeaning) // 84

let fakers = "Fakers gonna "
let action = fakers + "fake"
// print(action) // Fakers gonna fake

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let band = firstHalf + secondHalf
// print(band) // ["John", "Paul", "George", "Ringo"]

// Conditions
let firstCard = 11
let secondCard = 10
// basic one
// if firstCard + secondCard == 21 {
//     print("You win!")
// } else {
//     print("You lose.")
// }

// enhanced one
// if firstCard + secondCard == 21 {
//     print("You win!")
// } else if firstCard + secondCard == 22 {
//     print("You lose.")
// }else {
//     print("wrong answer.")
// }

// difference between if and else if
let score = 9001

// if score > 9000 {
//     print("It's over 9000!")
// } else if score == 9000 {
//     print("It's exactly 9000!")
// } else {
//     print("It's not over 9000!")
// }

// Combining conditions
let age1 = 12
let age2 = 21

// and operator
// if age1 > 18 && age2 > 18 {
//     print("Both are over 18")
// }
// or operator
// if age1 > 18 || age2 > 18 {
//     print("At least one is over 18")
// }

// Ternary operator
let firstCard1 = 11
let secondCard1 = 10
let message = firstCard1 + secondCard1 == 21 ? "You win!" : "You lose."
// print(message) // You win!

// Switch statement
let animal = "cat"

// switch animal {
// case "dog":
//     print("The \(animal) barks.")
// case "cat":
//     print("The \(animal) meows.")
//     fallthrough
//     this keyword will execute the next case as well
// default:
//     print("The \(animal) makes some noise.")
// }

// Range operators
let number1 = 85

// switch number1 {
// case 1..<50:
//     print("You failed badly.")
// case 10...85:
//     print("You did OK.")
// default:
//     print("You did great!")
// }

// Closed range operator
let number2 = 10...85
// print(number2)
