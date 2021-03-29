import Cocoa


import Foundation

// 1. Квадратное уравнение

var a: Float = 1
var b: Float = 2
var c: Float = 8
var x1: Float = 0.0
var x2:  Float = 0.0
var d = pow(b, 2) - (4 * a * c)

func rootD() {
    if d == 0 {
        -(b / (4 * a))
    } else if d > 0 {
        x1 = (-b + sqrtf(d)) / (2 * a)
        x2 = (-b - sqrtf(d)) / (2 * a)
    } else if d < 0 {
        print("Решений нет")
    }
}

rootD()


// a, b, c - константы так как они объявляються один раз и не меняются в дальнейшем.

//2. Найти площадь, периметр и гипотенузу треугольника.

var kat1: Float = 6 // катет №1
var kat2: Float = 8 // катет №2
var gipot: Float // гипотенуза
var area: Float // площадь
var p: Float  // полуперимет
var perim: Float // периметр

gipot = sqrt((kat1 * kat1) + (kat2 * kat2))
perim = kat1 + kat2 + gipot
p = perim / 2
area = sqrt(p * (p - kat1) * (p - kat2) * (p - gipot))

print("""
------
Периметр треугольника = \(perim)
Гипотенуза треугольника = \(gipot)
Площадь треугольника = \(area)
------
""")

// 3. Годовой %

var sum: Float = 5000
var percent: Float = 10
var year: Int = 5

func deposit(){
    for i in 1 ... year {
        let newSum = sum + (sum / percent)/100
        sum = newSum
        print(sum)
        i
    }
    
    print("Через", year, "лет будет", sum , "рублей")
}

deposit()
