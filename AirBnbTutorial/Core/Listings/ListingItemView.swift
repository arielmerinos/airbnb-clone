//
//  ListingView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 04/11/23.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        var images = [
            "listing-1",
            "listing-2",
            "listing-3",
            "listing-4",
        ]
        
        VStack(spacing: 8){
            // Images
            //This .tabViewStyle helps us to see the botton menu . . . . between images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //Listing details
            HStack(alignment: .top){
                //Details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 miles away")
                        .foregroundStyle(.gray)
                    Text("November 3 - 10")
                        .foregroundStyle(.gray)
                    
                    
                    HStack(spacing: 4){
                        Text("$657")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)

                }
                //Rating
                Spacer()
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.black)
                    Text("4.56")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
            }
            .font(.footnote)
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
