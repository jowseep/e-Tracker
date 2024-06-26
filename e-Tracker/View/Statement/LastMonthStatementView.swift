//
//  PastStatementsView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI

struct LastMonthStatementsView: View {
    var pastStatements: [Statement] = [
        Statement(id: 5, card: Card(id: 4, issuer: "RCBC", paymentProcessor: "Visa", lastFourDigits: "1001"), dueDate: "June 21, 2024", amountDue: 3124.21),
        Statement(id: 6, card: Card(id: 3, issuer: "BPI", paymentProcessor: "Visa", lastFourDigits: "8366"), dueDate: "June 24, 2024", amountDue: 9140.03),
        Statement(id: 7, card: Card(id: 4, issuer: "UnionBank", paymentProcessor: "Visa", lastFourDigits: "7943"), dueDate: "June 26,  2024", amountDue: 824.50),
        Statement(id: 8, card: Card(id: 2, issuer: "BDO", paymentProcessor: "MC", lastFourDigits: "5522"), dueDate: "June 21, 2024", amountDue: 3124.21),
        Statement(id: 9, card: Card(id: 3, issuer: "BPI", paymentProcessor: "Visa", lastFourDigits: "8366"), dueDate: "June 24, 2024", amountDue: 9140.03)
    ]
    
    @State private var showAddStatementView = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Previous dues") {
                    ForEach(pastStatements) { statement in
                        NavigationLink(destination:StatementDetailView()) {
                            StatementRowView(statement: statement)
                        }
                    }
                }
            }
            .navigationTitle("Last Month")
            .toolbar {
                ToolbarItem {
                    Button {
                        showAddStatementView.toggle()
                    } label: {
                        Label("View more", systemImage: "ellipsis.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    LastMonthStatementsView()
}
