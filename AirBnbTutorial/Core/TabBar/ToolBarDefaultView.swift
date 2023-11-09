//
//  ToolBarDefaultView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 04/11/23.
//

import SwiftUI

struct ToolBarDefaultView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 2.0){
            NavigationLink(destination: WishlistView()){
                VStack(spacing: 0){
                    Image(systemName: "heart.fill")
                    Spacer()
                    Text("Whislists")
                        .font(.caption2)
                }
                .padding()
                .foregroundStyle(Color(.systemGray))
            }

            Spacer()
            
            NavigationLink(destination: ExploreOptView()){
                VStack(spacing: 0){
                    Image(systemName: "magnifyingglass")
                    Spacer()
                    Text("Explore")
                        .font(.caption2)
                }
                .padding()
                .foregroundStyle(Color(.systemGray))
            }

            Spacer()

            NavigationLink(destination: ProfileView()){
                VStack(spacing: 0){
                    Image(systemName: "person.crop.circle.fill")
                    Spacer()
                    Text("Profile")
                        .font(.caption2)
                }
                .padding()
                .foregroundStyle(Color(.systemGray))
            }
        }
        .frame(width: 300 , height: 60)
    }
}

#Preview {
    ToolBarDefaultView()
}
