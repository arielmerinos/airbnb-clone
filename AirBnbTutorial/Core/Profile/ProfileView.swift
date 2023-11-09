//
//  ProfileView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 08/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 12){
            // Profile login view
            VStack(alignment: .leading, spacing: 32){
                VStack (alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.bold)
                    
                    Text("Log in to start planning your next trip")
                }
                
                Button{
                    print("login")
                } label: {
                    Text("Log in")
                        .padding()
                }
                .foregroundStyle(.white)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))

                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign Up")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.caption)
            }
            //
            VStack(spacing: 8){
                ProfileOptionRowView(imageName: "gear", title: "Seettings")
                ProfileOptionRowView(imageName: "accessibility", title: "Accesibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit Help center")

            }
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
