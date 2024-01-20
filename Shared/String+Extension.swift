//
//  String+Extension.swift
//  InventoryPrototype
//
//  Created by Gabriel Moraes on 24/01/24.
//

import Foundation

extension String: Error, LocalizedError {
    public var errorDescription: String? {self}
}
