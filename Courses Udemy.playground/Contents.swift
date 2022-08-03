import Foundation
import UIKit

var aa = 5

var bb = "5"

let sums = aa + Int(bb)!

print(sums)


/*

var num: Float = 33.5

num = 15 // Float

var num1 = 5 // Int

var sum = Int(num) + num1 // Float + Int Error

let num2: Double = 10

var sum2 = num2 + Double(sum)
print(sum2)

var volume: Float = 2

func numProgress (meaning: Float, meaning2: Float) -> Float {
    let sumMean = meaning / meaning2
    return sumMean
}

var alike = numProgress(meaning: volume, meaning2: num)

alike


 
// Challenge 42
 
var a = 5

var b = 10

var c = a
a = b
b = c
 
// Challenge 43 Array

var number = [Int.random(in: 0...50), Int.random(in: 0...70), Int.random(in: 0...1000), Int.random(in: 0...40)]

var computedNumber = number[0] * number[1] * number[2] * number[3]

print(computedNumber)

//

var qNumber = 0

qNumber = Int.random(in: 0...3)

print(qNumber)
 
// Challenge 46 Generator password

let alphaBet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

var password = "\(alphaBet.randomElement()!)\(alphaBet.randomElement()!)\(alphaBet.randomElement()!)\(alphaBet.randomElement()!)\(alphaBet.randomElement()!)\(alphaBet.randomElement()!)"

print(password)

// function

func greeting() {
    for _ in 1...4 {
        print("Hello")
    }
}

greeting()

// Ch 75 Function 2

var myAge = 31

func greeting2(whoToGreet: String){
    print("Hello \(whoToGreet)")
}

greeting2(whoToGreet: "Aleksey")

var familyName = ["Aleksey","Tatyana","Ivan","Pavel","Vladimir"]

func greeting3(){
    print("Hello \(familyName.randomElement()!)")
}

greeting3()
 
// Function 3
 

func numberAction(n1: Int, n2: Int, operation:(Int,Int)->Int) -> Int {
    return operation(n1,n2)
}

func add(nu1: Int, nu2: Int) -> Int {
    return nu1 + nu2
}

let result = numberAction(n1: 5, n2: 77, operation: add(nu1:nu2:))
print(result)


//

let randonNum = Int.random(in: 0...100)

print(randonNum)

if randonNum > 70 {
    print("Wow > 70")
} else if randonNum < 30 {
    print("Bad < 30")
} else {
    print("Medium")
}

switch randonNum {
case 0...30:
    print("Bad < 30")
case 30...70:
    print("Medium")
case 70...100:
    print("Wow > 70")
default:
    print("error")
}

// Wow

let name = "Aleksey"

let age = "31"

let nameDict = [ 31: "\(name): \(age)", 29: "Tatiana: 29", 7: "Ivan: 7", 4: "Vladimir: 4", 3: "Pavel: 4"]

let arrDict = [ 31, 29, 7, 4, 3]

var randomArr = arrDict.randomElement()

switch randomArr {
case 31:
    print(nameDict[31]!)
case 29:
    print(nameDict[29]!)
case 7:
    print(nameDict[7]!)
case 4:
    print(nameDict[4]!)
case 3:
    print(nameDict[3]!)
default:
    print("Error")
}

let ranPassword = Int.random(in: 0...1000000)

var doublePass = ("\(password)\(ranPassword)")

print(doublePass)
 
//
 
struct HumanFamuly {
    
    let name: String
    var age: Int
    var growth: Int
    var status: String
    
    init(name: String, age: Int, growth: Int, status: String) {
        self.name = name
        self.age = age
        self.growth = growth
        self.status = status
    }
}

var wife = HumanFamuly(name: "Татьяна", age: 29, growth: 170, status: "Домохозяйка")
var husband = HumanFamuly(name: "Алексей", age: 31, growth: 171, status: "Программист")
var son1 = HumanFamuly(name: "Иван", age: 7, growth: 135, status: "Старший сын")
var son2 = HumanFamuly(name: "Владимир", age: 3, growth: 106, status: "Средний сын")
var son3 = HumanFamuly(name: "Павел", age: 3, growth: 108, status: "Младший сын")

var family = [husband, wife, son1, son2, son3]

for (index) in family.enumerated() {
    print("Моя семья \(index)")
}
 
//
 
struct Car {

    var engine: [String :Int]
    var body: String
    var maxSpeed: Int
    var type: String

    init(modelEngine: [String :Int], modelBody: String, modelMaxSpeed: Int, modelType: String) {
        engine = modelEngine
        body = modelBody
        maxSpeed = modelMaxSpeed
        type = modelType
    }
}

var europianCars = [Car(modelEngine: ["V": 8], modelBody: "Sedan", modelMaxSpeed: 210, modelType: "C"),
                    Car(modelEngine: [ "TSI": 4], modelBody: "Hatchback", modelMaxSpeed: 230, modelType: "B")]

print("\(europianCars[1].maxSpeed) \(europianCars[1].engine)")

//

struct Kids {
    let name: String?
    var ageStatus: [String: Int]
    
    init(name: String?, ageStatus: [String: Int]){
        self.name = name
        self.ageStatus = ageStatus
    }
}

var pavel = Kids(name: "Pavel", ageStatus: ["Son": 3])

print(pavel.name!)

// 103 function 3

func kind(name: String) -> Bool {
    if name == "Pavel" {
        return true
    } else {
        return false
    }
}

print(kind(name: pavel.name!))
 
// optional

let myOptional: String?

myOptional = "Cars"

if let nameA = myOptional {
    let _: String = nameA
    print(nameA)
} else {
    print("is nil")
}

let text: String = myOptional ?? "nil"

print(text)


// func calculator

var b = "5"

var t = String(",")

var sum1 = 5 + Int(b)!

var sum3 = 5 + sum



func calculator(n1: Float, n2: Float, n3: Float) -> Float {
    let operaton: Float = n1; n3
    return operaton
}
 

// Delegate

protocol LicenseLifeSupport {
    func performCPR()
}
protocol LicenseDriver {
    func driverCPR()
}

class EmergencyCallHandler {
    var delegate: LicenseLifeSupport?
    var delegate2: LicenseDriver?
    
    func assessSituation() {
        print("У Вас все в порядке, что случилось?")
    }
    
    func medicalEmergency() {
        delegate2?.driverCPR()
        delegate?.performCPR()
    }
}

class AmbulanceDriver: LicenseDriver {
    
    init (handler:EmergencyCallHandler){
        handler.delegate2 = self
    }
    
    func driverCPR() {
        print("Прибыть к месту")
    }
}

struct Paramedic: LicenseLifeSupport {

    init (handler: EmergencyCallHandler){
        handler.delegate = self
    }

    func performCPR() {
        print("Срочно оказать помощь!")
    }

}

let emilio = EmergencyCallHandler()
let garry = AmbulanceDriver(handler: emilio)
let pete = Paramedic(handler: emilio )

emilio.assessSituation()
emilio.medicalEmergency()
 
 

// chalenge closures

let array = [3,4,2,5,8,9]

func addOne (n1: Int) -> Int {
    return n1 + 1
}

let cont1 = addOne(n1: array[0])

let cont = array.map{$0 + 1} // closures. {"\($0)"} Closures String

print(cont1)

print(cont)
 */
