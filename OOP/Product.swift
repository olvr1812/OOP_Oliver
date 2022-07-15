//
//  Avto.swift
//  OOP
//
//  Created by Оливер Салихов on 13.07.2022.
//

import Foundation

class Product {
    var name: String = "Шоколадка"
    var cost: Double
    private var barcode: Int
    
    init(name: String, cost: Double, barcode: Int) {
        self.name = name
        self.cost = cost
        self.barcode = barcode
    }
    
    func infoProduct() {
        print("Наименование товара: \(name)\nЦена:\(cost)\nШтрихкод:\(barcode)")
    }
    
    func checkBarcode() -> Int {
        return barcode
    }
}





