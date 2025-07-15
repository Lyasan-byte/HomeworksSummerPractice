//
//  Lixiang.swift
//  Homework
//
//  Created by Ляйсан on 14.07.2025.
//

import Foundation

class Lixiang: Car {
    var cityOfManufacture: String = ""
    
    func setCityofmanufacture(cityOfManufacture: String) {
        self.cityOfManufacture = cityOfManufacture
    }
    
    override func getInfo() -> String {
        return super.getInfo() + "\nГород производства: \(cityOfManufacture)"
    }
}
