//
//  ExploreViewModel.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 08/11/23.
//

import Foundation
class ExploreViewModel: ObservableObject{
    @Published var listings = [Listing]()
    
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
    }
    
    func fetchListings() async{
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fecth listings with error: \(error.localizedDescription)")
        }
    }
}
