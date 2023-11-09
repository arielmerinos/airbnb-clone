//
//  WishlistView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 08/11/23.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading, spacing: 8){
                    Text("Log in to see your wishlists")
                        .font(.headline)
                    
                    Text("You can create view, edit or add once you've loged in")
                        .font(.caption)
                    
                }
                
                Button{
                    print("login")
                } label: {
                    Text("Log in")
                        .padding()
                        .foregroundStyle(.white)
                        .frame(width: 320, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                
                Spacer()
            }
            .navigationTitle("Wishlists")
            .padding()
        }
    }
}

#Preview {
    WishlistView()
}
