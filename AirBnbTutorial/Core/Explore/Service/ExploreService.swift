//
//  ExploreService.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 09/11/23.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
