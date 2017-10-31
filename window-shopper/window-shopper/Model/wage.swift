//
//  wage.swift
//  window-shopper
//
//  Created by Andrew Smith on 10/30/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
       return Int(ceil(price/wage))
    }
}
