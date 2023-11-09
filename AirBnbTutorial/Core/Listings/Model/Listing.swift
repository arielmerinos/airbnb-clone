//
//  Listing.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 08/11/23.
//

import Foundation

struct Listing: Identifiable, Codable{
    let id: String
    let ownerID: String
    let ownerName: String
    let ownerURL: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfBeds: Int
    let numberOfGuests: Int
    var pricePerNight: Double
    let latitude: Double
    let longitude: Double
    let adress: String
    let city: String
    let title: String
    let numberOfReviews: Int
    var rating: Double
    var imageURLs: [String]
    var feature: [ListingFeatures]
    var ameneties: [ListingAmeneties]
    let type: LitingType
    
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable{
    case selfCheckin
    case superHost
    
    var title: String{
        switch self{
        case .selfCheckin: return "Self CheckIn"
        case .superHost: return "Superhost"
        }
    }
    var imageName: String{
        switch self{
        case .selfCheckin: return "door.right.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var subtitle: String{
        switch self{
        case .selfCheckin: return "Check yourself in the keypad"
        case .superHost: return "Superhosts are experienced, highly rated hosts who are commited to providing great experiences for guests"
        }
    }
    
    var id: Int {return self.rawValue}
    
}

enum ListingAmeneties: Int, Codable, Identifiable, Hashable{
    case pool
    case kitchen
    case wifi
    case tv
    case laundry
    case alarmSystem
    case office
    case balcony
    
    var title: String{
        switch self{
            case .pool: return "Pool"
            case .kitchen: return "Kitchen"
            case .wifi: return "WiFi"
            case .tv: return "Television"
            case .laundry: return "Laundry"
            case .alarmSystem: return "Alarm System"
            case .office: return "Office"
            case .balcony: return "Balcony"
        }
    }
    
    var imageName:String{
        switch self {
            case .pool: return "figure.pool.swim"
            case .kitchen: return "cooktop"
            case .wifi: return "wifi.circle.fill"
            case .tv: return "tv"
            case .laundry: return "washer"
            case .alarmSystem: return "shield.checkered"
            case .office: return "lamp.desk"
            case .balcony: return "building.2"
        }
    }
    
    var id: Int {return self.rawValue}
}


enum LitingType: Int, Codable, Identifiable, Hashable{
    case apartment
    case house
    case villa
    case townHouse
    
    var description: String {
        switch self{
        case .apartment: return "Apartment"
        case .house: return "House"
        case .villa: return "Villa"
        case .townHouse: return "Town House"
        }
    }
    var id: Int { return self.rawValue }
}
