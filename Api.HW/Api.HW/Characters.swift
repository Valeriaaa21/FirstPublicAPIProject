//
//  Characters.swift
//  Api.HW
//
//  Created by Валерия  on 10.01.2023.
//

import Foundation
import SwiftyJSON

struct Characters {
    var name = ""
    var house = ""
    var dateOfBirth = ""
    var actor = ""
    var patronus = ""
    var image = ""
    
    init(json: JSON) {
        if let item = json["name"].string {
            name = item
        }
        if let item = json["house"].string {
            house = item
        }
        if let item = json["dateOfBirth"].string {
            dateOfBirth = item
        }
        if let item = json["actor"].string {
            actor = item
        }
        if let item = json["patronus"].string {
                patronus = item
            }
            if let item = json["image"].string {
                image = item
        }
    }
}
