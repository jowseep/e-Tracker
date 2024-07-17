//
//  CardDetailView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/24/24.
//

import SwiftUI
import SwiftData

struct CardDetailView: View {
    var card: Card
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Card details") {
                    HStack {
                        Text("Bank")
                        Spacer()
                        Text(card.issuer.rawValue)
                            .foregroundStyle(.secondary)
                    }
                    HStack {
                        Text("Processor")
                        Spacer()
                        Text(card.processor.rawValue)
                            .foregroundStyle(.secondary)
                    }
                    HStack {
                        Text("Last 4 digits")
                        Spacer()
                        Text(card.lastFourDigits)
                            .foregroundStyle(.secondary)
                    }
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

var card = Card(issuer: Issuer.bdo, processor: Processor.visa, lastFourDigits: "5522")

#Preview {
    CardDetailView(card: card)
}
