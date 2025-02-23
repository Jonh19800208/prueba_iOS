//
//  app_CC_OOApp.swift
//  app_CC.OO
//
//  Created by John M. on 23/2/25.
//

import SwiftUI

@main
struct app_CC_OOApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
