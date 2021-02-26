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
        ScrollView (.vertical , showsIndicators:false) {
            VStack (alignment: .leading , spacing: 16) {
                
                HomeNavBarView()
                Text("Bonjour, Islam")
                    .font(.system(size: 20.0))
                    .fontWeight(.medium)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("What ould you like to eat today ? ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                SearchAndFilterView(search: $search)
                
                TabTitleView(title: "Today's Fresh Recipes")
                
                ScrollView (.horizontal,showsIndicators:false) {
                    HStack (spacing:16) {
                        BigRecipeCardView(image: #imageLiteral(resourceName: "fresh_recipe_1"))
                        BigRecipeCardView(image: #imageLiteral(resourceName: "fresh_recipe_2"))
                        BigRecipeCardView(image: #imageLiteral(resourceName: "reco_3"))
                        BigRecipeCardView(image: #imageLiteral(resourceName: "reco_2"))
                    }
                }
                
                TabTitleView(title: "Recommended")
                
                VStack {
                    SmallRecipeCardView(image: #imageLiteral(resourceName: "reco_2"), title: "French Toast with Berries")
                    SmallRecipeCardView(image: #imageLiteral(resourceName: "reco_3"), title: "English Toast with Berries")
                    SmallRecipeCardView(image: #imageLiteral(resourceName: "reco_1"), title: "English Toast with Berries")
                }
                
                
     
                Spacer()
                
                
            }
            .padding()
        }
        
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
            .background(Color("LightGrayColor"))
            .cornerRadius(8)
            
            Image(uiImage: #imageLiteral(resourceName: "filter"))
                .padding()
                .background(Color("LightGrayColor"))
                
                .cornerRadius(8)
        }
    }
}

struct TabTitleView: View {
    var title : String
    var body: some View {
        HStack{
            
            Text(title)
                .fontWeight(.semibold)
                .font(.system(size: 20.0))
            Spacer()
            
            Text("See All")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.system(size: 20.0))
                .fontWeight(.medium)
            
            
            
        }
    }
}

struct BigRecipeCardView: View {
    let image: UIImage
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing: 8) {
                
                Image(uiImage: #imageLiteral(resourceName: "like"))
                    .padding(.bottom,60)
                
                Text("BreakFast")
                    .font(.caption)
                    .foregroundColor(Color(#colorLiteral(red: 0.0634567216, green: 0.1739850938, blue: 0.2506789267, alpha: 0.6780017671)))
                Text("French Toast with Berries")
                    .fontWeight(.medium)
                
                HStack (spacing: 2){
                    ForEach(0..<5){ item in
                        Image(uiImage: #imageLiteral(resourceName: "star"))
                            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("PrimaryColor"))
                        
                    }
                }
                
                Text("120 Calories")
                    .font(.caption)
                    .foregroundColor(Color("PrimaryColor"))
                
                
                HStack{
                    
                    Image(uiImage: #imageLiteral(resourceName: "time"))
                    Text("10 min")
                        .font(.caption)
                        .foregroundColor(Color("GrayColor"))
                    Spacer()
                    Image(uiImage: #imageLiteral(resourceName: "serving"))
                    Text("1 Serving")
                        .font(.caption)
                        .foregroundColor(Color("GrayColor"))
                    
                }
                
                
                
                
                
            }
            .frame(width: 147)
            .padding()
            .background(Color("LightGrayColor"))
            .cornerRadius(20)
            
            Image(uiImage: image)
                .offset(x:45,y:-60)
        }.padding(.trailing,25)
    }
}

struct SmallRecipeCardView: View {
    let image: UIImage
    let title:String
    var body: some View {
        HStack{
            
            Image(uiImage: image)
                .aspectRatio(1,contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            VStack (alignment: .leading, spacing:4){
                
                
                
                Text("BreakFast")
                    .font(.caption)
                    .foregroundColor(Color(#colorLiteral(red: 0.0634567216, green: 0.1739850938, blue: 0.2506789267, alpha: 0.6780017671)))
                Text(title)
                    .fontWeight(.medium)
                
                HStack (spacing: 2){
                    ForEach(0..<5){ item in
                        Image(uiImage: #imageLiteral(resourceName: "star"))
                            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("PrimaryColor"))
                        
                    }
                    Text("120 Calories")
                        .font(.caption)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.leading)
                }
                
                
                
                
                HStack{
                    
                    Image(uiImage: #imageLiteral(resourceName: "time"))
                    Text("10 min")
                        .font(.caption)
                        .foregroundColor(Color("GrayColor"))
                    
                    Image(uiImage: #imageLiteral(resourceName: "serving"))
                    Text("1 Serving")
                        .font(.caption)
                        .foregroundColor(Color("GrayColor"))
                    Spacer()
                    
                }
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("LightGrayColor"))
        .cornerRadius(18)
    }
}
