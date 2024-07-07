//
//  Statement.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/6/24.
//

import Foundation
import SwiftData

@Model
final class Statement {
    @Relationship(inverse: \Card.statements) var card: Card
    var amountDue: Decimal
    var minAmountDue: Decimal
    var dueDate: Date
    var isPaid: Bool
    
    init(card: Card, amountDue: Decimal, minAmountDue: Decimal, dueDate: Date, isPaid: Bool) {
        self.card = card
        self.amountDue = amountDue
        self.minAmountDue = minAmountDue
        self.dueDate = dueDate
        self.isPaid = isPaid
    }
}
