//
//  CardsView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI
import SwiftData

struct CardsView: View {
    @Environment(\.modelContext) var modelContext
    @Query var cards: [Card]
    @State private var showAddCardView = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Active cards") {
                    ForEach(cards) { card in
                        NavigationLink(destination: CardDetailView()) {
                            CardRowView(card: card)
                        }
                    }
                }
            }
            .navigationTitle("Cards")
            .toolbar {
                ToolbarItem {
                    Button {
                        showAddCardView.toggle()
                    } label: {
                        Label("Add Item", systemImage: "plus.circle")
                    }
                }
            }
            .sheet(isPresented: $showAddCardView) {
                AddCardView()
            }
        }
    }
}

#Preview {
    CardsView()
}
