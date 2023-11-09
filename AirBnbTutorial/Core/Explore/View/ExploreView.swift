//
//  ExploreView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 04/11/23.
//

import SwiftUI 



struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView{
                DestinationSerachView( show: $showDestinationSearchView)
            } else{
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    //Only render the items on screen only as appearing
                    LazyVStack(spacing: 32){
                        ForEach(0...10, id: \.self){ listing in
                            NavigationLink(value: listing){
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    
                }
                .navigationDestination(for: Int.self) { listing in
                    DetailView()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
