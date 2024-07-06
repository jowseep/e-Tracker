//
//  PastStatementsView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI
import SwiftData

struct LastMonthStatementsView: View {
    @Environment(\.modelContext) var modelContext
    @Query var pastStatements: [Statement]
    @State private var showAddStatementView = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Previous dues") {
                    ForEach(pastStatements) { statement in
                        NavigationLink(destination:StatementDetailView()) {
                            StatementRowView(statement: statement)
                        }
                    }
                }
            }
            .navigationTitle("Last Month")
            .toolbar {
                ToolbarItem {
                    Button {
                        showAddStatementView.toggle()
                    } label: {
                        Label("View more", systemImage: "ellipsis.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    LastMonthStatementsView()
}
