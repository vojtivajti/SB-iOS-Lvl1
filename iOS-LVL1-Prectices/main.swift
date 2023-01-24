//
//  main.swift
//  iOS-LVL1-Prectices
//
//  Created by Михаил Петров on 16.01.2023.
//

/*Задание 1
Напишите функцию, которая принимает на вход два целых числа и выводит в консоль, равны они или нет. Должны выполняться следующие условия:

Если первое число равно второму числу, надо вывести в консоль слово «равно».
Если первое число больше второго, то вывести слово «больше».
Если первое число меньше, то вывести слово «меньше». */
print("Задание 1")
isEqual(5, 5)

func isEqual(_ number1: Int,_ number2: Int){
    if number1 == number2{
        print("равно")
    } else if number1 > number2 {
        print("больше")
    } else {
        print("меньше")
    }
}


/* Задание 2
Пользователь вводит целое число от 1 до 100 в виде строки String. Напишите функцию, которая проверяет ввод пользователя и возвращает число типа Int.

Если пользователь ввёл вместо числа текст, то нужно вернуть −1 и вывести в консоль слово «Ошибка».
Если пользователь ввёл число вне диапазона от 1 до 100 включительно, нужно вернуть это число, а в консоль вывести текст (“\(value) вне диапазона”), где value — это число, введённое пользователем.
В остальных случаях нужно просто вернуть число пользователя Int.
Подсказка: используйте вызов Int(String) для создания целого числа из строки. Например, Int(“1”) вернёт числовое значение 1. */
print()
print("Задание №2")

print("Введите число: ")
var userNumber: String? = readLine()

strToIntNumber(userNumber)

func strToIntNumber(_ userNumber: String?) -> Int {
    if let value = userNumber {
        if let intUserNumber = Int(value) {
            if intUserNumber >= 1 && intUserNumber <= 100 {
                print("\(intUserNumber) вне диапазона")
                return intUserNumber
            } else {
                print(intUserNumber)
                return intUserNumber
            }
        } else {
            print("Ошибка")
            return -1
        }
    } else {
        print("ошибка")
        return -1
    }
}


/* Задание №3
 Напишите функцию, которая выводит самый большой элемент в массиве.
 Подсказка: Используйте синтаксис for in для обработки массива.
 */
print()
print("Задание №3")

let numbers1: Array = [4, 5, 1, 3]
let numbers2: Array = [300, 200, 600, 150]
let numbers3: Array = [1000, 1001, 857, 1]

print(findLargestNum(numbers1))
print(findLargestNum(numbers2))
print(findLargestNum(numbers3))

func findLargestNum(_ inputArray: Array<Int>) -> Int{
    var largestNumber: Int = inputArray[0]
    for number in inputArray{
        if largestNumber < number {
            largestNumber = number
        }
    }
    return largestNumber
}


/*
 Задание 4
 Напишите функцию, внутри которой будет switch для обработки значений одного брошенного кубика. На вход функция получает число от 1 до 6 включительно. Если значение 1, 2 или 3 — нужно вывести в консоль слово «проигрыш». Если значение 4, 5 или 6 — нужно вывести слово «победа». Если число выходит за пределы, выведите сообщение ("У кубика только 6 граней!?"). В задании нельзя использовать if, else и else if.
 */

print()
print("Задание №4")

cubeValue(7)

func cubeValue(_ sideValue: Int){
    switch sideValue {
    case 1:
        print("Проигрыш")
    case 2:
        print("Проигрыш")
    case 3:
        print("Проигрыш")
    case 4:
        print("Победа")
    case 5:
        print("Победа")
    case 6:
        print("Победа")
    default:
        print("У кубика только 6 граней!?")
    }
}

