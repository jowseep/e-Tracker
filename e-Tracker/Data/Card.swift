//
//  Card.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/20/24.
//

import Foundation

struct Card : Identifiable {
    let id: Int
    let issuer: String
    let paymentProcessor: String
    let lastFourDigits: String
}
