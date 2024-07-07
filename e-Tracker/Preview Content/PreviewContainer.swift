//
//  PreviewContainer.swift
//  e-Tracker
//
//  Created by Joseph  Callao  on 7/7/24.
//

import Foundation
import SwiftData

struct PreviewContainer {
    let container: ModelContainer
    init(_ models: any PersistentModel.Type...) {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let schema = Schema(models)
        do {
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Could not load container.")
        }
    }
    
    func addData(_ statements: [any PersistentModel]) {
        Task { @MainActor in
            statements.forEach { statement in
                container.mainContext.insert(statement)
            }
        }
    }
}
