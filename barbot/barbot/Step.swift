//
//  Step.swift
//  barbot
//
//  Created by Naveen Yadav on 4/10/16.
//  Copyright © 2016 BarBot. All rights reserved.
//

import Gloss

struct Step: Glossy {
    var step_number: Int
    var type: Int
    var ingredientId: String?
    var quantity: Double?
    var measurement: String?
    
    init(step_number: Int, type: Int, measurement: String) {
        self.step_number = step_number
        self.type = type
        self.measurement = measurement
    }
    
    init?(json: JSON) {
        guard let step_number: Int = "step_number" <~~ json,
            let type: Int = "type" <~~ json
            else { return nil }
        
        self.step_number = step_number
        self.type = type
        
        self.ingredientId = "ingredient_id" <~~ json
        self.quantity = "amount" <~~ json
        self.measurement = "oz" //"measurement" <~~ json
    }
    
    func toJSON() -> JSON? {
        return jsonify([
            "type" ~~> self.type,
            "ingredient_id" ~~> self.ingredientId,
            "amount" ~~> self.quantity
        ])
    }
}