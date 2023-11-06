//
//  DetailView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 04/11/23.
//

import SwiftUI
import MapKit

struct DetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                
                ListingImageCarouselView()
                    .frame(height: 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.64")
                        Text("-")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            // Host info view
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire Villa hostes by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2){
                        Text("4 guests - ")
                        Text("4 bedrooms - ")
                        Text("4 beds - ")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                
                Spacer()
                
                Image(.maleProfilePhoto)
                    .resizable()
                    .frame(width: 64, height: 64)
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            // Listing features
            
            VStack{
                ForEach(0..<2){
                    feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading, spacing: 16){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhosts are exprecience, highly rated who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 2)
                    
                }
            }
            .padding(.horizontal, 16)
            
            Divider()
            
            //Bedrooms view
            VStack(alignment: .leading){
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15){
                        ForEach(1..<5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                                    .font(.caption)
                                
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            //What the place offers
            VStack(alignment: .leading, spacing:16){
                Text("What the place offers")
                    .font(.headline)
                ForEach(0..<5){ feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("WiFi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map{
                    
                }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    DetailView()
}
