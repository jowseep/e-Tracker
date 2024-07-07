//
//  VisualHelper.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/7/24.
//

import Foundation

struct VisualHelper {
    
    static func getLogo(for issuer: Issuer) -> String {
        switch issuer {
        case .bdo:
            return "bdo"
        case .bpi:
            return "bpi"
        case .rcbc:
            return "rcbc"
        case .ub:
            return "ub"
        case .ew:
            return "ew"
        }
    }
}
