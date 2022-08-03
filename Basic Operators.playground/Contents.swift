import UIKit

// Basic Operators

// Операторы
// Унарные: префиксные -a, !b, постфиксные с!
// Бинарные т.к. работают с двумя операторами сразу: инфиксные (+) a + b
// Тернарные (В Swift такой только один) a ? b : c (Если a true тогда выполни b, если a false выполни c)

// Тернарный оператор может проводить проверку nil
// a != nil ? a! : b

// Тернарный оператор (реализация)

let name = "Aleksey"
var dayTime = ["Morning","Night"]

dayTime.randomElement() == "Morning" ? print("Доброе утро \(name)") : print("Спокойной ночи \(name)")

// Пример такого же результата но в func

func action(meaning: String) {
    if meaning == "Morning" { //
        print("Доброе утро \(name)") // условие функции
    } else if meaning == "Night" { //
        print("Спокойной ночи \(name)") //
    }
}
action(meaning: dayTime.randomElement()!)

// Оператор присваивания
// прим. var (=) <- "a"

// Арифметические операторы +,-,*,/
// % остаток от деления (не имеет значения префиксый минус результат как с положительным числом)

// Составные операторы присваивания +=, -=,
// пример

var a = 0

var b = 0

a = a + 1 /* Тот же смысл -> */ ; a += 1

// Операторы сравнения ==, !=, >, <, <=, >=

a = 10
b = 10

a < b

a > b

a <= b

a != b

// Оператор замкнутого цикла 1...10 (И 1 и 10 включительно)
// Опрератор полузамкнутого цикла 1..<10 (1 включено, 10 исключено)

// Логические операторы !a(Не), &&(И), ||(Или),

// При совместном использовании операторов в выражении, оператор && можно включать в скобки
// Пример
//  func (a && b) || c || d {

