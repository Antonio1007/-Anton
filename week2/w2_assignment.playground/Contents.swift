import UIKit
import Foundation
import Darwin

//Object-Oriented Swift
//1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    init (gender: Gender){
        self.gender = gender
    }
    func eat() {
      print("I eat everything.")
    }
}
//2.
class Elephant: Animal {
    init() {
        super.init(gender: Gender.male)
    }
    override func eat() {
        print("Usually eat grass.")
    }
   }
class Tiger: Animal {
    init() {
        super.init(gender: Gender.male)
    }
    override func eat() {
        print("Usually eat meat.")
    }
    }
class Horse: Animal {
    init() {
        super.init(gender: Gender.male)
    }
    override func eat() {
        print("Usually eat grass.")
        }
    }
//3.
class Zoo {
    
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())

var tiger = Tiger()
var elephant = Elephant()
var horse = Horse()

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse
//4.
//Structure:value types, values, copy data, immutable, equal if values are equal,
//Class: reference types, objects, share data, mutable, unique identites
//5.
//instance method method:先需要生成一個特定型別（類別、結構或列舉）的實體，才能使用這個實體裡的方法。
//type method:屬於特定型別（類別、結構或列舉）本身的方法。
//6.
//為class或struct中的每個properties設置一個初始值
//7.
//在instance method中，self完全等同於該實例本身。
//在type method中，self指向這個型別本身，而不是型別的某個實例。
//8.
//refence type: 每個實例共享資料的單一備份。當這類型別被初始化、被指派給一個變數或常數、或者是被傳送到函式時，就會回傳參考到相同的實例。
//value type: 每個實例保存資料一份獨立的備份。當這類型別被指派給一個變數或常數、或是被傳送到函式時，就會創建一個新的實例（備份）。

//Enumerations and Optionals in Swift
//1.
enum Gasline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    func getPrice()->Int{
        switch self {
        case .oil92:
            return 30
        case .oil95:
            return 40
        case .oil98:
            return 50
        }
}
}
Gasline.oil98.getPrice()
Gasline.oil95.getPrice()
Gasline.oil92.getPrice()
var gas98 = Gasline.oil98
var gas95 = Gasline.oil95
var gas92 = Gasline.oil92
gas98.getPrice()
gas95.getPrice()
gas92.getPrice()
Gasline.oil92.rawValue

//associated value能夠在enum的case中儲存相關聯資料
//2.
class Pet {
    let name: String
    init(name: String){
        self.name = name
    }
}
class People {
    let pet: Pet?
    init(pet: Pet? = nil) {
        self.pet = pet
    }
}

func getPet(for pet: Pet?) {
    guard let p = pet else { return }
}


func getPet2(for pet: Pet?) {
    if let p = pet {}
}

//Protocol in Swift
//1.
protocol PoliceMan {
    func arrestCriminals()
}
//3.
protocol ToolMan {
    func fixComputer()
}
//2.
struct Person: PoliceMan {
    let name: String
    func arrestCriminals(){}
//4.
    var toolman: ToolMan
    }
//5.
struct Engineer: ToolMan {
    func fixComputer() {
    }
}
//6.
let engineer = Engineer()
let steven = Person(name: "Steven", toolman: engineer )
//Error handling in Swift
enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber}
        print("Guess the right number: \(targetNumber)")
    }
}
var guessNumber = GuessNumerGame()
try guessNumber.guess(number: 20)

