import UIKit

// MARK: String

// Объявление пустого значения String

let emptyString = String()
// или
let stringEmpty = ""
// проверка пустого значения
// is empty (булево значение "пусто ли")
if emptyString.isEmpty && stringEmpty.isEmpty {
    "empty"
} else {
    "no empty"
}

// MARK: Многострочный литерал

let quotation = """
Белый Кролик надел очки.  "С чего мне начать,
пожалуйста, ваше величество?" спросил он.

"Начни сначала," серьезно сказал король, "и продолжай.
пока не дойдешь до конца; тогда остановись"
"""
print(quotation)

// MARK: Объединение строк

let string1 = "Hello"
let string2 = " Aleksey"

var sumString = string1 + string2

let string3 = " and Tatiana"
sumString += string3
// append ("добавить")
let exclamation = "!"
sumString.append(exclamation)
print(sumString)

// MARK: Интерполяция строк

let male = "Aleksey"
let fema = "Tatiana"

var family = [male, fema]

if family.randomElement() == male {
    print("Good morning \(male)")
} else {
    print("Good morning \(fema)")
}

// MARK: Accessing and Modifying a String

// count("подсчет содержимого")
family.count

// insert (вставка)
let son = "Ivan"
family.insert(son, at: 2)// (что вставить, at: куда(index))

// remove (удаление)
family.remove(at: 1)// (index удаляемого)
family

family.append(fema)// вставка в конец
family

//

var randomNumber = 0..<1000000

print(randomNumber.randomElement()!)
