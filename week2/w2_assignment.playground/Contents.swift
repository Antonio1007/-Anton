import UIKit
import Foundation

//Object-Oriented Swift
//1.
class Animal {
    enum Gender {
      case male, female, undefinded
    }
    func eat() {
      print("I eat everything.")
    }
}
//2.
class Elephant: Animal {
    var elephant: String
    init(elephant: String) {
        self.elephant = elephant
    }
    override func eat() {
        print("Usually eat grass.")
    }
   }
class Tiger: Animal {
    var tiger: String
    init(tiger: String) {
        self.tiger = tiger
    }
    override func eat() {
        print("Usually eat meat.")
    }
    }
class Horse: Animal {
    var horse: String
    init(horse: String) {
        self.horse = horse
    }
    override func eat() {
        print("Usually eat grass.")
        }
    }
//3.
class Zoo {
    
    var weeklyHot = Animal(tiger: String)
    
    init(weeklyHot: Animal ) {}
}

let zoo = Zoo(weeklyHot: Tiger())


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
enum Gasline:String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
func getPrice() {}
}
Gasline.oil92.rawValue
//associated value能夠在enum的case中儲存相關聯資料
//2.
class Pet {
  let name: String
  
  init(name:String) {
    self.name = name
    }
}
class People {
    let pet: Bool
    init(pet: Bool) {
        self.pet = pet
    }
    
    if let People = pet Bool? pet {return}
    }


//Protocol in Swift
//1.
protocol PoliceMan {
    func arrestCriminals()
}
//2.
struct Person: PoliceMan {
    func arrestCriminals() {
    }
    let name: String
//4.
    let toolman: ToolMan
}
//3.
protocol ToolMan {
    func fixComputer()
}
//5.
struct Engineer: ToolMan {
    func fixComputer() {
    }
}
//6.
    let Person = "Steven"
//Error handling in Swift
enum GuessNumberGameError {
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
}
        print("Guess the right number: \(targetNumber)")
    }
}
        .guess(number: 20 )

