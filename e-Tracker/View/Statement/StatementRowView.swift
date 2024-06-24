//
//  StatementRow.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/16/24.
//

import SwiftUI

struct StatementRowView: View {
    var statement: Statement
    
    var body: some View {
        HStack {
            Image(getLogo(bank: statement.card.issuer))
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(4)
            VStack(alignment: .leading) {
                Text(statement.card.paymentProcessor + " " + statement.card.lastFourDigits)
                    .font(.headline)
                Text(statement.dueDate)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Text("₱\(statement.amountDue)")
                .bold()
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

let sampleStatement = Statement(id: 1, card: Card(id: 3, issuer: "BPI", paymentProcessor: "Visa", lastFourDigits: "8366"), dueDate: "06/26/2024", amountDue: 1500.00)

#Preview {
    StatementRowView(statement: sampleStatement)
}
