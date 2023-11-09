//
//  DeveloperPreview.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 08/11/23.
//

import Foundation

class DeveloperPreview{
    
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = []
    init() {
        for _ in 1...25 {
            let listing = Listing(
                id: UUID().uuidString,
                ownerID: UUID().uuidString,
                ownerName: "John Doe",
                ownerURL: "https://example.com/image.png",
                numberOfBedrooms: Int.random(in: 1...5),
                numberOfBathrooms: Int.random(in: 1...3),
                numberOfBeds: Int.random(in: 1...5),
                numberOfGuests: Int.random(in: 1...10),
                pricePerNight: Double.random(in: 50...500),
                latitude: Double.random(in: -90...90),
                longitude: Double.random(in: -180...180),
                adress: "123 Example St",
                city: "Example City",
                title: "Comfortable Place",
                numberOfReviews: Int.random(in: 0...300),
                rating: Double.random(in: 0...5),
                imageURLs: ["listing-1","listing-2","listing-3","listing-4"],
                feature: [.selfCheckin, .superHost], // Aquí podrías poner lógica para seleccionar características aleatorias
                ameneties: [.wifi, .laundry, .pool], // Lo mismo para los servicios
                type: .house // O .apartment, dependiendo de la lógica que quieras aplicar
            )
            listings.append(listing)
        }
    }
}
