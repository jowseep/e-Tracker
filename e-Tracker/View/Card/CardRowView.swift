//
//  CardRowView.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 6/24/24.
//

import SwiftUI
import SwiftData

struct CardRowView: View {
    @Bindable var card: Card
    
    var body: some View {
        HStack {
            Image(VisualHelper.getLogo(for: card.issuer))
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(4)
            VStack(alignment: .leading) {
                Text(card.lastFourDigits)
                    .font(.headline)
                Text(card.processor.rawValue)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            
        }
    }
}

#Preview {
    let preview = PreviewContainer(Card.self)
    return CardRowView(card: Card.sampleCards[0])
        .modelContainer(preview.container)
}
