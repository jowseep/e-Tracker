//
//  StatementDetailView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/26/24.
//

import SwiftUI

struct StatementDetailView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Statement Detail") {
                    Text("Card")
                    Text("Amount Due")
                    Text("Min. Amount Due")
                    Text("Due Date")
                }
                
                Section("More details") {
                    Text("Last Amount Paid")
                    Text("Previous balance")
                    Button("Show PDF") {}
                }
            }
            .navigationTitle("View Statement")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    StatementDetailView()
}
