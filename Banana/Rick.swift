//
//  Rick.swift
//  Banana
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

enum PortalGunDimension {
    case pizzaWorld
    case chairWorld
    case cowWorld
    case fartWorld
    case purgeWorld
    
    func worldCode() -> Int {
        switch self {
        case .chairWorld:
            return 256
        case .pizzaWorld:
            return 310
        case .cowWorld:
            return 300
        default:
            return 8675309
        }
    }
    
    func emoji() -> String {
        switch self {
        case .chairWorld:
            return "⑁"
        case .pizzaWorld:
            return "🍕"
        default:
            return "💩 on the floor"
        }
    }
}

enum LikeJerryError: Error {
    case hesAnAss💩
    case cowError
    case jerryIsJerry
}

class Rick: NSObject {

    var name: String?
    var mortys: [Morty]?
    
    var dimension = PortalGunDimension.chairWorld
    
    func likeJerry(dimension: PortalGunDimension) throws -> Bool {
        if dimension == PortalGunDimension.purgeWorld {
            return true
        }
        if dimension == PortalGunDimension.chairWorld {
            return false
        }
        
        if dimension == PortalGunDimension.fartWorld {
            // Throw a fart error
            throw LikeJerryError.hesAnAss💩
        }
        
        if dimension == PortalGunDimension.cowWorld {
            // Throw a cow error
            throw LikeJerryError.cowError
        }
        
        throw LikeJerryError.jerryIsJerry
    }
}
