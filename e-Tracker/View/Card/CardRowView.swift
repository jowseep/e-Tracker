//
//  CardRowView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/24/24.
//

import SwiftUI

struct CardRowView: View {
    var cards: Card
    
    var body: some View {
        HStack {
            Image(getLogo(bank: cards.issuer))
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(4)
            VStack(alignment: .leading) {
                Text(cards.lastFourDigits)
                    .font(.headline)
                Text(cards.paymentProcessor)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            
        }
    }
    
    private func getLogo(bank: String) -> String {
            switch bank {
            case "BDO":
                return "bdo"
            case "BPI":
                return "bpi"
            case "RCBC":
                return "rcbc"
            case "UnionBank":
                return "ub"
            case "Eastwest":
                return "ew"
            default:
                return "default_logo"
            }
        }
}

let card = Card(id: 2, issuer: "BDO", paymentProcessor: "Visa", lastFourDigits: "5522")

#Preview {
    CardRowView(cards: card)
}
