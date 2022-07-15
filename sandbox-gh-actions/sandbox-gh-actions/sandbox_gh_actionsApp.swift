//
//  sandbox_gh_actionsApp.swift
//  sandbox-gh-actions
//
//  Created by Aaron Orozco on 7/15/22.
//

import SwiftUI

@main
struct sandbox_gh_actionsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
