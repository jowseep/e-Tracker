//
//  StatementView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI

struct StatementView: View {
    
    var statements: [Statement] = [
        Statement(id: 2, card: Card(id: 2, issuer: "BDO", paymentProcessor: "Amex", lastFourDigits: "0738"), dueDate: "June 21, 2024", amountDue: 3124.21),
        Statement(id: 3, card: Card(id: 3, issuer: "BPI", paymentProcessor: "Visa", lastFourDigits: "8366"), dueDate: "June 24, 2024", amountDue: 9140.03),
        Statement(id: 4, card: Card(id: 4, issuer: "UnionBank", paymentProcessor: "Visa", lastFourDigits: "7943"), dueDate: "June 26,  2024", amountDue: 824.50),
        Statement(id: 5, card: Card(id: 5, issuer: "RCBC", paymentProcessor: "Visa", lastFourDigits: "1001"), dueDate: "June 21, 2024", amountDue: 3124.21),
        Statement(id: 6, card: Card(id: 6, issuer: "Eastwest", paymentProcessor: "JCB", lastFourDigits: "4000"), dueDate: "June 26, 2024", amountDue: 1924.45)
        
    ]
    
    @State private var showAddStatementView = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Upcoming dues") {
                    ForEach(statements) { statement in
                        StatementRowView(statement: statement)
                            .swipeActions(edge: .trailing) {
                                Button("Delete", systemImage: "trash") {}
                                    .tint(.red)
                            }
                    }
                }
            }
            .navigationTitle("Statements")
            .toolbar {
                ToolbarItem {
                    Button {
                        showAddStatementView.toggle()
                    } label: {
                        Label("Add Item", systemImage: "plus.circle")
                    }
                }
            }
            .sheet(isPresented: $showAddStatementView) {
                AddStatementView()
            }
        }
    }
}

#Preview {
    StatementView()
}
