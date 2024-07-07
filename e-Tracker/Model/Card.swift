//
//  Card.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/6/24.
//

import Foundation
import SwiftData

@Model
final class Card {
    var issuer: Issuer
    var processor: Processor
    @Attribute(.unique) var lastFourDigits: String
    @Relationship(deleteRule: .cascade) var statements = [Statement]()
    
    init(issuer: Issuer, processor: Processor, lastFourDigits: String) {
        self.issuer = issuer
        self.processor = processor
        self.lastFourDigits = lastFourDigits
    }
}
