import UIKit

//MARK: Долина Маллигана, это ограниченая экспирементальная имитация экономической модели отдельного общества с замкнутым циклом (как часть доказательства возможности экономического процветания без политического регулирования)

// Персонажи

struct Person {
    
    let name: String
    var healt: Int
    var profession: String
    var money: Int
    var credit: Int
    var products: [String : Int]
    var purchases: [String: Int]
    var homeElektro: Int
    var homeWater: Int
    var homeCarcas: Int
    var furniture: Int
    var clothes: Int
    var food: Int
    var income: Int
    var consumption: Int
    var debt: Int
    var inDebt: Bool
    
    init (name: String,
          healt: Int,
          profession: String,
          money: Int,
          credit: Int,
          products: [String: Int],
          purchases: [String: Int],
          homeElektro: Int,
          homeWater: Int,
          homeCarcas: Int,
          furniture: Int,
          clothes: Int,
          food: Int,
          income: Int,
          consumption: Int,
          debt: Int,
          inDebt: Bool) {
        
        self.name = name
        self.healt = healt // Здоровье
        self.profession = profession // Профессия
        self.money = money // Деньги
        self.credit = credit // Кредит
        self.products = products // Изготавливаемая продукция
        self.purchases = purchases // Закупки для продукции
        self.homeElektro = homeElektro // Электроснабжение
        self.homeWater = homeWater // Водоснабжение
        self.homeCarcas = homeCarcas // Состояние дома
        self.furniture = furniture // Мебель
        self.clothes = clothes // Одежда
        self.food = food // Продукты
        self.income = income // Доход
        self.consumption = consumption // Расход
        self.inDebt = inDebt // в долгу
        self.debt = debt // долг
    }
}

var golt = Person(name: "Джон Голт", healt: Int.random(in: 70...100), profession: "Электрик", money: 0, credit: 0, products: ["Ремонт электрооборудования": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var malligan = Person(name: "Мидас Маллиган", healt: Int.random(in: 70...100), profession: "Чеканщик монет", money: 0, credit: 0, products: ["Золотой Дублон": 0], purchases: ["Золотой самородок": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var exton = Person(name: "Хью Экстон", healt: Int.random(in: 70...100), profession: "Гончар", money: 0, credit: 0, products: ["Посуда": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var dAnconia = Person(name: "Франсиско Д 'Анкониа", healt: Int.random(in: 70...100), profession: "Пищевой промышленник", money: 0, credit: 0, products: ["Продукты": 0], purchases: ["Овощи и фрукты": 0,"Мясо": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var macknamara = Person(name: "Дик Макнамара", healt: Int.random(in: 70...100), profession: "Сантехник", money: 0, credit: 0, products: ["Ремонт Водопровода": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var taggert = Person(name: "Дагни Таггерт", healt: Int.random(in: 70...100), profession: "Строитель", money: 0, credit: 0, products: ["Ремонт Дома": 0], purchases: ["Доски": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var daneskold = Person(name: "Рагнар Данескольд", healt: Int.random(in: 70...100), profession: "Золотоискатель", money: 0, credit: 0, products: ["Золотой самородок": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var wyatt = Person(name: "Эллис Уайэтт", healt: Int.random(in: 70...100), profession: "Рудокоп", money: 0, credit: 0, products: ["Железная руда": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var nielsen = Person(name: "Тед Нильсен", healt: Int.random(in: 70...100), profession: "Лесоруб", money: 0, credit: 0, products: ["Доски": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var stockton = Person(name: "Эндрю Стоктон", healt: Int.random(in: 70...100), profession: "Металлург", money: 0, credit: 0, products: ["Стальные изделия": 0], purchases: ["Железная руда": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var atwood = Person(name: "Кэлвин Этвуд", healt: Int.random(in: 70...100), profession: "Портной", money: 0, credit: 0, products: ["Одежда": 0], purchases: ["Шерсть": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var danagger = Person(name: "Кен Данаггер", healt: Int.random(in: 70...100), profession: "Столяр", money: 0, credit: 0, products: ["Мебель": 0], purchases: ["Доски": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var hammond = Person(name: "Лоуренс Хэммонд", healt: Int.random(in: 70...100), profession: "Фермер", money: 0, credit: 0, products: ["Овощи и фрукты": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var marsh = Person(name: "Роджер Марш", healt: Int.random(in: 70...100), profession: "Врач", money: 0, credit: 0, products: ["Медицинские услуги": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)
var kellogg = Person(name: "Оуэн Келлог", healt: Int.random(in: 70...100), profession: "Скотовод", money: 0, credit: 0, products: ["Шерсть": 0, "Мясо": 0], purchases: ["": 0], homeElektro: Int.random(in: 40...100), homeWater: Int.random(in: 30...100), homeCarcas: Int.random(in: 50...100), furniture: Int.random(in: 60...100), clothes: Int.random(in: 30...100), food: Int.random(in: 70...100), income: 0, consumption: 0, debt: 0, inDebt: false)

var creditSum = 0
var humanToDebt = " "
var humanInDebt = " "

//MARK: Запуск Цикла ----------------------------------------------------------------------

func runCycle(human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    creditSum = 0
    humanToDebt = " "
    humanInDebt = " "
    for (_, value) in human.enumerated() {
        person = value
        person.income = 0
        person.consumption = 0
        if person.credit == 0 {
            if person.debt == 0 {
                person.inDebt = false
            }
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
}

//MARK: Кредит ----------------------------------------------------------------------

func credit(human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var creditData: [Person] = []
    var sumCredit = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.money <= 0 && person.debt == 0 && human[1].products["Золотой Дублон"]! > -1000 {
            person.money += 50
            person.credit += 50
            sumCredit += 50
            person.inDebt = true
        }
        creditData += [person]
    }
    for (_, value) in creditData.enumerated(){
        person = value
        if person.profession == "Чеканщик монет" {
            let valueCredit = person.products["Золотой Дублон"]
            person.products["Золотой Дублон"] = (valueCredit! - sumCredit)
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
}

//MARK: В Долг ----------------------------------------------------------------------

func parameterInDebt(human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var sumDebt = 0
    var inDebtData: [Person] = []
    for (_, value) in human.enumerated() {
        person = value
        if person.name != "Мидас Маллиган" {
            if person.credit >= 300 && person.credit <= 600 {
                humanInDebt = person.name
                sumDebt = person.credit
            }
            if person.money > 1000 && person.inDebt == false {
                humanToDebt = person.name
            }
        }
        inDebtData += [person]
    }
    for (_, value) in inDebtData.enumerated(){
        person = value
        if humanToDebt != " " && humanInDebt != " " {
            if person.name == humanToDebt {
                person.money -= sumDebt
                person.debt = -sumDebt
                person.inDebt = true
            }
        }
        if humanToDebt != " " && humanInDebt != " " {
            if person.name == humanInDebt {
                person.credit -= sumDebt
                person.debt = sumDebt
                person.inDebt = true
            }
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
}

//MARK: Профессии и производство Продукции ----------------------------------------------------------------------

// добыча Золотых самородков

func parameterGoldDigger(daneskold human: inout [Person]) { // [6] Золотоискатель -----------------------------------
    var personGoldDigger: Person // Золотоискатель
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        personGoldDigger = value
        if personGoldDigger.profession == "Золотоискатель" {
            let numberOOfGoldNuggets = (personGoldDigger.healt + personGoldDigger.food + personGoldDigger.clothes) // добыча Золотых самородков
            personGoldDigger.products = ["Золотой самородок": numberOOfGoldNuggets]
            personGoldDigger.healt = Int.random(in: 20...100)
            personGoldDigger.clothes = Int.random(in: 20...100)
            personGoldDigger.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [personGoldDigger]
    }
    human = convertArrayHuman
}

// Покупка Золотых самородков, оплата и производство дублонов

func parameterSaleOfGoldNuggets(malligan human: inout [Person]) { // [1] Чеканщик монет -----------------------------------
    var minter: Person // Чеканщик монет
    var goldOreOptional = 0 //Золотой самородок для Чеканщика монет
    var saleGoldOreOptional = 0 // начисление за Золотые самородки
    var paymentOfGoldOre = 0
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        minter = value
        if minter.profession == "Золотоискатель" {
            let goldOre = minter.products["Золотой самородок"] // подсчет Золотых самородков
            if let optional = goldOre {
                goldOreOptional = optional
                saleGoldOreOptional = goldOreOptional
            }
        }
    }
    for (_, value) in human.enumerated() {
        minter = value
        if minter.profession == "Чеканщик монет" {
            let assotiatiosPurchases = minter.purchases["Золотой самородок"] // начисление Золотых самородков
            if let optional = assotiatiosPurchases {
                goldOreOptional += optional
            }
            minter.purchases["Золотой самородок"] = goldOreOptional
            
            if minter.money <= 0 && human[1].products["Золотой Дублон"]! > -1000 { // оплата за Золотые самородки в кредит
                minter.credit += 50
                minter.money += 50
                minter.inDebt = true
                paymentOfGoldOre = minter.money - (saleGoldOreOptional / 6)
                minter.consumption += saleGoldOreOptional / 6
                minter.money = paymentOfGoldOre
                var creditSum = 0
                let credit = minter.products["Золотой Дублон"]
                if let creditMoney = credit {
                    creditSum = creditMoney - 50
                }
                minter.products["Золотой Дублон"] = creditSum
            } else {
                minter.money -= saleGoldOreOptional / 6 // оплата за Золотые самородки
                minter.consumption += saleGoldOreOptional / 6
            }
            
            
            if let goldenDoubloon = minter.products["Золотой Дублон"] { // изготовление дублонов
                if goldenDoubloon < 500 {
                    if goldOreOptional >= 500 {
                        var doublon = 500
                        let assotiatiosDoubloon = minter.products["Золотой Дублон"] // начисление дублонов
                        if let optionalDoubloon = assotiatiosDoubloon {
                            doublon += optionalDoubloon
                        }
                        minter.products["Золотой Дублон"] = doublon
                        
                        let assotiatiosGoldOre = minter.purchases["Золотой самородок"] // списание Золотых самородков
                        if let optionalGoldOre = assotiatiosGoldOre {
                            goldOreOptional = optionalGoldOre - 500
                        }
                        minter.purchases["Золотой самородок"] = goldOreOptional
                        
                    }
                    if goldOreOptional >= 300 {
                        var doublon = 300
                        let assotiatiosDoubloon = minter.products["Золотой Дублон"] // начисление дублонов
                        if let optionalDoubloon = assotiatiosDoubloon {
                            doublon += optionalDoubloon
                        }
                        minter.products["Золотой Дублон"] = doublon
                        
                        let assotiatiosGoldOre = minter.purchases["Золотой самородок"] // списание Золотых самородков
                        if let optionalGoldOre = assotiatiosGoldOre {
                            goldOreOptional = optionalGoldOre - 300
                        }
                        minter.purchases["Золотой самородок"] = goldOreOptional
                        
                    }
                    if goldOreOptional >= 200 {
                        var doublon = 200
                        let assotiatiosDoubloon = minter.products["Золотой Дублон"] // начисление дублонов
                        if let optionalDoubloon = assotiatiosDoubloon {
                            doublon += optionalDoubloon
                        }
                        minter.products["Золотой Дублон"] = doublon
                        
                        let assotiatiosGoldOre = minter.purchases["Золотой самородок"] // списание Золотых самородков
                        if let optionalGoldOre = assotiatiosGoldOre {
                            goldOreOptional = optionalGoldOre - 200
                        }
                        minter.purchases["Золотой самородок"] = goldOreOptional
                        
                    }
                    if goldOreOptional >= 100 {
                        var doublon = 100
                        let assotiatiosDoubloon = minter.products["Золотой Дублон"] // начисление дублонов
                        if let optionalDoubloon = assotiatiosDoubloon {
                            doublon += optionalDoubloon
                        }
                        minter.products["Золотой Дублон"] = doublon
                        
                        let assotiatiosGoldOre = minter.purchases["Золотой самородок"] // списание Золотых самородков
                        if let optionalGoldOre = assotiatiosGoldOre {
                            goldOreOptional = optionalGoldOre - 100
                        }
                        minter.purchases["Золотой самородок"] = goldOreOptional
                        
                    }
                }
            }
            minter.healt = Int.random(in: 20...100)
            minter.clothes = Int.random(in: 20...100)
            minter.food = Int.random(in: 20...100)
        }
        if minter.profession == "Золотоискатель" {
            minter.products = ["Золотой самородок" : 0] // обнуление Золотых самородков
            minter.money += saleGoldOreOptional / 6 // оплата Золотых самородков
            minter.income += saleGoldOreOptional / 6
        }
        convertArrayHuman += [minter]
    }
    human = convertArrayHuman
}

// Фермерство

func parameterFarming(hammond human: inout [Person]) { // [12] Фермер -----------------------------------
    var personFarmer: Person // Фермер
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        personFarmer = value
        if personFarmer.profession == "Фермер" {
            let numberVegetablesAndFruits = (personFarmer.healt + personFarmer.food + personFarmer.clothes + 100) // сбор Овощей и Фруктов
            personFarmer.products = ["Овощи и фрукты": numberVegetablesAndFruits]
            personFarmer.healt = Int.random(in: 20...100)
            personFarmer.clothes = Int.random(in: 20...100)
            personFarmer.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [personFarmer]
    }
    human = convertArrayHuman
}

// Скотоводство

func parameterCattleBreeding(kellogg human: inout [Person]) { // [14] Скотовод -----------------------------------
    var personHerdsman: Person // Скотовод
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        personHerdsman = value
        if personHerdsman.profession == "Скотовод" {
            let numberWool = (personHerdsman.healt + personHerdsman.food + personHerdsman.clothes + 100) // сбор Щерсти
            let numberMeat = (personHerdsman.healt + personHerdsman.food + personHerdsman.clothes + 100) // сбор Мяса
            personHerdsman.products = ["Шерсть": numberWool, "Мясо": numberMeat]
            personHerdsman.healt = Int.random(in: 20...100)
            personHerdsman.clothes = Int.random(in: 20...100)
            personHerdsman.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [personHerdsman]
    }
    human = convertArrayHuman
}

// Покупка овощей и фруктов, оплата и Производство Продуктов

func parameterProductManufacturing(dAnconia human: inout [Person]) { // [3] Пищевой промышленник -----------------------------------
    var foodIndustrialist: Person // Пищевой промышленник
    var meatOptional = 0 // Мясо для промышленика
    var vegetablesAndFruitsOptional = 0 // Овощи и фрукты для промышленика
    var saleMeatOptional = 0 // начисление за Мясо
    var saleVegetablesAndFruitsOptional = 0 // начисление за Овощи и фрукты
    var paymentMeat = 0
    var paymentVegetablesAndFruits = 0
    var convertArrayHuman: [Person] = []
    
    for (_, value) in human.enumerated() {
        foodIndustrialist = value
        if foodIndustrialist.profession == "Скотовод" {
            let meat = foodIndustrialist.products["Мясо"] // подсчет Мяса
            if let optional = meat {
                meatOptional = optional
                saleMeatOptional = meatOptional
            }
        }
    }
    
    for (_, value) in human.enumerated() {
        foodIndustrialist = value
        if foodIndustrialist.profession == "Фермер" {
            let vegetablesAndFruits = foodIndustrialist.products["Овощи и фрукты"] // подсчет Овощей и фруктов
            if let optional = vegetablesAndFruits {
                vegetablesAndFruitsOptional = optional
                saleVegetablesAndFruitsOptional = vegetablesAndFruitsOptional
            }
        }
    }
    
    for (_, value) in human.enumerated() {
        foodIndustrialist = value
        if foodIndustrialist.profession == "Пищевой промышленник" {
            let assotiatiosMeatPurchases = foodIndustrialist.purchases["Мясо"] // Передача мяса
            let assotiatiosVegetablesAndFruitsPurchases = foodIndustrialist.purchases["Овощи и фрукты"] // Передача Овощей и фруктов
            if let optional = assotiatiosMeatPurchases {
                meatOptional += optional
            }
            if let optional = assotiatiosVegetablesAndFruitsPurchases {
                vegetablesAndFruitsOptional += optional
            }
            foodIndustrialist.purchases["Мясо"] = meatOptional
            foodIndustrialist.purchases["Овощи и фрукты"] = vegetablesAndFruitsOptional
            
            if foodIndustrialist.money <= 0 && foodIndustrialist.debt == 0 && human[1].products["Золотой Дублон"]! > -1000 { // оплата за Мясо, Овощи и фрукты в кредит
                foodIndustrialist.credit += 100
                foodIndustrialist.money += 100
                foodIndustrialist.inDebt = true
                paymentMeat = foodIndustrialist.money - (saleMeatOptional / 16)
                foodIndustrialist.consumption += saleMeatOptional / 16
                foodIndustrialist.money = paymentMeat
                paymentVegetablesAndFruits = foodIndustrialist.money - (saleVegetablesAndFruitsOptional / 8)
                foodIndustrialist.consumption += saleVegetablesAndFruitsOptional / 8
                foodIndustrialist.money = paymentVegetablesAndFruits
            } else {
                foodIndustrialist.money -= saleMeatOptional / 16 // оплата за Мясо
                foodIndustrialist.consumption += saleMeatOptional / 16
                foodIndustrialist.money -= saleVegetablesAndFruitsOptional / 8 // оплата за Овощи и фрукты
                foodIndustrialist.consumption += saleVegetablesAndFruitsOptional / 8
            }
            
            
            if let foodProduction = foodIndustrialist.products["Продукты"] { // изготовление Продуктов
                if foodProduction < 500 {
                    if meatOptional >= 500 && vegetablesAndFruitsOptional >= 500 {
                        var products = 500 * 2
                        let assotiatiosProducts = foodIndustrialist.products["Продукты"]
                        if let optionalProducts = assotiatiosProducts {
                            products += optionalProducts
                        }
                        foodIndustrialist.products["Продукты"] = products
                        
                        let assotiatiosMeat = foodIndustrialist.purchases["Мясо"] // списание Мяса
                        if let optionalMeat = assotiatiosMeat {
                            meatOptional = optionalMeat - 500
                        }
                        let assotiatiosVegetablesAndFruits = foodIndustrialist.purchases["Овощи и фрукты"] // списание Овощей и фруктов
                        if let optionalVegetablesAndFruits = assotiatiosVegetablesAndFruits {
                            vegetablesAndFruitsOptional = optionalVegetablesAndFruits - 500
                        }
                        foodIndustrialist.purchases["Мясо"] = meatOptional
                        foodIndustrialist.purchases["Овощи и фрукты"] = vegetablesAndFruitsOptional
                        
                    }
                    if meatOptional >= 300 && vegetablesAndFruitsOptional >= 300 {
                        var products = 300 * 2
                        let assotiatiosProducts = foodIndustrialist.products["Продукты"]
                        if let optionalProducts = assotiatiosProducts {
                            products += optionalProducts
                        }
                        foodIndustrialist.products["Продукты"] = products
                        
                        let assotiatiosMeat = foodIndustrialist.purchases["Мясо"] // списание Мяса
                        if let optionalMeat = assotiatiosMeat {
                            meatOptional = optionalMeat - 300
                        }
                        let assotiatiosVegetablesAndFruits = foodIndustrialist.purchases["Овощи и фрукты"] // списание Овощей и фруктов
                        if let optionalVegetablesAndFruits = assotiatiosVegetablesAndFruits {
                            vegetablesAndFruitsOptional = optionalVegetablesAndFruits - 300
                        }
                        foodIndustrialist.purchases["Мясо"] = meatOptional
                        foodIndustrialist.purchases["Овощи и фрукты"] = vegetablesAndFruitsOptional
                        
                    }
                    if meatOptional >= 200 && vegetablesAndFruitsOptional >= 200 {
                        var products = 200 * 2
                        let assotiatiosProducts = foodIndustrialist.products["Продукты"]
                        if let optionalProducts = assotiatiosProducts {
                            products += optionalProducts
                        }
                        foodIndustrialist.products["Продукты"] = products
                        
                        let assotiatiosMeat = foodIndustrialist.purchases["Мясо"] // списание Мяса
                        if let optionalMeat = assotiatiosMeat {
                            meatOptional = optionalMeat - 200
                        }
                        let assotiatiosVegetablesAndFruits = foodIndustrialist.purchases["Овощи и фрукты"] // списание Овощей и фруктов
                        if let optionalVegetablesAndFruits = assotiatiosVegetablesAndFruits {
                            vegetablesAndFruitsOptional = optionalVegetablesAndFruits - 200
                        }
                        foodIndustrialist.purchases["Мясо"] = meatOptional
                        foodIndustrialist.purchases["Овощи и фрукты"] = vegetablesAndFruitsOptional
                        
                    }
                    if meatOptional >= 100 && vegetablesAndFruitsOptional >= 100 {
                        var products = 100 * 2
                        let assotiatiosProducts = foodIndustrialist.products["Продукты"]
                        if let optionalProducts = assotiatiosProducts {
                            products += optionalProducts
                        }
                        foodIndustrialist.products["Продукты"] = products
                        
                        let assotiatiosMeat = foodIndustrialist.purchases["Мясо"] // списание Мяса
                        if let optionalMeat = assotiatiosMeat {
                            meatOptional = optionalMeat - 100
                        }
                        let assotiatiosVegetablesAndFruits = foodIndustrialist.purchases["Овощи и фрукты"] // списание Овощей и фруктов
                        if let optionalVegetablesAndFruits = assotiatiosVegetablesAndFruits {
                            vegetablesAndFruitsOptional = optionalVegetablesAndFruits - 100
                        }
                        foodIndustrialist.purchases["Мясо"] = meatOptional
                        foodIndustrialist.purchases["Овощи и фрукты"] = vegetablesAndFruitsOptional
                        
                    }
                    if meatOptional >= 50 && vegetablesAndFruitsOptional >= 50 {
                        var products = 50 * 2
                        let assotiatiosProducts = foodIndustrialist.products["Продукты"]
                        if let optionalProducts = assotiatiosProducts {
                            products += optionalProducts
                        }
                        foodIndustrialist.products["Продукты"] = products
                        
                        let assotiatiosMeat = foodIndustrialist.purchases["Мясо"] // списание Мяса
                        if let optionalMeat = assotiatiosMeat {
                            meatOptional = optionalMeat - 50
                        }
                        let assotiatiosVegetablesAndFruits = foodIndustrialist.purchases["Овощи и фрукты"] // списание Овощей и фруктов
                        if let optionalVegetablesAndFruits = assotiatiosVegetablesAndFruits {
                            vegetablesAndFruitsOptional = optionalVegetablesAndFruits - 50
                        }
                        foodIndustrialist.purchases["Мясо"] = meatOptional
                        foodIndustrialist.purchases["Овощи и фрукты"] = vegetablesAndFruitsOptional
                        
                    }
                }
            }
            foodIndustrialist.healt = Int.random(in: 20...100)
            foodIndustrialist.clothes = Int.random(in: 20...100)
            foodIndustrialist.food = Int.random(in: 20...100)
        }
        if human[3].money <= 0 && human[3].debt == 0 && human[1].products["Золотой Дублон"]! > -1000 {
            if foodIndustrialist.profession == "Чеканщик монет" { // Списание по кредиту
                var creditSum = 0
                let credit = foodIndustrialist.products["Золотой Дублон"]
                if let creditMoney = credit {
                    creditSum = creditMoney - 100
                }
                foodIndustrialist.products["Золотой Дублон"] = creditSum
            }
        }
        if foodIndustrialist.profession == "Скотовод" { // оплата Мяса
            foodIndustrialist.products["Мясо"] = 0 // обнуление Мясо
            foodIndustrialist.money += saleMeatOptional / 16 // оплата
            foodIndustrialist.income += saleMeatOptional / 16
        }
        if foodIndustrialist.profession == "Фермер" { // оплата Овощи и фрукты
            foodIndustrialist.products["Овощи и фрукты"] = 0 // обнуление Овощи и фрукты
            foodIndustrialist.money += saleVegetablesAndFruitsOptional / 8 // оплата
            foodIndustrialist.income += saleVegetablesAndFruitsOptional / 8
        }
        convertArrayHuman += [foodIndustrialist]
    }
    human = convertArrayHuman
}

// Покупка шерсти, оплата и производство одежды

func parameterManufactureOfWearingApparel(atwood human: inout [Person]) { // [10] Портной -----------------------------------
    var tailor: Person // Портной
    var woolOptional = 0 // Шерсть для портного
    var saleWoolOptional = 0 // начисление за Шерсть
    var paymentOfWool = 0 // списание за Шерсть
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        tailor = value
        if tailor.profession == "Скотовод" {
            let wool = tailor.products["Шерсть"] // подсчет Шерсти
            if let optional = wool {
                woolOptional = optional
                saleWoolOptional = woolOptional
            }
        }
    }
    for (_, value) in human.enumerated() {
        tailor = value
        if tailor.profession == "Портной" {
            let assotiatiosPurchases = tailor.purchases["Шерсть"] // начисление Шерсти
            if let optional = assotiatiosPurchases {
                woolOptional += optional
            }
            tailor.purchases["Шерсть"] = woolOptional
            
            if tailor.money <= 0 && tailor.debt == 0 && human[1].products["Золотой Дублон"]! > -1000 { // оплата за Шерсть в кредит
                tailor.credit += 50
                tailor.money += 50
                tailor.inDebt = true
                paymentOfWool = tailor.money - (saleWoolOptional / 16)
                tailor.consumption += saleWoolOptional / 16
                tailor.money = paymentOfWool
            } else {
                tailor.money -= saleWoolOptional / 16 // оплата за Шерсть
                tailor.consumption += saleWoolOptional / 16
            }
            
            if let textileProduction = tailor.products["Одежда"] { // изготовление одежды
                if textileProduction < 700 {
                    if woolOptional >= 500 {
                        var productTextile = 500 * 2
                        let assotiatiosTextile = tailor.products["Одежда"] // начисление одежды
                        if let optionalTextile = assotiatiosTextile {
                            productTextile += optionalTextile
                        }
                        tailor.products["Одежда"] = productTextile
                        
                        let assotiatiosWool = tailor.purchases["Шерсть"] // списание Шерсти
                        if let optionalWool = assotiatiosWool {
                            woolOptional = optionalWool - 500
                        }
                        tailor.purchases["Шерсть"] = woolOptional
                        
                    }
                    if woolOptional >= 300 {
                        var productTextile = 300 * 2
                        let assotiatiosTextile = tailor.products["Одежда"] // начисление одежды
                        if let optionalTextile = assotiatiosTextile {
                            productTextile += optionalTextile
                        }
                        tailor.products["Одежда"] = productTextile
                        
                        let assotiatiosWool = tailor.purchases["Шерсть"] // списание Шерсти
                        if let optionalWool = assotiatiosWool {
                            woolOptional = optionalWool - 300
                        }
                        tailor.purchases["Шерсть"] = woolOptional
                        
                    }
                    if woolOptional >= 200 {
                        var productTextile = 200 * 2
                        let assotiatiosTextile = tailor.products["Одежда"] // начисление одежды
                        if let optionalTextile = assotiatiosTextile {
                            productTextile += optionalTextile
                        }
                        tailor.products["Одежда"] = productTextile
                        
                        let assotiatiosWool = tailor.purchases["Шерсть"] // списание Шерсти
                        if let optionalWool = assotiatiosWool {
                            woolOptional = optionalWool - 200
                        }
                        tailor.purchases["Шерсть"] = woolOptional
                        
                    }
                    if woolOptional >= 100 {
                        var productTextile = 100 * 2
                        let assotiatiosTextile = tailor.products["Одежда"] // начисление одежды
                        if let optionalTextile = assotiatiosTextile {
                            productTextile += optionalTextile
                        }
                        tailor.products["Одежда"] = productTextile
                        
                        let assotiatiosWool = tailor.purchases["Шерсть"] // списание Шерсти
                        if let optionalWool = assotiatiosWool {
                            woolOptional = optionalWool - 100
                        }
                        tailor.purchases["Шерсть"] = woolOptional
                        
                    }
                }
            }
            tailor.healt = Int.random(in: 20...100)
            tailor.clothes = Int.random(in: 20...100)
            tailor.food = Int.random(in: 20...100)
        }
        if human[10].money <= 0 && human[10].debt == 0 && human[1].products["Золотой Дублон"]! > -1000 {
            if tailor.profession == "Чеканщик монет" { // Списание по кредиту
                var creditSum = 0
                let credit = tailor.products["Золотой Дублон"]
                if let creditMoney = credit {
                    creditSum = creditMoney - 50
                }
                tailor.products["Золотой Дублон"] = creditSum
            }
        }
        if tailor.profession == "Скотовод" { // оплата Шерсть
            tailor.products["Шерсть"] = 0 // обнуление Шерсть
            tailor.money += saleWoolOptional / 16 // оплата
            tailor.income += saleWoolOptional / 16
        }
        convertArrayHuman += [tailor]
    }
    human = convertArrayHuman
}

// Лесоруб

func parameterLogging(nielsen human: inout [Person]) { // [8] Лесоруб -----------------------------------
    var personLumberjack: Person // Лесоруб
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        personLumberjack = value
        if personLumberjack.profession == "Лесоруб" {
            let numberDownTheForest = (personLumberjack.healt + personLumberjack.food + personLumberjack.clothes) // сбор Лесозаготовок
            personLumberjack.products = ["Доски": numberDownTheForest]
            personLumberjack.healt = Int.random(in: 20...100)
            personLumberjack.clothes = Int.random(in: 20...100)
            personLumberjack.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [personLumberjack]
    }
    human = convertArrayHuman
}

// Покупка досок, оплата и ремонт домов

func parameterHomeRepairs(taggert human: inout [Person]) { // [5] Строитель -----------------------------------
    var builder: Person // Строитель
    var boardsOptional = 0 // Доски для строителя
    var saleBoardsOptional = 0 // начисление за Доски
    var paymentOfBoards = 0 // списание за Доски
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        builder = value
        if builder.profession == "Лесоруб" {
            let boards = builder.products["Доски"] // подсчет Доски
            if let optional = boards {
                boardsOptional = optional / 2
                saleBoardsOptional = boardsOptional
            }
        }
    }
    for (_, value) in human.enumerated() {
        builder = value
        if builder.profession == "Строитель" {
            let assotiatiosPurchases = builder.purchases["Доски"] // начисление Доски
            if let optional = assotiatiosPurchases {
                boardsOptional += optional
            }
            builder.purchases["Доски"] = boardsOptional
            
            if builder.money <= 0 && builder.debt == 0 && human[1].products["Золотой Дублон"]! > -1000 { // оплата за Доски в кредит
                builder.credit += 50
                builder.money += 50
                builder.inDebt = true
                paymentOfBoards = builder.money - (saleBoardsOptional / 6)
                builder.consumption += saleBoardsOptional / 6
                builder.money = paymentOfBoards
            } else {
                builder.money -= saleBoardsOptional / 6 // оплата за Доски
                builder.consumption += saleBoardsOptional / 6
            }
            
            let numberHouseFrame = (builder.healt + builder.food + builder.clothes + 100)
            builder.products = ["Ремонт Дома": numberHouseFrame]
            
            if let woodenProducts = builder.products["Ремонт Дома"] { // изготовление продукции
                if woodenProducts < 500 {
                    if boardsOptional >= 100 {
                        var productBoards = 100
                        let assotiatiosWooden = builder.products["Ремонт Дома"] // начисление Ремонт Дома
                        if let optionalWooden = assotiatiosWooden {
                            productBoards += optionalWooden
                        }
                        builder.products["Ремонт Дома"] = productBoards
                        
                        let assotiatiosBoards = builder.purchases["Доски"] // списание Доски
                        if let optionalBoards = assotiatiosBoards {
                            boardsOptional = optionalBoards - 100
                        }
                        builder.purchases["Доски"] = boardsOptional
                    }
                    if boardsOptional >= 100 {
                        var productBoards = 100
                        let assotiatiosWooden = builder.products["Ремонт Дома"] // начисление Ремонт Дома
                        if let optionalWooden = assotiatiosWooden {
                            productBoards += optionalWooden
                        }
                        builder.products["Ремонт Дома"] = productBoards
                        
                        let assotiatiosBoards = builder.purchases["Доски"] // списание Доски
                        if let optionalBoards = assotiatiosBoards {
                            boardsOptional = optionalBoards - 100
                        }
                        builder.purchases["Доски"] = boardsOptional
                    }
                }
            }
            builder.healt = Int.random(in: 20...100)
            builder.clothes = Int.random(in: 20...100)
            builder.food = Int.random(in: 20...100)
        }
        if human[5].money <= 0 && human[5].debt == 0 && human[1].products["Золотой Дублон"]! > -1000 {
            if builder.profession == "Чеканщик монет" { // Списание по кредиту
                var creditSum = 0
                let credit = builder.products["Золотой Дублон"]
                if let creditMoney = credit {
                    creditSum = creditMoney - 50
                }
                builder.products["Золотой Дублон"] = creditSum
            }
        }
        if builder.profession == "Лесоруб" { // оплата Доски
            builder.products["Доски"] = saleBoardsOptional // обнуление Доски
            builder.money += saleBoardsOptional / 6 // оплата
            builder.income += saleBoardsOptional / 6
        }
        convertArrayHuman += [builder]
    }
    human = convertArrayHuman
}

// Покупка досок, оплата и производство мебели

func parameterHomeFurniture(danagger human: inout [Person]) { // [11] Столяр -----------------------------------
    var carpenter: Person // Столяр
    var boardsOptional = 0 // Доски для Столяра
    var saleFurnitureOptional = 0 // начисление за Доски
    var paymentOfBoards = 0 // списание за Доски
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        carpenter = value
        if carpenter.profession == "Лесоруб" {
            let boards = carpenter.products["Доски"] // подсчет Доски
            if let optional = boards {
                boardsOptional = optional
                saleFurnitureOptional = boardsOptional
            }
        }
    }
    for (_, value) in human.enumerated() {
        carpenter = value
        if carpenter.profession == "Столяр" {
            let assotiatiosPurchases = carpenter.purchases["Доски"] // подсчет Доски Столяр
            if let optional = assotiatiosPurchases {
                boardsOptional += optional
            }
            carpenter.purchases["Доски"] = boardsOptional // начисление Доски
            
            if carpenter.money <= 0 && carpenter.debt == 0 && human[1].products["Золотой Дублон"]! > -1000 { // оплата за Доски в кредит
                carpenter.credit += 50
                carpenter.money += 50
                carpenter.inDebt = true
                paymentOfBoards = carpenter.money - (saleFurnitureOptional / 6)
                carpenter.consumption += saleFurnitureOptional / 6
                carpenter.money = paymentOfBoards
            } else {
                carpenter.money -= saleFurnitureOptional / 6 // оплата за Доски
                carpenter.consumption += saleFurnitureOptional / 6
            }
            
            let numberHomeFurniture = (carpenter.healt + carpenter.food + carpenter.clothes)
            carpenter.products = ["Мебель": numberHomeFurniture]
            
            if let furnitureProducts = carpenter.products["Мебель"] { // изготовление продукции
                if furnitureProducts < 500 {
                    if boardsOptional >= 200 {
                        var productBoards = 200
                        let assotiatiosFurniture = carpenter.products["Мебель"] // начисление Мебель
                        if let optionalFurniture = assotiatiosFurniture {
                            productBoards += optionalFurniture
                        }
                        carpenter.products["Мебель"] = productBoards
                        
                        let assotiatiosBoards = carpenter.purchases["Доски"] // списание Доски
                        if let optionalBoards = assotiatiosBoards {
                            saleFurnitureOptional = optionalBoards
                            boardsOptional = optionalBoards - 200
                        }
                        carpenter.purchases["Доски"] = boardsOptional
                    }
                    if boardsOptional >= 100 {
                        var productBoards = 100
                        let assotiatiosFurniture = carpenter.products["Мебель"] // начисление Мебель
                        if let optionalFurniture = assotiatiosFurniture {
                            productBoards += optionalFurniture
                        }
                        carpenter.products["Мебель"] = productBoards
                        
                        let assotiatiosBoards = carpenter.purchases["Доски"] // списание Доски
                        if let optionalBoards = assotiatiosBoards {
                            saleFurnitureOptional = optionalBoards
                            boardsOptional = optionalBoards - 100
                        }
                        carpenter.purchases["Доски"] = boardsOptional
                    }
                }
            }
            carpenter.healt = Int.random(in: 20...100)
            carpenter.clothes = Int.random(in: 20...100)
            carpenter.food = Int.random(in: 20...100)
        }
        if human[11].money <= 0 && human[11].debt == 0 && human[1].products["Золотой Дублон"]! > -1000 {
            if carpenter.profession == "Чеканщик монет" { // Списание по кредиту
                var creditSum = 0
                let credit = carpenter.products["Золотой Дублон"]
                if let creditMoney = credit {
                    creditSum = creditMoney - 50
                }
                carpenter.products["Золотой Дублон"] = creditSum
                saleFurnitureOptional
            }
        }
        if carpenter.profession == "Лесоруб" {
            carpenter.products["Доски"] = 0 // обнуление Доски
        }
        convertArrayHuman += [carpenter]
    }
    human = convertArrayHuman
    human[8].money += saleFurnitureOptional / 6 // оплата Доски
    human[8].income += saleFurnitureOptional / 6
}

// Рудокоп

func parameterIronOreMining(wyatt human: inout [Person]) { // [7] Рудокоп -----------------------------------
    var personMiner: Person // Рудокоп
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        personMiner = value
        if personMiner.profession == "Рудокоп" {
            let numberIronOre = (personMiner.healt + personMiner.food + personMiner.clothes) // сбор Железной руды
            personMiner.products = ["Железная руда": numberIronOre]
            personMiner.healt = Int.random(in: 20...100)
            personMiner.clothes = Int.random(in: 20...100)
            personMiner.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [personMiner]
    }
    human = convertArrayHuman
}

// Покупка Железной руды, оплата и производство Стальных изделий

func parameterProductionOfSteelProducts(stockton human: inout [Person]) { // [9] Металлург -----------------------------------
    var metallurgist: Person // Металлург
    var ironOreOptional = 0 // Руда для Металлурга
    var saleIronOreOptional = 0 // начисление за Руду
    var paymentIronOre = 0 // списание за Руду
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        metallurgist = value
        if metallurgist.profession == "Рудокоп" {
            let boards = metallurgist.products["Железная руда"] // подсчет Руда
            if let optional = boards {
                ironOreOptional = optional
                saleIronOreOptional = ironOreOptional
            }
        }
    }
    for (_, value) in human.enumerated() {
        metallurgist = value
        if metallurgist.profession == "Металлург" {
            let assotiatiosPurchases = metallurgist.purchases["Железная руда"] // начисление Руда
            if let optional = assotiatiosPurchases {
                ironOreOptional += optional
            }
            metallurgist.purchases["Железная руда"] = ironOreOptional
            
            if metallurgist.money <= 0 && metallurgist.debt == 0 && human[1].products["Золотой Дублон"]! > -1000 { // оплата за Руду в кредит
                metallurgist.credit += 50
                metallurgist.money += 50
                metallurgist.inDebt = true
                paymentIronOre = metallurgist.money - (saleIronOreOptional / 6)
                metallurgist.consumption += saleIronOreOptional / 6
                metallurgist.money = paymentIronOre
            } else {
                metallurgist.money -= saleIronOreOptional / 6 // оплата за Руду
                metallurgist.consumption += saleIronOreOptional / 6
            }
            let numberSteel = (metallurgist.healt + metallurgist.food + metallurgist.clothes)
            metallurgist.products = ["Стальные изделия": numberSteel]
            
            if let steelProducts = metallurgist.products["Стальные изделия"] { // изготовление продукции
                if steelProducts < 500 {
                    if ironOreOptional >= 200 {
                        var productSteel = 200
                        let assotiatiosSteel = metallurgist.products["Стальные изделия"] // начисление Стальные изделия
                        if let optionalSteel = assotiatiosSteel {
                            productSteel += optionalSteel
                        }
                        metallurgist.products["Стальные изделия"] = productSteel
                        
                        let assotiatiosIronOre = metallurgist.purchases["Железная руда"] // списание Железная руда
                        if let optionalIronOre = assotiatiosIronOre {
                            ironOreOptional = optionalIronOre - 200
                        }
                        metallurgist.purchases["Железная руда"] = ironOreOptional
                    }
                    if ironOreOptional >= 100 {
                        var productSteel = 100
                        let assotiatiosSteel = metallurgist.products["Стальные изделия"] // начисление Стальные изделия
                        if let optionalSteel = assotiatiosSteel {
                            productSteel += optionalSteel
                        }
                        metallurgist.products["Стальные изделия"] = productSteel
                        
                        let assotiatiosIronOre = metallurgist.purchases["Железная руда"] // списание Железная руда
                        if let optionalIronOre = assotiatiosIronOre {
                            ironOreOptional = optionalIronOre - 100
                        }
                        metallurgist.purchases["Железная руда"] = ironOreOptional
                    }
                }
            }
            metallurgist.healt = Int.random(in: 20...100)
            metallurgist.clothes = Int.random(in: 20...100)
            metallurgist.food = Int.random(in: 20...100)
        }
        if human[9].money <= 0 && human[9].debt == 0 && human[1].products["Золотой Дублон"]! > -1000 {
            if metallurgist.profession == "Чеканщик монет" { // Списание по кредиту
                var creditSum = 0
                let credit = metallurgist.products["Золотой Дублон"]
                if let creditMoney = credit {
                    creditSum = creditMoney - 50
                }
                metallurgist.products["Золотой Дублон"] = creditSum
            }
        }
        if metallurgist.profession == "Рудокоп" {
            metallurgist.products["Железная руда"] = 0 // обнуление Железная руда
        }
        convertArrayHuman += [metallurgist]
    }
    human = convertArrayHuman
    human[7].money += saleIronOreOptional / 6 // оплата Железная руда
    human[7].income += saleIronOreOptional / 6
}

// Электрик

func parameterAnElectrician(golt human: inout [Person]) { // [0] Электрик -----------------------------------
    var electrician: Person // Электрик
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        electrician = value
        if electrician.profession == "Электрик" {
            let numberElectrician = (electrician.healt + electrician.food + electrician.clothes) // параметры Ремонт электрооборудования
            electrician.products = ["Ремонт электрооборудования": numberElectrician]
            electrician.healt = Int.random(in: 20...100)
            electrician.clothes = Int.random(in: 20...100)
            electrician.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [electrician]
    }
    human = convertArrayHuman
}

// Гончар

func parameterPotter(exton human: inout [Person]) { // [2] Гончар -----------------------------------
    var potter: Person // Гончар
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        potter = value
        if potter.profession == "Гончар" {
            let numberPotter = (potter.healt + potter.food + potter.clothes + 50) // производство Посуды
            potter.products = ["Посуда": numberPotter]
            potter.healt = Int.random(in: 20...100)
            potter.clothes = Int.random(in: 20...100)
            potter.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [potter]
    }
    human = convertArrayHuman
}

// Сантехник

func parameterPlumber(macknamara human: inout [Person]) { // [4] Сантехник -----------------------------------
    var plumber: Person // Сантехник
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        plumber = value
        if plumber.profession == "Сантехник" {
            let numberPlumber = (plumber.healt + plumber.food + plumber.clothes) // параметры Ремонт Водопровода
            plumber.products = ["Ремонт Водопровода": numberPlumber]
            plumber.healt = Int.random(in: 20...100)
            plumber.clothes = Int.random(in: 20...100)
            plumber.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [plumber]
    }
    human = convertArrayHuman
}

// Врач

func parameterDoctor(marsh human: inout [Person]) { // [13] Врач -----------------------------------
    var doctor: Person // Врач
    var convertArrayHuman: [Person] = []
    for (_, value) in human.enumerated() {
        doctor = value
        if doctor.profession == "Врач" {
            let numberDoctor = (doctor.healt + doctor.food + doctor.clothes) // параметры Медицинские услуги
            doctor.products = ["Медицинские услуги": numberDoctor]
            doctor.healt = Int.random(in: 20...100)
            doctor.clothes = Int.random(in: 20...100)
            doctor.food = Int.random(in: 20...100)
        }
        convertArrayHuman += [doctor]
    }
    human = convertArrayHuman
}

//MARK: Потребительские услуги ----------------------------------------------------------------------

// Продажа продуктов -----------------------------------

func sellingProducts(dAnconia human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.food <= 99 {
            let food = person.food
            let pay = 100 - food
            person.food = 100
            person.money -= Int(Double(pay) / 4.3)
            person.consumption += Int(Double(pay) / 4.3)
            sumPay += Int(Double(pay) / 4.3)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Пищевой промышленник" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Продукты"]
            if var numberProducts = products {
                numberProducts -= sumProducts
                sumProducts = numberProducts
            }
            person.products["Продукты"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Лечение Здоровья -----------------------------------

func healthTreatment(marsh human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.healt <= 99 {
            let product = person.healt
            let pay = 100 - product
            person.healt = 100
            person.money -= Int(Double(pay) / 10.4)
            person.consumption += Int(Double(pay) / 10.4)
            sumPay += Int(Double(pay) / 10.4)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Врач" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Медицинские услуги"]
            if var numberProducts = products {
                numberProducts -= sumProducts / 2
                sumProducts = numberProducts
            }
            person.products["Медицинские услуги"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Продажа Одежды -----------------------------------

func clothesSale(atwood human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.clothes <= 90 {
            let product = person.clothes
            let pay = 100 - product
            person.clothes = 100
            person.money -= Int(Double(pay) / 7.1)
            person.consumption += Int(Double(pay) / 7.1)
            sumPay += Int(Double(pay) / 7.1)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Портной" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Одежда"]
            if var numberProducts = products {
                numberProducts -= sumProducts
                sumProducts = numberProducts
            }
            person.products["Одежда"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Продажа Мебели -----------------------------------

func saleOfFurniture(danagger human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.furniture <= 90 {
            let product = person.furniture
            let pay = 100 - product
            person.furniture = 100
            person.money -= Int(Double(pay) / 7.1)
            person.consumption += Int(Double(pay) / 7.1)
            sumPay += Int(Double(pay) / 7.1)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Столяр" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Мебель"]
            if var numberProducts = products {
                numberProducts -= sumProducts
                sumProducts = numberProducts
            }
            person.products["Мебель"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Ремонт Дома -----------------------------------

func homeRepairs(taggert human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.homeCarcas <= 89 {
            let product = person.homeCarcas
            let pay = 90 - product
            person.homeCarcas = 90
            person.money -= Int(Double(pay) / 7)
            person.consumption += Int(Double(pay) / 7)
            sumPay += Int(Double(pay) / 7)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Строитель" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Ремонт Дома"]
            if var numberProducts = products {
                numberProducts -= sumProducts
                sumProducts = numberProducts
            }
            person.products["Ремонт Дома"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Ремонт Водоснабжения -----------------------------------

func waterSupplyRepair(macknamara human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.homeWater <= 89 {
            let product = person.homeWater
            let pay = 90 - product
            person.homeWater = 90
            person.money -= Int(Double(pay) / 10.4)
            person.consumption += Int(Double(pay) / 10.4)
            sumPay += Int(Double(pay) / 10.4)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Сантехник" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Ремонт Водопровода"]
            if var numberProducts = products {
                numberProducts -= sumProducts / 2
                sumProducts = numberProducts
            }
            person.products["Ремонт Водопровода"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Ремонт Электроэнергии -----------------------------------

func electricityRepair(golt human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.homeElektro <= 89 {
            let product = person.homeElektro
            let pay = 90 - product
            person.homeElektro = 90
            person.money -= Int(Double(pay) / 10.4)
            person.consumption += Int(Double(pay) / 10.4)
            sumPay += Int(Double(pay) / 10.4)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Электрик" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Ремонт электрооборудования"]
            if var numberProducts = products {
                numberProducts -= sumProducts / 2
                sumProducts = numberProducts
            }
            person.products["Ремонт электрооборудования"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Продажа Стальных изделий -----------------------------------

func saleOfSteelProducts(stockton human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.homeElektro <= 90 || person.homeWater <= 90 || person.homeCarcas <= 90 {
            var pay = 0
            let oneHundred = 100
            if person.homeElektro <= 90 {
                let product = person.homeElektro
                pay = oneHundred - product
                person.homeElektro = 100
            }
            if person.homeWater <= 90 {
                let productOne = person.homeWater
                pay += oneHundred - productOne
                person.homeWater = 100
            }
            if person.homeCarcas <= 90 {
                let productTwo = person.homeCarcas
                pay += oneHundred - productTwo
                person.homeCarcas = 100
            }
            person.money -= Int(Double(pay) / 4)
            person.consumption += Int(Double(pay) / 4)
            sumPay += Int(Double(pay) / 4)
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Металлург" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Стальные изделия"]
            if var numberProducts = products {
                numberProducts -= sumProducts
                sumProducts = numberProducts
            }
            person.products["Стальные изделия"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Продажа Посуды -----------------------------------

func saleTableware(exton human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var productsData: [Person] = []
    var sumPay = 0
    var sumProducts = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.food <= 100 || person.healt <= 100 {
            var pay = 0
            let oneHundred = 110
            if person.food <= 100 {
                let product = person.food
                pay = oneHundred - product
                person.food = 110
            }
            if person.healt <= 100 {
                let product = person.healt
                pay += oneHundred - product
                person.healt = 110
            }
            person.money -= pay / 5
            person.consumption += pay / 5
            sumPay += pay / 5
            sumProducts += pay
        }
        productsData += [person]
    }
    sumPay
    sumProducts
    for (_, value) in productsData.enumerated(){
        person = value
        if person.profession == "Гончар" {
            person.money += sumPay
            person.income += sumPay
            let products = person.products["Посуда"]
            if var numberProducts = products {
                numberProducts -= sumProducts
                sumProducts = numberProducts
            }
            person.products["Посуда"] = sumProducts
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
    credit(human: &human)
}

// Выплата по Кредиту, Долгу -----------------------------------

func interestOnTheLoan(malligan human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    var creditData: [Person] = []
    var sumCredit = 0
    let sumPercent = 8
    var indicator = 0
    for (_, value) in human.enumerated() {
        person = value
        if person.credit > 0 {
            creditSum += 1
            let payCredit = 5
            person.money -= payCredit
            person.money -= sumPercent
            person.consumption += payCredit + sumPercent
            person.credit -= payCredit
            sumCredit += payCredit
            indicator += 1
        }
        if person.debt <= -5 || person.debt >= 5 {
            if person.debt <= -5 {
                person.debt += 5
                person.money += 5
            }
            if person.debt >= 5 {
                person.debt -= 5
                person.money -= 5
            }
        }
        creditData += [person]
    }
    sumCredit
    indicator
    for (_, value) in creditData.enumerated(){
        person = value
        if person.profession == "Чеканщик монет" {
            let valueCredit = person.products["Золотой Дублон"]
            person.products["Золотой Дублон"] = (valueCredit! + sumCredit)
            person.money += sumPercent * indicator
            person.income += sumPercent * indicator
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
}

// Сброс Параметров Дома -----------------------------------

func resetHomeSettings(human: inout [Person]) {
    var convertArrayHuman: [Person] = []
    var person: Person
    for (_, value) in human.enumerated() {
        person = value
        if person.homeCarcas > 0 && person.homeWater > 0 && person.homeElektro > 0 {
            person.furniture = Int.random(in: 20...100)
            person.homeCarcas = Int.random(in: 10...89)
            person.homeWater = Int.random(in: 10...89)
            person.homeElektro = Int.random(in: 10...89)
        }
        convertArrayHuman += [person]
    }
    human = convertArrayHuman
}

// ----------------------------------------------------------------------
var humanVallue = [golt, malligan, exton, dAnconia, macknamara, taggert, daneskold, wyatt, nielsen, stockton, atwood, danagger, hammond, marsh, kellogg]
// ----------------------------------------------------------------------

// Жизненый Цикл -----------------------------------

var time = 0

while time != 400 {
    time += 1
    //-----------------------------------
    runCycle(human: &humanVallue) // Запуск Цикла
    //-----------------------------------
    parameterInDebt(human: &humanVallue) // Долг
    //-----------------------------------
    //MARK: Профессии и производство Продукции
    // ----------------------------------------------------------------------
    parameterGoldDigger(daneskold: &humanVallue) // Золотоискатель
    // ----------------------------------------------------------------------
    parameterSaleOfGoldNuggets(malligan: &humanVallue) // Чеканщик монет
    // ----------------------------------------------------------------------
    parameterFarming(hammond: &humanVallue) // Фермер
    // ----------------------------------------------------------------------
    parameterCattleBreeding(kellogg: &humanVallue) // Скотовод
    // ----------------------------------------------------------------------
    parameterProductManufacturing(dAnconia: &humanVallue) // Пищевой промышленник
    // ----------------------------------------------------------------------
    parameterManufactureOfWearingApparel(atwood: &humanVallue) // Портной
    // ----------------------------------------------------------------------
    parameterLogging(nielsen: &humanVallue) // Лесоруб
    // ----------------------------------------------------------------------
    parameterHomeRepairs(taggert: &humanVallue) // Строитель
    // ----------------------------------------------------------------------
    parameterHomeFurniture(danagger: &humanVallue) // Столяр
    // ----------------------------------------------------------------------
    parameterIronOreMining(wyatt: &humanVallue) // Рудокоп
    // ----------------------------------------------------------------------
    parameterProductionOfSteelProducts(stockton: &humanVallue) // Металлург
    // ----------------------------------------------------------------------
    parameterAnElectrician(golt: &humanVallue) // Электрик
    // ----------------------------------------------------------------------
    parameterPotter(exton: &humanVallue) // Гончар
    // ----------------------------------------------------------------------
    parameterPlumber(macknamara: &humanVallue) // Сантехник
    // ----------------------------------------------------------------------
    parameterDoctor(marsh: &humanVallue) // Врач
    // ----------------------------------------------------------------------
    
    //MARK: Потребительские услуги
    // ----------------------------------------------------------------------
    sellingProducts(dAnconia: &humanVallue) // Продажа продуктов
    // ----------------------------------------------------------------------
    healthTreatment(marsh: &humanVallue) // Лечение Здоровья
    // ----------------------------------------------------------------------
    clothesSale(atwood: &humanVallue) // Продажа Одежды
    // ----------------------------------------------------------------------
    saleOfFurniture(danagger: &humanVallue) // Продажа Мебели
    // ----------------------------------------------------------------------
    homeRepairs(taggert: &humanVallue) // Ремонт Дома
    // ----------------------------------------------------------------------
    waterSupplyRepair(macknamara: &humanVallue) // Ремонт Водоснабжения
    // ----------------------------------------------------------------------
    electricityRepair(golt: &humanVallue) // Ремонт Электроэнергии
    // ----------------------------------------------------------------------
    saleOfSteelProducts(stockton: &humanVallue) // Продажа Стальных изделий
    // ----------------------------------------------------------------------
    saleTableware(exton: &humanVallue) // Продажа Посуды
    // ----------------------------------------------------------------------
    interestOnTheLoan(malligan: &humanVallue) // Проценты по Кредиту
    // ----------------------------------------------------------------------
    resetHomeSettings(human: &humanVallue) // Сброс Параметров Дома
    // ----------------------------------------------------------------------
    
    print("Цикл номер \(time)")
    print("Кредит взяли \(creditSum), Выплатили \(15 - creditSum)")
    print("Профессии и производство Продукции")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[6].profession)")
    print("\(humanVallue[6].name), деньги \(humanVallue[6].money), кредит \(humanVallue[6].credit), сырьё \(humanVallue[6].purchases), продукция \(humanVallue[6].products), еда \(humanVallue[6].food), здоровье \(humanVallue[6].healt), одежда \(humanVallue[6].clothes), уют \(humanVallue[6].furniture), состояние дома \(humanVallue[6].homeCarcas), водоснабжение \(humanVallue[6].homeWater), электроэнергия \(humanVallue[6].homeElektro), доход \(humanVallue[6].income), расход \(humanVallue[6].consumption), долг \(humanVallue[6].debt),\(humanVallue[6].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[1].profession)")
    print("\(humanVallue[1].name), деньги \(humanVallue[1].money), кредит \(humanVallue[1].credit), сырьё \(humanVallue[1].purchases), продукция \(humanVallue[1].products), еда \(humanVallue[1].food), здоровье \(humanVallue[1].healt), одежда \(humanVallue[1].clothes), уют \(humanVallue[1].furniture), состояние дома \(humanVallue[1].homeCarcas), водоснабжение \(humanVallue[1].homeWater), электроэнергия \(humanVallue[1].homeElektro), доход \(humanVallue[1].income), расход \(humanVallue[1].consumption), долг \(humanVallue[1].debt),\(humanVallue[1].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[12].profession)")
    print("\(humanVallue[12].name), деньги \(humanVallue[12].money), кредит \(humanVallue[12].credit), сырьё \(humanVallue[12].purchases), продукция \(humanVallue[12].products), еда \(humanVallue[12].food), здоровье \(humanVallue[12].healt), одежда \(humanVallue[12].clothes), уют \(humanVallue[12].furniture), состояние дома \(humanVallue[12].homeCarcas), водоснабжение \(humanVallue[12].homeWater), электроэнергия \(humanVallue[12].homeElektro), доход \(humanVallue[12].income), расход \(humanVallue[12].consumption), долг \(humanVallue[12].debt),\(humanVallue[12].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[14].profession)")
    print("\(humanVallue[14].name), деньги \(humanVallue[14].money), кредит \(humanVallue[14].credit), сырьё \(humanVallue[14].purchases), продукция \(humanVallue[14].products), еда \(humanVallue[14].food), здоровье \(humanVallue[14].healt), одежда \(humanVallue[14].clothes), уют \(humanVallue[14].furniture), состояние дома \(humanVallue[14].homeCarcas), водоснабжение \(humanVallue[14].homeWater), электроэнергия \(humanVallue[14].homeElektro), доход \(humanVallue[14].income), расход \(humanVallue[14].consumption), долг \(humanVallue[14].debt),\(humanVallue[14].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[3].profession)")
    print("\(humanVallue[3].name), деньги \(humanVallue[3].money), кредит \(humanVallue[3].credit), сырьё \(humanVallue[3].purchases), продукция \(humanVallue[3].products), еда \(humanVallue[3].food), здоровье \(humanVallue[3].healt), одежда \(humanVallue[3].clothes), уют \(humanVallue[3].furniture), состояние дома \(humanVallue[3].homeCarcas), водоснабжение \(humanVallue[3].homeWater), электроэнергия \(humanVallue[3].homeElektro), доход \(humanVallue[3].income), расход \(humanVallue[3].consumption), долг \(humanVallue[3].debt),\(humanVallue[3].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[10].profession)")
    print("\(humanVallue[10].name), деньги \(humanVallue[10].money), кредит \(humanVallue[10].credit), сырьё \(humanVallue[10].purchases), продукция \(humanVallue[10].products), еда \(humanVallue[10].food), здоровье \(humanVallue[10].healt), одежда \(humanVallue[10].clothes), уют \(humanVallue[10].furniture), состояние дома \(humanVallue[10].homeCarcas), водоснабжение \(humanVallue[10].homeWater), электроэнергия \(humanVallue[10].homeElektro), доход \(humanVallue[10].income), расход \(humanVallue[10].consumption), долг \(humanVallue[10].debt),\(humanVallue[10].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[8].profession)")
    print("\(humanVallue[8].name), деньги \(humanVallue[8].money), кредит \(humanVallue[8].credit), сырьё \(humanVallue[8].purchases), продукция \(humanVallue[8].products), еда \(humanVallue[8].food), здоровье \(humanVallue[8].healt), одежда \(humanVallue[8].clothes), уют \(humanVallue[8].furniture), состояние дома \(humanVallue[8].homeCarcas), водоснабжение \(humanVallue[8].homeWater), электроэнергия \(humanVallue[8].homeElektro), доход \(humanVallue[8].income), расход \(humanVallue[8].consumption), долг \(humanVallue[8].debt),\(humanVallue[8].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[5].profession)")
    print("\(humanVallue[5].name), деньги \(humanVallue[5].money), кредит \(humanVallue[5].credit), сырьё \(humanVallue[5].purchases), продукция \(humanVallue[5].products), еда \(humanVallue[5].food), здоровье \(humanVallue[5].healt), одежда \(humanVallue[5].clothes), уют \(humanVallue[5].furniture), состояние дома \(humanVallue[5].homeCarcas), водоснабжение \(humanVallue[5].homeWater), электроэнергия \(humanVallue[5].homeElektro), доход \(humanVallue[5].income), расход \(humanVallue[5].consumption), долг \(humanVallue[5].debt),\(humanVallue[5].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[11].profession)")
    print("\(humanVallue[11].name), деньги \(humanVallue[11].money), кредит \(humanVallue[11].credit), сырьё \(humanVallue[11].purchases), продукция \(humanVallue[11].products), еда \(humanVallue[11].food), здоровье \(humanVallue[11].healt), одежда \(humanVallue[11].clothes), уют \(humanVallue[11].furniture), состояние дома \(humanVallue[11].homeCarcas), водоснабжение \(humanVallue[11].homeWater), электроэнергия \(humanVallue[11].homeElektro), доход \(humanVallue[11].income), расход \(humanVallue[11].consumption), долг \(humanVallue[11].debt),\(humanVallue[11].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[7].profession)")
    print("\(humanVallue[7].name), деньги \(humanVallue[7].money), кредит \(humanVallue[7].credit), сырьё \(humanVallue[7].purchases), продукция \(humanVallue[7].products), еда \(humanVallue[7].food), здоровье \(humanVallue[7].healt), одежда \(humanVallue[7].clothes), уют \(humanVallue[7].furniture), состояние дома \(humanVallue[7].homeCarcas), водоснабжение \(humanVallue[7].homeWater), электроэнергия \(humanVallue[7].homeElektro), доход \(humanVallue[7].income), расход \(humanVallue[7].consumption), долг \(humanVallue[7].debt),\(humanVallue[7].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[9].profession)")
    print("\(humanVallue[9].name), деньги \(humanVallue[9].money), кредит \(humanVallue[9].credit), сырьё \(humanVallue[9].purchases), продукция \(humanVallue[9].products), еда \(humanVallue[9].food), здоровье \(humanVallue[9].healt), одежда \(humanVallue[9].clothes), уют \(humanVallue[9].furniture), состояние дома \(humanVallue[9].homeCarcas), водоснабжение \(humanVallue[9].homeWater), электроэнергия \(humanVallue[9].homeElektro), доход \(humanVallue[9].income), расход \(humanVallue[9].consumption), долг \(humanVallue[9].debt),\(humanVallue[9].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[0].profession)")
    print("\(humanVallue[0].name), деньги \(humanVallue[0].money), кредит \(humanVallue[0].credit), сырьё \(humanVallue[0].purchases), продукция \(humanVallue[0].products), еда \(humanVallue[0].food), здоровье \(humanVallue[0].healt), одежда \(humanVallue[0].clothes), уют \(humanVallue[0].furniture), состояние дома \(humanVallue[0].homeCarcas), водоснабжение \(humanVallue[0].homeWater), электроэнергия \(humanVallue[0].homeElektro), доход \(humanVallue[0].income), расход \(humanVallue[0].consumption), долг \(humanVallue[0].debt),\(humanVallue[0].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[2].profession)")
    print("\(humanVallue[2].name), деньги \(humanVallue[2].money), кредит \(humanVallue[2].credit), сырьё \(humanVallue[2].purchases), продукция \(humanVallue[2].products), еда \(humanVallue[2].food), здоровье \(humanVallue[2].healt), одежда \(humanVallue[2].clothes), уют \(humanVallue[2].furniture), состояние дома \(humanVallue[2].homeCarcas), водоснабжение \(humanVallue[2].homeWater), электроэнергия \(humanVallue[2].homeElektro), доход \(humanVallue[2].income), расход \(humanVallue[2].consumption), долг \(humanVallue[2].debt),\(humanVallue[2].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[4].profession)")
    print("\(humanVallue[4].name), деньги \(humanVallue[4].money), кредит \(humanVallue[4].credit), сырьё \(humanVallue[4].purchases), продукция \(humanVallue[4].products), еда \(humanVallue[4].food), здоровье \(humanVallue[4].healt), одежда \(humanVallue[4].clothes), уют \(humanVallue[4].furniture), состояние дома \(humanVallue[4].homeCarcas), водоснабжение \(humanVallue[4].homeWater), электроэнергия \(humanVallue[4].homeElektro), доход \(humanVallue[4].income), расход \(humanVallue[4].consumption), долг \(humanVallue[4].debt),\(humanVallue[4].inDebt)")
    print("// ----------------------------------------------------------------------")
    print("профессия \(humanVallue[13].profession)")
    print("\(humanVallue[13].name), деньги \(humanVallue[13].money), кредит \(humanVallue[13].credit), сырьё \(humanVallue[13].purchases), продукция \(humanVallue[13].products), еда \(humanVallue[13].food), здоровье \(humanVallue[13].healt), одежда \(humanVallue[13].clothes), уют \(humanVallue[13].furniture), состояние дома \(humanVallue[13].homeCarcas), водоснабжение \(humanVallue[13].homeWater), электроэнергия \(humanVallue[13].homeElektro), доход \(humanVallue[13].income), расход \(humanVallue[13].consumption), долг \(humanVallue[13].debt),\(humanVallue[13].inDebt)")
    print("// ----------------------------------------------------------------------")
    
}


print("Конец Цикла")
//print("Цикл номер \(time)")
//print("// ------------------------------------")
//print("\(humanVallue[0].name), деньги \(humanVallue[0].money), кредит \(humanVallue[0].credit), продукция \(humanVallue[0].products), еда \(humanVallue[0].food), здоровье \(humanVallue[0].healt), одежда \(humanVallue[0].clothes), уют \(humanVallue[0].furniture), состояние дома \(humanVallue[0].homeCarcas), водоснабжение \(humanVallue[0].homeWater), электроэнергия \(humanVallue[0].homeElektro)")
//print("\(humanVallue[1].name), деньги \(humanVallue[1].money), кредит \(humanVallue[1].credit), продукция \(humanVallue[1].products), еда \(humanVallue[1].food), здоровье \(humanVallue[1].healt), одежда \(humanVallue[1].clothes), уют \(humanVallue[1].furniture), состояние дома \(humanVallue[1].homeCarcas), водоснабжение \(humanVallue[1].homeWater), электроэнергия \(humanVallue[1].homeElektro)")
//print("\(humanVallue[2].name), деньги \(humanVallue[2].money), кредит \(humanVallue[2].credit), продукция \(humanVallue[2].products), еда \(humanVallue[2].food), здоровье \(humanVallue[2].healt), одежда \(humanVallue[2].clothes), уют \(humanVallue[2].furniture), состояние дома \(humanVallue[2].homeCarcas), водоснабжение \(humanVallue[2].homeWater), электроэнергия \(humanVallue[2].homeElektro)")
//print("\(humanVallue[3].name), деньги \(humanVallue[3].money), кредит \(humanVallue[3].credit), продукция \(humanVallue[3].products), еда \(humanVallue[3].food), здоровье \(humanVallue[3].healt), одежда \(humanVallue[3].clothes), уют \(humanVallue[3].furniture), состояние дома \(humanVallue[3].homeCarcas), водоснабжение \(humanVallue[3].homeWater), электроэнергия \(humanVallue[3].homeElektro)")
//print("\(humanVallue[4].name), деньги \(humanVallue[4].money), кредит \(humanVallue[4].credit), продукция \(humanVallue[4].products), еда \(humanVallue[4].food), здоровье \(humanVallue[4].healt), одежда \(humanVallue[4].clothes), уют \(humanVallue[4].furniture), состояние дома \(humanVallue[4].homeCarcas), водоснабжение \(humanVallue[4].homeWater), электроэнергия \(humanVallue[4].homeElektro)")
//print("\(humanVallue[5].name), деньги \(humanVallue[5].money), кредит \(humanVallue[5].credit), продукция \(humanVallue[5].products), еда \(humanVallue[5].food), здоровье \(humanVallue[5].healt), одежда \(humanVallue[5].clothes), уют \(humanVallue[5].furniture), состояние дома \(humanVallue[5].homeCarcas), водоснабжение \(humanVallue[5].homeWater), электроэнергия \(humanVallue[5].homeElektro)")
//print("\(humanVallue[6].name), деньги \(humanVallue[6].money), кредит \(humanVallue[6].credit), продукция \(humanVallue[6].products), еда \(humanVallue[6].food), здоровье \(humanVallue[6].healt), одежда \(humanVallue[6].clothes), уют \(humanVallue[6].furniture), состояние дома \(humanVallue[6].homeCarcas), водоснабжение \(humanVallue[6].homeWater), электроэнергия \(humanVallue[6].homeElektro)")
//print("\(humanVallue[7].name), деньги \(humanVallue[7].money), кредит \(humanVallue[7].credit), продукция \(humanVallue[7].products), еда \(humanVallue[7].food), здоровье \(humanVallue[7].healt), одежда \(humanVallue[7].clothes), уют \(humanVallue[7].furniture), состояние дома \(humanVallue[7].homeCarcas), водоснабжение \(humanVallue[7].homeWater), электроэнергия \(humanVallue[7].homeElektro)")
//print("\(humanVallue[8].name), деньги \(humanVallue[8].money), кредит \(humanVallue[8].credit), продукция \(humanVallue[8].products), еда \(humanVallue[8].food), здоровье \(humanVallue[8].healt), одежда \(humanVallue[8].clothes), уют \(humanVallue[8].furniture), состояние дома \(humanVallue[8].homeCarcas), водоснабжение \(humanVallue[8].homeWater), электроэнергия \(humanVallue[8].homeElektro)")
//print("\(humanVallue[9].name), деньги \(humanVallue[9].money), кредит \(humanVallue[9].credit), продукция \(humanVallue[9].products), еда \(humanVallue[9].food), здоровье \(humanVallue[9].healt), одежда \(humanVallue[9].clothes), уют \(humanVallue[9].furniture), состояние дома \(humanVallue[9].homeCarcas), водоснабжение \(humanVallue[9].homeWater), электроэнергия \(humanVallue[9].homeElektro)")
//print("\(humanVallue[10].name), деньги \(humanVallue[10].money), кредит \(humanVallue[10].credit), продукция \(humanVallue[10].products), еда \(humanVallue[10].food), здоровье \(humanVallue[10].healt), одежда \(humanVallue[10].clothes), уют \(humanVallue[10].furniture), состояние дома \(humanVallue[10].homeCarcas), водоснабжение \(humanVallue[10].homeWater), электроэнергия \(humanVallue[10].homeElektro)")
//print("\(humanVallue[11].name), деньги \(humanVallue[11].money), кредит \(humanVallue[11].credit), продукция \(humanVallue[11].products), еда \(humanVallue[11].food), здоровье \(humanVallue[11].healt), одежда \(humanVallue[11].clothes), уют \(humanVallue[11].furniture), состояние дома \(humanVallue[11].homeCarcas), водоснабжение \(humanVallue[11].homeWater), электроэнергия \(humanVallue[11].homeElektro)")
//print("\(humanVallue[12].name), деньги \(humanVallue[12].money), кредит \(humanVallue[12].credit), продукция \(humanVallue[12].products), еда \(humanVallue[12].food), здоровье \(humanVallue[12].healt), одежда \(humanVallue[12].clothes), уют \(humanVallue[12].furniture), состояние дома \(humanVallue[12].homeCarcas), водоснабжение \(humanVallue[12].homeWater), электроэнергия \(humanVallue[12].homeElektro)")
//print("\(humanVallue[13].name), деньги \(humanVallue[13].money), кредит \(humanVallue[13].credit), продукция \(humanVallue[13].products), еда \(humanVallue[13].food), здоровье \(humanVallue[13].healt), одежда \(humanVallue[13].clothes), уют \(humanVallue[13].furniture), состояние дома \(humanVallue[13].homeCarcas), водоснабжение \(humanVallue[13].homeWater), электроэнергия \(humanVallue[13].homeElektro)")
//print("\(humanVallue[14].name), деньги \(humanVallue[14].money), кредит \(humanVallue[14].credit), продукция \(humanVallue[14].products), еда \(humanVallue[14].food), здоровье \(humanVallue[14].healt), одежда \(humanVallue[14].clothes), уют \(humanVallue[14].furniture), состояние дома \(humanVallue[14].homeCarcas), водоснабжение \(humanVallue[14].homeWater), электроэнергия \(humanVallue[14].homeElektro)")

