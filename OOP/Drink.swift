//
//  Drink.swift
//  OOP
//
//  Created by Оливер Салихов on 15.07.2022.
//

import Foundation

class Drink: Product {
    
    override func infoProduct() {
        print("Наименование товара: \(name)\nЦена:\(cost)")
    }
    
}
