//
//  Statement.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/13/24.
//

import Foundation

struct Statement: Identifiable {
    let id: Int
    let card: Card
    let dueDate: String
    let amountDue: Decimal
    let isPast: Bool
    
    init(id: Int, card: Card, dueDate: String, amountDue: Decimal, isPast: Bool = false) {
        self.id = id
        self.card = card
        self.dueDate = dueDate
        self.amountDue = amountDue
        self.isPast = isPast
    }
}
