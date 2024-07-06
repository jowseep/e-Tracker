//
//  CardRowView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/24/24.
//

import SwiftUI
import SwiftData

struct CardRowView: View {
    @Environment(\.modelContext) var modelContext
    @Bindable var card: Card
    
    var body: some View {
        HStack {
            Image(getLogo(bank: card.issuer))
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(4)
            VStack(alignment: .leading) {
                Text(card.lastFourDigits)
                    .font(.headline)
                Text(card.processor)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            
        }
    }
    
    private func getLogo(bank: String) -> String {
            switch bank {
            case "BDO":
                return "bdo"
            case "BPI":
                return "bpi"
            case "RCBC":
                return "rcbc"
            case "UnionBank":
                return "ub"
            case "Eastwest":
                return "ew"
            default:
                return "default_logo"
            }
        }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Card.self, configurations: config)
        let example = Card(issuer: "BDO", processor: "Visa", lastFourDigits: "5522", statements: [])
        
        return CardRowView(card: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to load")
    }
}
