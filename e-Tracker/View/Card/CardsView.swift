//
//  CardsView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI

struct CardsView: View {
    
    private var cards: [Card] = [
        Card(id: 2, issuer: "BDO", paymentProcessor: "Mastercard", lastFourDigits: "5522"),
        Card(id: 3, issuer: "BPI", paymentProcessor: "Visa", lastFourDigits: "8366"),
        Card(id: 4, issuer: "Eastwest", paymentProcessor: "JCB", lastFourDigits: "4000"),
        Card(id: 5, issuer: "UnionBank", paymentProcessor: "Visa", lastFourDigits: "7943"),
        Card(id: 6, issuer: "RCBC", paymentProcessor: "Visa", lastFourDigits: "1001")
    ]
    @State private var showAddStatementView = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Active cards") {
                    ForEach(cards) { card in
                        NavigationLink(destination: CardDetailView()) {
                            CardRowView(cards: card)
                        }
                    }
                }
            }
            .navigationTitle("Cards")
            .toolbar {
                ToolbarItem {
                    Button {
                        showAddStatementView.toggle()
                    } label: {
                        Label("Add Item", systemImage: "plus.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    CardsView()
}
