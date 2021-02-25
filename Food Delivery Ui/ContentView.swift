//
//  ContentView.swift
//  Food Delivery Ui
//
//  Created by mac on 2/4/21.
//  Copyright © 2021 mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search : String=""
    var body: some View {
        VStack (alignment: .leading , spacing: 16) {
            
            HomeNavBarView()
            Text("Bonjour, Islam")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("What ould you like to eat today ? ")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            SearchAndFilterView(search: $search)
            
            
            Spacer()
            
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeNavBarView: View {
    var body: some View {
        HStack{
            Image(uiImage: #imageLiteral(resourceName: "menu"))
                .onTapGesture {
                    
                }
            Spacer()
            
            Image(uiImage: #imageLiteral(resourceName: "notifications"))
                .onTapGesture {
                    
                }
            
            
            
        }
    }
}

struct SearchAndFilterView: View {
    @Binding var search: String
    var body: some View {
        HStack {
            HStack {
                Image(uiImage: #imageLiteral(resourceName: "search"))
                
                TextField("search for recipes" , text : $search)
                
            }
            .padding()
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(8)
            
            Image(uiImage: #imageLiteral(resourceName: "filter"))
                .padding()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                
                .cornerRadius(8)
        }
    }
}
