//
//  RWDataInCoreDataApp.swift
//  RWDataInCoreData
//
//  Created by Walter Bernal Montero on 06/10/23.
//

import SwiftUI

@main
struct RWDataInCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
