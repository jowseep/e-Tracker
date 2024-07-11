//
//  AddCardView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/27/24.
//

import SwiftUI
import SwiftData

struct AddCardView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    @State private var selectedIssuer: Issuer = .bdo
    @State private var selectedProcessor: Processor = .visa
    @State private var lastFourDigits = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Add New Card")) {
                    Picker("Issuer", selection: $selectedIssuer) {
                        ForEach(Issuer.allCases, id: \.self) { issuer in
                            Text(issuer.rawValue).tag(issuer)
                        }
                    }
                    Picker("Processor", selection: $selectedProcessor) {
                        ForEach(Processor.allCases, id: \.self) { processor in
                            Text(processor.rawValue).tag(processor)
                        }
                    }
                    TextField("Last 4 digits", text: $lastFourDigits)
                    Button("Submit") {
                        let newCard = Card(issuer: selectedIssuer, processor: selectedProcessor, lastFourDigits: lastFourDigits)
                        context.insert(newCard)
                        dismiss()
                    }
                    .frame(maxWidth: .infinity)
                    .bold()
                }
            }
            .navigationTitle("New Card")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    AddCardView()
}
