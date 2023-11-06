//
//  SearchAndFilterBar.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 04/11/23.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any week - add guest")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.3)
                .foregroundStyle(Color(.systemGray3))
                .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
