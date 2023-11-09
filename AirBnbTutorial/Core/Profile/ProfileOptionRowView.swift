//
//  ProfileOptionRowView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 08/11/23.
//

import SwiftUI

struct ProfileOptionRowView: View {
    var imageName: String
    var title: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ProfileOptionRowView( imageName: "gear", title: "Settings")
}
