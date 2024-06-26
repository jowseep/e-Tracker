//
//  CardDetailView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/24/24.
//

import SwiftUI

struct CardDetailView: View {
    var statement: Statement = Statement(id: 2, card: Card(id: 2, issuer: "BDO", paymentProcessor: "Amex", lastFourDigits: "0738"), dueDate: "June 21, 2024", amountDue: 3124.21)
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Card details") {
                    Text("Card")
                    Text("Issuing Bank")
                    Text("Payment Processor")
                }
                
                Section("Current Statement") {
                    StatementRowView(statement: statement)
                }
            }
            .navigationTitle("View Statement")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CardDetailView()
}
