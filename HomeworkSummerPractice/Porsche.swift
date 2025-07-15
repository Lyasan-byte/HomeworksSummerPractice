//
//  Porsche.swift
//  Homework
//
//  Created by Ляйсан on 14.07.2025.
//

import Foundation

class Porsche: Car {
    var numberOfDoors: String = ""
    
    func setNumberOfDoors(numberOfDoors: String) {
        self.numberOfDoors = numberOfDoors
    }
    
    override func getInfo() -> String {
        return super.getInfo() + "\nКоличество дверей: \(numberOfDoors)"
    }
}

