//
//  BMW.swift
//  Homework
//
//  Created by Ляйсан on 14.07.2025.
//

import Foundation

class BMW: Car {
    var owner: String = ""
    
    func setOwner(owner: String) {
        self.owner = owner
    }
    
    override func getInfo() -> String {
        return super.getInfo() + "\nowner: \(owner)"
    }
}
