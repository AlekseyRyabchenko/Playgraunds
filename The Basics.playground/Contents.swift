import UIKit

// MARK: The Basics

// Метод (Method) это meaning.method( Свойства, (Property)) - задаётся после точки, в скобках задаются свойства метода.

var a = "a" // Переменная, должна иметь уникальное имя.
a = "b"

var uniqueName: String // именаПринятоПисатьМетодомCamelCase

let b = "a" // Константа (Не изменяема), должна иметь уникальное имя.
//b = a  Error

var c = 3, d = 4, e = 5 // Можно обьявить несколько значений
let j: String = "go", p: Int = 3, o: Double = 2.3 // Можно обьявить несколько значений, разного типа

var f, g, h: Double
//print(g) // Требуется инициализация
g = 5

let Name = "Aleksey"
print("Hello \(Name)") // Интерполяция строк \(.....)

// Однострочный комментарий
/* Многострочный
 комментарий */
// MARK: разделитель

let cat = "cat"; print(cat) // Точка с запятой используется для нескольких операторов на одной строке

// MARK: Циклы

// цикл for in
for number in 1..<5 {
    print("Number is \(number)")
}

var number = 1
var numberTwo = 1

// цикл while
while number < 15 {
    number += 1
}
print(number)

// while с условием break
while number < 25 {
    if number == 22 {
        break
    }
    number += 1
}
print(number)

// цикл repeat while
repeat {
    numberTwo += 1
} while numberTwo < 20
print(numberTwo)

// MARK: Tuple
// Tuple составной тип данных, группирует несколько значений в одно составное значение
// tuple полезны в качестве возвращаемых значений функций
// пример

// могут содержать разные типы данных одновременно
var tupleOne = (name: "Aleksey", age: 31, status: "Programmer" )
var tupleTwo = (name: "Ivan", age: 7, status: "Son")

// можно запаковать несколько в один
var tupleFamily = (tupleOne, tupleTwo)

// вызвать по индексу
print(tupleFamily.0)

// вызвать по имени
print(tupleOne.status)

// можно создавать обьединенные выражения
var (leftSize, rightSize) = (42, "Green")
leftSize
rightSize

// можно разложить tuple на отдельные выражения (WOW)
let cupGlassVolume = ("Стакан", "Стекло", 200)
var (cup, glass, volume) = cupGlassVolume

cup
glass
volume

// MARK: Optional type data (nil)
// nil используется в тех ситуациях когда значение может отсутствовать
// пример

var fiveOptional: Int? = 5
var threeOptional = "3"

fiveOptional = nil

//fiveOptional + 3 // error
// исключить error можно с помощью

if fiveOptional == nil { // выражение "если"
    print("fiveOptional is nil")
} else {
    print(fiveOptional!)// необходимо добавить (!)
}

// Optional binding

var optionalBindThree: Int = 0

if let three = Int(threeOptional) {
    optionalBindThree = three
} else {
    print("threeOptional is nil")
}

optionalBindThree

fiveOptional == nil ? print("fiveOptional is nil") : print(fiveOptional!) // с помощью тернарного оператора

var fourOptional: Int? = 4
var fourInt = 0

//fourOptional = nil

if let four = fourOptional { // с помощью if let передать значение в новую let или var
    fourInt = four
} else {
    print("error")
}
print(fourInt)

// Nil coalescing operator
// оператор выражен a ?? b где b устаналивает дефолтное значение в случае если a = nil, дефолтное значение можно выставить как напрямую, так и через let, var

var fiveZiro = fiveOptional ?? 0
fiveZiro

let defaultFour = 11
fiveZiro = fiveOptional ?? defaultFour

print(fiveZiro)

// Force unwrapping (!)
// String for Int

var strInt: String = "7"
var unwInt = 53
let sumInt = Int(strInt)! + unwInt // Int

//Double for Int

var douInt = 5.5
var numInt = 42

let sumDoub = Double(numInt) + douInt // Double

// MARK:
