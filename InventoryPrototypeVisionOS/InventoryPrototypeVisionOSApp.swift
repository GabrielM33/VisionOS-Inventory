//
//  InventoryPrototypeVisionOSApp.swift
//  InventoryPrototypeVisionOS
//
//  Created by Gabriel Moraes on 19/01/24.
//

import SwiftUI

@main
struct InventoryPrototypeVisionOSApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                InventoryListView()
            }
        }
    }
}
