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
    var card: Card
    var amountDue: Double
    var minAmountDue: Double
    var dueDate: Date
    var isPaid: Bool
    var pdf: Data?
    
    init(card: Card, amountDue: Double, minAmountDue: Double, dueDate: Date, isPaid: Bool, pdf: Data? = nil) {
        self.card = card
        self.amountDue = amountDue
        self.minAmountDue = minAmountDue
        self.dueDate = dueDate
        self.isPaid = isPaid
    }
}
