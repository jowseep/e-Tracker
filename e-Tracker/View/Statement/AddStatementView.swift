//
//  AddStatement.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/17/24.
//

import SwiftUI
import SwiftData

struct AddStatementView: View {
    @Query var cards: [Card]
    @Environment(\.presentationMode) var presentationMode
    @FocusState private var onFocus: Bool
    @State private var name = ""
    @State var selectedCard: Int = 0
    @State private var notes = ""
    @State private var dueDate: Date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Statement information") {
                    if (cards.isEmpty) {
                        Text("No cards available")
                            .foregroundStyle(.secondary)
                    } else {
                        Picker("Card", selection: $selectedCard) {
                            ForEach(0..<cards.count, id: \.self) { bank in
                                let card = cards[bank]
                                Text(card.issuer.rawValue + " " + card.lastFourDigits)
                                    .tag(bank)
                            }
                        }
                    }
                    TextField("Amount Due", text: $name)
                    TextField("Minimum Amount Due", text: $name)
                    DatePicker("Due Date", selection: $dueDate, displayedComponents: [.date])
                    Button("Attach PDF") {}
                }
                Section("Notes") {
                    ZStack(alignment: .topLeading) {
                        if notes.isEmpty && !onFocus {
                            Text("Start typing...")
                                .foregroundColor(.gray)
                        }
                        TextEditor(text: $notes)
                            .frame(height: 120)
                            .focused($onFocus)
                    }
                }
            }
            .navigationTitle("New Statement")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    AddStatementView()
}
