//
//  Processor.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/7/24.
//

import Foundation

enum Processor: String, CaseIterable, Codable {
    case visa = "Visa"
    case mastercard = "Mastercard"
    case jcb = "JCB"
    case amex = "AMEX"
}
