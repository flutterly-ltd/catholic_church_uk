//
//  MainView.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 16/09/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                ZStack {
                    LinearGradient(colors: [Color.clear, Color.secondary.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                    VStack(alignment: .leading) {
                        
                        ScrollView(.horizontal) {
                            HStack {
                                    ForEach(0..<5) {image in
                                        Link(destination: URL(string: "https://www.apple.com")!) {
                                            ZStack {
                                                Image(uiImage: "https://www.cbcew.org.uk/wp-content/uploads/sites/3/2021/07/mass-eucharist-2560x700-1.jpg".load())
                                                    .resizable()
                                                    .overlay(Color.black.opacity(0.25))
                                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                                    .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    
                                                    .clipped()
                                                .cornerRadius(5)
                                                Text("Step 4 Guidance for Communal Worship during the COVID-19 Pandemic")
                                                    .foregroundColor(.white)
                                                    .font(.headline)
                                                    .lineLimit(3)
                                                    .shadow(color: .black, radius: 2, x: 0, y: 0)
                                                    .padding()
                                            }.frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        }
                                    }
                            }
                        }
                    }
                }.frame(height: 300)
                
                ZStack {
                    LinearGradient(colors: [Color.clear, Color.secondary.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                    VStack(alignment: .leading) {
                        Text("Latest News")
                            .font(.title)
                            .padding()
                        ScrollView(.horizontal) {
                            HStack {
                                    ForEach(0..<5) {image in
                                        Link(destination: URL(string: "https://www.apple.com")!) {
                                            Image(uiImage: "https://www.cbcew.org.uk/wp-content/uploads/sites/3/2021/07/mass-eucharist-2560x700-1.jpg".load())
                                                .resizable()
                                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                                .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                
                                                .clipped()
                                            .cornerRadius(5)
                                        }
                                    }
                            }
                        }
                    }
                }.frame(height: 300)
            }.navigationTitle("Catholic UK")
        }
            
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
