//
//  Mercedes.swift
//  Homework
//
//  Created by Ляйсан on 14.07.2025.
//

import Foundation

class Mercedes: Car {
    var fuelType: String = ""
    
    func setFuelType(fuelType: String) {
        self.fuelType = fuelType
    }
    
    override func getInfo() -> String {
        return super.getInfo() + "\nТип топлива: \(fuelType)"
    }
}
