import UIKit

// Data Types

let str: String // строка "значение"

let int: Int // целое число

let doub: Double // Число и до 15 знаков после запятой

let flo: Float // Число и до 6 знаков после запятой

// Int types (Int - integer, UInt - unsigned integer (беззнаковый тип))
Int.min
Int.max

UInt.min
UInt.max
//----------
Int8.min
Int8.max

UInt8.min
UInt8.max
//----------
Int16.min
Int16.max

UInt16.min
UInt16.max
//----------
Int32.min
Int32.max

UInt32.min
UInt32.max
//----------
Int64.min
Int64.max

UInt64.min
UInt64.max
//----------

// Преобразование типов

let a = 11 // Int
let b = 5.5 // Double
let sum1 = Double(a) + b //var (a) Из Int в Double

let c = "77" // String
let d = 24 // Int
let sum2 = Int(c)! + d //var (c) Из String в Int, обязательно (с)! <- force unwraping

// Bool types

let f = true

if f != true {
    print("Bad")
} else {
    print("Good")
}


