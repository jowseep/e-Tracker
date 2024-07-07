//
//  Issuer.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/7/24.
//

import Foundation

enum Issuer: String, CaseIterable, Codable {
    case bdo = "bdo"
    case bpi = "bpi"
    case rcbc = "rcbc"
    case ub = "ub"
    case ew = "ew"
}
