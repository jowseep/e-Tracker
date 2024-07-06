//
//  StatementView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI
import SwiftData

struct StatementView: View {
    @Environment(\.modelContext) var modelContext
    @Query var statements: [Statement]
    @State private var showAddStatementView = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Upcoming dues") {
                    ForEach(statements) { statement in
                        NavigationLink(destination: StatementDetailView()) {
                            StatementRowView(statement: statement)
                                .swipeActions(edge: .trailing) {
                                    Button("Mark Paid", systemImage: "checkmark") {}
                                        .tint(.green)
                                    Button("Delete", systemImage: "trash")   {}
                                        .tint(.red)
                                }
                        }
                    }
                }
            }
            .navigationTitle("Statements")
            .toolbar {
                ToolbarItem {
                    Button {
                        showAddStatementView.toggle()
                    } label: {
                        Label("Add Item", systemImage: "plus.circle")
                    }
                }
            }
            .sheet(isPresented: $showAddStatementView) {
                AddStatementView()
            }
        }
    }
}

#Preview {
    StatementView()
}
