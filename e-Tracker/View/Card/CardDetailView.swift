//
//  CardDetailView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/24/24.
//

import SwiftUI
import SwiftData

struct CardDetailView: View {
    //@Bindable var statement: Statement
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Card details") {
                    Text("Card")
                    Text("Issuing Bank")
                    Text("Payment Processor")
                }
                
//                Section("Current Statement") {
//                    StatementRowView(statement: statement)
//                }
            }
            .navigationTitle("View Statement")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
//    do {
//        let config = ModelConfiguration(isStoredInMemoryOnly: true)
//        let container = try ModelContainer(for: Statement.self, configurations: config)
//        let example = Statement(card: Card(issuer: "BDO", processor: "Visa", lastFourDigits: "5522", statements: []), amountDue: 1209.45, minAmountDue: 230, dueDate: Date(), isPaid: false)
//        
//        return CardDetailView(statement: example)
//            .modelContainer(container)
//    } catch {
//        fatalError("Failed to load.")
//    }
    CardDetailView()
}
