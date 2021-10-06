//
//  NumberFormater.swift
//  UnitTesting
//
//  Created by Felipe Gil on 2021-10-05.
//

import Foundation
import UIKit

extension Decimal{
    
    var toString: String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.roundingMode = .floor
        return numberFormatter.string(from: self as NSDecimalNumber) ?? ""
    }
}
