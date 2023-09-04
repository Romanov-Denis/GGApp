//
//  GGAppApp.swift
//  GGApp
//
//  Created by Денис Романов on 27/8/2566 BE.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct GGAppApp: App {
    
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            MainTabar()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .onAppear {
                    UINavigationBar.appearance().backIndicatorImage = UIImage(systemName: "arrow.backward")
                    UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(systemName: "arrow.backward")
                }
        }
    }
}
