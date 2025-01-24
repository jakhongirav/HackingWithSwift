//: [Previous](@previous)

import Foundation

//* Properties
struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

//taylor.describe()
//other.describe()

//? Property observers
struct Person1 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor1 = Person1(clothes: "T-shirts")
//taylor1.clothes = "short skirts"

//? Computed properties
struct Person2 {
    var age: Int

    var ageInDogYears: Int {
        return age * 7
    }
}

var fan = Person2(age: 25)
//print(fan.ageInDogYears)

//? Static properties and methods
struct TaylorFan {
    static let favoriteSong1 = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan2 = TaylorFan(name: "James", age: 25)
//print(TaylorFan.favoriteSong1)

//? Access control
//! 4 types of controlling accessibility of properties: public, private, internal, fileprivate
class TaylorFan1 {
    private var name: String?
}

//? Polymorphism and type casting
class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "Albun \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
//? Used type casting using question mark because the types are mixed
//for album in allAlbums {
//    print(album.getPerformance())
//
//    if let studioAlbum = album as? StudioAlbum {
//        print(studioAlbum.studio)
//    }else if let liveAlbum = album as? LiveAlbum {
//        print(liveAlbum.location)
//    }
//}

var allAlbums1: [Album] = [taylorSwift, fearless]
//? Used type casting using exclamation mark because the types are not mixed and you re sure that type aren't mixed.
//for album in allAlbums1 as! [StudioAlbum] {
//    print(album.getPerformance())
//    print(album.studio)
//}
