//
//  main.swift
//  OOP
//
//  Created by Оливер Салихов on 13.07.2022.
//

import Foundation


var chocolate = Chokolate(name: "Alpen Gold", cost: 65.99, barcode: 321299)

var drink = Drink(name: "Pepsi", cost: 69.99, barcode: 536245)

var snack = Snack(name: "ХрусTeam", cost: 24.99, barcode: 713464)

chocolate.infoProduct()

drink.infoProduct()

snack.infoProduct()


var lenta = Supermarket(name: "Лента")

lenta.addGroceries(quantity: 4, groceries: chocolate)

lenta.addGroceries(quantity: 3, groceries: drink)

lenta.addGroceries(quantity: 5, groceries: snack)

print(lenta.bascket.count)

lenta.printCheck()

lenta.delGroceries(groceriesBarcode: chocolate.checkBarcode())

lenta.delGroceries(groceriesBarcode: drink.checkBarcode())
lenta.delGroceries(groceriesBarcode: drink.checkBarcode())
lenta.delGroceries(groceriesBarcode: drink.checkBarcode())
lenta.delGroceries(groceriesBarcode: drink.checkBarcode())

lenta.printCheck()

lenta.addGroceries(quantity: 3, groceries: drink)

lenta.printCheck()
