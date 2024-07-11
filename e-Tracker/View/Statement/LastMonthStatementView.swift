//
//  PastStatementsView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/23/24.
//

import SwiftUI
import SwiftData

struct LastMonthStatementsListView: View {
    @Environment(\.modelContext) var modelContext
    @Query var pastStatements: [Statement]
    @State private var showAddStatementView = false
    
    var body: some View {
        NavigationStack {
            Group {
                if pastStatements.isEmpty {
                    ContentUnavailableView("Past statements currently unavailable.", systemImage: "doc")
                } else {
                    List {
                        Section("Previous dues") {
                            ForEach(pastStatements) { statement in
                                NavigationLink(destination:StatementDetailView()) {
                                    StatementRowView(statement: statement)
                                }
                            }
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
    let preview = PreviewContainer(Statement.self)
    preview.addData(Statement.sampleStatement)
    return LastMonthStatementsListView()
        .modelContainer(preview.container)
}
