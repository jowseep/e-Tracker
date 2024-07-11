//
//  ContentView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StatementListView()
                .tabItem {
                    Image(systemName: "doc")
                    Text("Statement")
                }
            
            LastMonthStatementsListView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Last Month")
                }
            
            CardsListView()
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Cards")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Statement.self, Card.self], inMemory: true)
}
