//
//  StatementRow.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/16/24.
//

import SwiftUI
import SwiftData

struct StatementRowView: View {
    @Environment(\.modelContext) var modelContext
    @Bindable var statement: Statement
    
    var body: some View {
        HStack {
            Image(getLogo(bank: statement.card.issuer))
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(4)
            VStack(alignment: .leading) {
                Text(statement.card.processor)
                    .font(.headline)
                Text(statement.dueDate, style: .date)
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

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Statement.self, configurations: config)
        let example = Statement(card: Card(issuer: "BDO", processor: "Visa", lastFourDigits: "5522", statements: []), amountDue: 1209.45, minAmountDue: 230, dueDate: Date(), isPaid: false)
        
        return StatementRowView(statement: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to load.")
    }
}
