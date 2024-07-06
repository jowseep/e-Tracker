//
//  ContentView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        TabView {
            StatementView()
                .tabItem {
                    Image(systemName: "arrow.down.doc")
                    Text("Statement")
                }
            
            LastMonthStatementsView()
                .tabItem {
                    Image(systemName: "arrow.clockwise")
                    Text("Last Month")
                }
            
            CardsView()
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Cards")
                }
        }
    }
}

#Preview {
    ContentView()
}
