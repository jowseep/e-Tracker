//
//  AddCardView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/27/24.
//

import SwiftUI

struct AddCardView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Add New Card") {
                    Text("Issuer")
                    Text("Processor")
                    Text("Last 4 digits")
                }
            }
            .navigationTitle("New Card")
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
    AddCardView()
}
