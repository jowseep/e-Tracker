//
//  StatementRow.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/16/24.
//

import SwiftUI
import SwiftData

struct StatementRowView: View {
    @Bindable var statement: Statement
    
    var body: some View {
        HStack {
            Image(VisualHelper.getLogo(for: statement.card.issuer))
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(4)
            VStack(alignment: .leading) {
                Text(statement.card.processor.rawValue + " " + statement.card.lastFourDigits)
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
}
