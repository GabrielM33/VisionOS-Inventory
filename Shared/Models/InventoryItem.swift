//
//  InventoryItem.swift
//  InventoryPrototype
//
//  Created by Gabriel Moraes on 24/01/24.
//

import Foundation
import FirebaseFirestoreSwift

struct InventoryItem: Identifiable, Codable, Equatable {
    
    var id = UUID().uuidString
    @ServerTimestamp var createdAr: Date?
    @ServerTimestamp var upadateAt: Date?
    
    var name: String
    var quantity: Int
    
    var usdzLink: String?
    var usdzURL: URL? {
        guard let usdzLink else {return nil}
        return URL(string: usdzLink)
    }
    
    var thumbnailLink: String?
    var thumbnailURL: URL? {
        guard let thumbnailLink else {return nil}
        return URL(string: thumbnailLink)
    }

}
