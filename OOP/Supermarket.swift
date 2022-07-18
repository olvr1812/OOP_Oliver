//
//  Store.swift
//  OOP
//
//  Created by Оливер Салихов on 15.07.2022.
//

import Foundation

class Supermarket {
    let name: String
    var bascket = [Product]()
    
    init(name: String) {
        self.name =  name
    }
    
    func addGroceries(quantity: Int, groceries: Product) {
        for _ in 1...quantity {
            bascket.append(groceries)
        }
    }
    
    func delGroceries(groceriesBarcode: Int) {
        for i in bascket {
            if let index = bascket.firstIndex(where: { $0.checkBarcode() == i.checkBarcode() }) {
                bascket.remove(at: index)
                break
            }
        }
    }
    
    func printCheck() {
        var totalSum = Double()
        print("\n----------------LENTA---------------\nНаименование товара        Стоимость")
        for i in 0..<bascket.count {
            if bascket[i].name == "Pepsi" {
                print("\(i + 1). \(bascket[i].name)                    \(bascket[i].cost)")
            } else if bascket[i].name == "Alpen Gold" {
                print("\(i + 1). \(bascket[i].name)               \(bascket[i].cost)")
            } else {
                print("\(i + 1). \(bascket[i].name)                 \(bascket[i].cost)")
            }
            totalSum += bascket[i].cost
        }
        
        print("Итого:      \(totalSum) рублей")
        print("Спасибо за покупку! Приходите еще!\n")
    }
}


