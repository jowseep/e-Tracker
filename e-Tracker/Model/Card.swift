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
    var issuer: String
    var processor: String
    @Attribute(.unique) var lastFourDigits: String
    @Relationship(deleteRule: .cascade, inverse: \Statement.card) var statements = [Statement]()
    
    init(issuer: String, processor: String, lastFourDigits: String, statements: [Statement]) {
        self.issuer = issuer
        self.processor = processor
        self.lastFourDigits = lastFourDigits
        self.statements = statements
    }
}
