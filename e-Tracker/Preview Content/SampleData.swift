//
//  SampleData.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/7/24.
//

import Foundation

extension Card {
    static var sampleCards: [Card] {
        [
            Card(issuer: .bdo, processor: .visa, lastFourDigits: "5522"),
            Card(issuer: .bpi, processor: .visa, lastFourDigits: "8366"),
            Card(issuer: .ew, processor: .jcb, lastFourDigits: "4000"),
            Card(issuer: .ub, processor: .visa, lastFourDigits: "7946")
        ]
    }
}

extension Statement {
    static var sampleStatement: [Statement] {
        [
            Statement(card: Card.sampleCards[0], amountDue: 4190, minAmountDue: 230, dueDate: Date(), isPaid: false),
            Statement(card: Card.sampleCards[1], amountDue: 621, minAmountDue: 201, dueDate: Date(), isPaid: false),
            Statement(card: Card.sampleCards[2], amountDue: 2378, minAmountDue: 150.76, dueDate: Date(), isPaid: false),
            Statement(card: Card.sampleCards[3], amountDue: 120, minAmountDue: 120, dueDate: Date(), isPaid: false)
        ]
    }
}
