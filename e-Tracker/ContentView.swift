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
                    Image(systemName: "arrow.down.doc")
                    Text("Statement")
                }
            
            LastMonthStatementsListView()
                .tabItem {
                    Image(systemName: "arrow.clockwise")
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
    let preview = PreviewContainer()
    
    return ContentView()
        .modelContainer(preview.container)
}
