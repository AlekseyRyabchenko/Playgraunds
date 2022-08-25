import UIKit

// MARK: Collection types (Типы коллекций)
// Существует три типа коллекций
// Array (Массив)
// Set (Набор)
// Dictionary (Словарь)

// MARK: Array

var listProduct = ["Milk", "Tea", "Bread", "Sugar", "Biscuit"]

for index in 0 ..< listProduct.count {
    print("Numder \(index), buy \(listProduct[index])")
}

let arrayNumbers = [1, 2, 3, 4, 7, 8, 15]

arrayNumbers.

var x = 6
var y = 0
var q = 0

for i in arrayNumbers {
    let b = arrayNumbers
    for c in b {
        if c + i == 6 {
            y = c
            q = i
        }
    }
}
print("\(x) = \(y) + \(q)")

// MARK: Set

listProduct

// MARK: Dictionary

let nameAge = [ 31: "Aleksey", 29: "Tatiana", 7: "Ivan", 4: "Vladimir", 3: "Pavel"]

for (age, name) in nameAge {
    print("Your age \(age). Your name \(name)")
}
