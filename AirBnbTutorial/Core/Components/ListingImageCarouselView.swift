//
//  ListingImageCarouselView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 04/11/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ].shuffled()
    
    var body: some View {
        TabView{
            ForEach(images, id:\.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
