//
//  Car.swift
//  Homework
//
//  Created by Ляйсан on 14.07.2025.
//

class Car {
    let name: String
    let model: String
    let yearOfProduction: String
    let color: String
    var engineCapacity: Int
    
    init(name: String, model: String, yearOfProduction: String, color: String, engineCapacity: Int) {
        self.name = name
        self.model = model
        self.yearOfProduction = yearOfProduction
        self.color = color
        self.engineCapacity = engineCapacity
    }
    
    func getInfo() -> String {
        return "\(name), model: \(model), year of production: \(yearOfProduction), color: \(color), engine capacity: \(engineCapacity)"
    }
    
    func compareTo(otherCar: Car) -> Int {
        return self.engineCapacity - otherCar.engineCapacity
    }
}
