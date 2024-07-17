//
//  CardsView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI
import SwiftData

struct CardsListView: View {
    @Environment(\.modelContext) var modelContext
    @Query var cards: [Card]
    @State private var showAddCardView = false
    
    var body: some View {
        NavigationStack {
            Group {
                if cards.isEmpty {
                    ContentUnavailableView("No cards added yet. Click + button to add.", systemImage: "creditcard")
                } else {
                    List {
                        Section("Active cards") {
                            ForEach(cards) { card in
                                NavigationLink(destination: CardDetailView(card: card)) {
                                    CardRowView(card: card)
                                        .swipeActions(edge: .trailing) {
                                            Button("Delete", systemImage: "trash")   {
                                                modelContext.delete(card)
                                            }
                                                .tint(.red)
                                        }
                                }
                            }
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
    let preview = PreviewContainer(Card.self)
    preview.addData(Card.sampleCards)
    return CardsListView()
        .modelContainer(preview.container)
}
