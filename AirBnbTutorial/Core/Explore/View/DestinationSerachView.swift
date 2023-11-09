//
//  DestinationSerachView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 04/11/23.
//

import SwiftUI

enum DestinationSeachOptions{
    case location
    case dates
    case guests
}

struct DestinationSerachView: View {
    
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSeachOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    
    @State private var adultsGuests: Int = 1
    @State private var childGuests: Int = 0
    
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            HStack {
                Button{
                    withAnimation(.snappy){
                        show.toggle()
                    }
                }label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                if !destination.isEmpty {
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .padding(.horizontal, 14)
                }
                
                
            }
            .padding(.horizontal)
            
            if selectedOption == .location{
                
                VStack(alignment: .leading){
                    
                    
                    Text("Where to? ")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundColor(Color(.systemGray4))
                    }
                }
                .modifier(CollapsableDestinationViewModifier())
                .onTapGesture {
                    selectedOption = .location
                }
            } else{
                ColapsedPickerView(
                    title: "Where",
                    description: "Add destinations")
                    .onTapGesture {
                        withAnimation(.snappy){
                            selectedOption = .location
                        }
                    }
            }
            
            
            // Date Selection view
            if selectedOption == .dates {
                VStack(alignment: .leading){
                    Text("When's your trip?")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    HStack{
                        Text("From")
                        DatePicker(
                            "",
                            selection: $startDate,
                            displayedComponents: [.date]
                        )
                    }
                    
                    Divider()
                    
                    HStack{
                        Text("To")
                        DatePicker(
                            "",
                            selection: $endDate,
                            displayedComponents: [.date]
                        )
                    }
                }
                .modifier(CollapsableDestinationViewModifier())
            }else {
                ColapsedPickerView(
                    title: "When",
                    description: "Add dates")
                    .onTapGesture {
                        withAnimation(.snappy){
                            selectedOption = .dates
                        }
                    }
            }
            
            //Num guest view
            if selectedOption == .guests {
                VStack(alignment: .leading){
                    Text("Who's coming?")
                        .font(.headline)
                        .fontWeight(.bold)
                    Divider()
                    HStack{
                        Text("\(adultsGuests) Adults")
                            .font(.subheadline)
                        Stepper("", value: $adultsGuests, in: 0...6, step: 1)
                    }
                    HStack{
                        Text("\(childGuests) Child")
                            .font(.subheadline)
                        Stepper("", value: $childGuests, in: 0...6, step: 1)
                    }
                    
                }
                .modifier(CollapsableDestinationViewModifier())

            } else {
                ColapsedPickerView(
                    title: "Who",
                    description: "Add guests")
                    .onTapGesture {
                        withAnimation(.snappy){
                            selectedOption = .guests
                        }
                    }
            }

        }
        Spacer()
    }
    
}

#Preview {
    DestinationSerachView(show: .constant(true) )
}

struct ColapsedPickerView: View {
    let title: String
    let description: String
    
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 12)
    }
}

struct CollapsableDestinationViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content                
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
