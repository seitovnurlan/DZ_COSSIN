// Создание 4 функции для калькулятора ( + - / *) с двумя операндами.
//Доработать калькулятор с прошлого урока с помощью условных операторов и соединить всё с readLine (например сначала спрашиваете число, после чего “Какое действие совершить?”, затем второе число и т.д )
import Foundation
//print("Введите цифру:")
//var inputnumb = Int(readLine()!)!
//print("Какое действие совершить? :")
//var inputoper = readLine()!
//print("Введите цифру:")
//var inputsecond = Int(readLine()!)!
//
//func printsum(_ x: Int, _ o: String, _ y: Int) {
//    switch o {
//    case "+": print("\(x) + \(y) = \(x+y)")
//    case "-": print("\(x) - \(y) = \(x-y)")
//    case "*": print("\(x) * \(y) = \(x*y)")
//    case "/": print("\(x) / \(y) = \(round(Double(x)/Double(y)))")
//    default: print("Не удалось распознать операцию")
//    }
//}
//printsum(inputnumb, inputoper, inputsecond)

print("Введите название функции: (sin,cos,tg,ctg)")
var inputfunc = readLine()!

print("Введите аргумент функции в радианах:")

var input = Double(readLine()!)!


func selectFunction(ifunc: String){
    
    switch inputfunc {
    case "sin": _ = sinus(x: input)
    case "cos": _ = cosinus(x: input)
    case "tg":  _ = tangens(x: input)
    case "ctg": _ = cotangens(x: input)
    default: print("Неправильно введено название функции")
    }
}

func sinus(x: Double) -> Double {
    var y: Double = 0.0
    y = (4 * x * (180 - x)) / (40500 - x * (180 - x))
    print("Результат вычисления Sin(\(x)) = \(y)")
    return y
}

func cosinus(x: Double) -> Double {
    var w: Double = 0.0
    let pi: Double = 3.14159
    var r: Double = 0.0
    r = (pi / 2) - x
    w = sinus(x: r)
    print("Результат вычисления Cos(\(r)) = \(w)")
    return w
}

func tangens(x: Double) -> Double {
    var u: Double = 0.0
    u = sinus(x: x) / cosinus(x: x)
    print("Результат вычисления Tg(\(x)) = \(u)")
    return u
}

func cotangens(x: Double) -> Double {
    var f: Double = 0.0
    f =  cosinus(x: x) / sinus(x: x)
    print("Результат вычисления Ctg(\(x)) = \(f)")
    return f
  }
//    sinus(x: input) // Вызов функции Sin()
//    cosinus(x: input) // Вызов функции Cos()
//    tangens(x: input) // Вызов функции Tg()
//    cotangens(x: input) // Вызов функции Ctg()

selectFunction(ifunc: inputfunc)
