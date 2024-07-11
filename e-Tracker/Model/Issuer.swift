//
//  Issuer.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/7/24.
//

import Foundation

enum Issuer: String, CaseIterable, Codable {
    case bdo = "BDO"
    case bpi = "BPI"
    case rcbc = "RCBC"
    case ub = "UnionBank"
    case ew = "Eastwest"
}
