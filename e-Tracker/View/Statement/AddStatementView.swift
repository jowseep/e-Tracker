//
//  AddStatement.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/17/24.
//

import SwiftUI

struct AddStatementView: View {
    
    private var cards: [String] = [
        "BDO 5526",
        "BPI 8366",
        "RCBC 1001",
        "UnionBank 7943",
        "Eastwest 4000"
    ]
    
    @Environment(\.presentationMode) var presentationMode
    @FocusState private var onFocus: Bool
    @State private var name = ""
    @State private var selectedBank = ""
    @State private var notes = ""
    @State private var dueDate: Date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Statement information") {
                    Picker("Card", selection: $selectedBank) {
                        ForEach(0..<cards.count, id: \.self) { bank in
                            Text(cards[bank])
                        }
                    }
                    TextField("Amount Due", text: $name)
                    TextField("Minimum Amount Due", text: $name)
                    DatePicker("Due Date", selection: $dueDate, displayedComponents: [.date])
                    ZStack {
                        if notes.isEmpty {
                            Text("Notes here")
                                .foregroundColor(.gray)
                        }
                        TextEditor(text: $notes)
                            .frame(height: 150)
//                            .focused($onFocus)
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
//            .onTapGesture {
//                onFocus = false
//            }
        }
    }
}

#Preview {
    AddStatementView()
}
