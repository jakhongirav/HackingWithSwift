//: [Previous](@previous)

import Foundation

//* Loops

//? For loops

let count = 1...10
// for number in count {
//     print("Number is \(number)")
// }

let albums = ["Red", "1989", "Reputatution"]

// for album in albums {
//     print("\(album) is on Apple Music")
// }

// print("Players gonna ")

// for _ in 1...5 {
//     print("play")
// }

// While loop

var number = 1

// while number <= 10 {
//     print("Number is \(number)")
//     number += 1
// }

// print("Ready or not, here I come!")

// Repeat loop
var number1 = 1

// repeat {
//     print(number1)
//     number += 1
// } while number1 < 10

// while false {
//     print("This is false")
// }

// It will run the following one time even if it is false while while loop stops witouth runnning, thit is because repeat checks for condition at the end of the loop.
// repeat {
//     print("This is false")
// } while false

// Exiting loop

var countDown = 10

// while countDown >= 0 {
//     print("Countdown: \(countDown)")

//     if countDown == 5 {
//         print("I'm bored. Let's go now!")
//         break
//     }

//     countDown -= 1
// }

// Exiting multiple loops

// outerLoop: for i in 1...10 {
//     for j in 1...10 {
//         let product = i * j
//         print("\(i) * \(j) is \(product)")

//         if product == 50 {
//             print("It's a bullseye!")
//             break outerLoop
//         }
//     }
// }

// Skipping items
// here we used continue for skipping the odd number of items in the loop. Common usage...
// for i in 1...10 {
//     if i % 2 == 1 {
//         continue
//     }

//     print("Odd number: \(i)")
// }

// Infinite loops
var counter = 0

// while true {
//     print("")
//     counter += 1

//     if counter == 273 {
//         break
//     }
// }
