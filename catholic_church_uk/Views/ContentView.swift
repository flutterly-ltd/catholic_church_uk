//
//  ContentView.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 13/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        
            
                
            TabView(selection: $selection) {
                        MainView()
                            .tabItem {
                                Image(systemName: "newspaper")
                                Text("News")
                            }.tag(0)
                        ParishDirectory()
                            .tabItem {
                                Image(systemName: "doc.text.magnifyingglass")
                                Text("Parish Directory")
                            }.tag(1)
                        ParishDirectory()
                            .tabItem {
                                Image(systemName: "chevron.left.forwardslash.chevron.right")
                                Text("Developer")
                            }.tag(2)
                    }
                
               
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
