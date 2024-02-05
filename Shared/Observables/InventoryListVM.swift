//
//  InventoryListVM.swift
//  InventoryPrototype
//
//  Created by Gabriel Moraes on 24/01/24.
//

import Foundation
import SwiftUI
import FirebaseFirestore

class InventorViewModel: ObservableObject {
    
    @Published var items = [InventoryItem]()
    
    @MainActor
    func listenToItems() {
        Firestore.firestore().collection("items")
            .order(by: "name")
            .limit(toLast: 100)
            .addSnapshotListener {snapshot, error in
                guard let snapshot else {
                    print("Error fetching snapshot: \(error?.localizedDescription ?? "error")")
                    return
                }
                let docs = snapshot.documents
                let items = docs.compactMap {
                    try? $0.data(as: InventoryItem.self)
                }
                withAnimation {
                    self.items = items
                }
            }
    }
}
