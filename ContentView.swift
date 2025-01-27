//
//  ContentView.swift
//  KWKFunAppCodingChallenge
//
//  Created by Sena Hordoffa on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundImage = UIImage(named: "lightgreenbackground-app")
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    var body: some View {
        
            TabView{
                PageOne()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                        
                    }
                PageTwo()
                    .tabItem {
                        Image(systemName: "figure.wave")
                        Text("Learn More")
                    }
                
                PageFour()
                    .tabItem {
                        Image(systemName: "tree")
                        Text("My Garden")
                    }
                
                PageThree()
                    .tabItem {
                        Image(systemName: "location.magnifyingglass")
                        Text("Where To Go")
                    }
                
                
            }
            .accentColor(.brown)
        
        
    }
}

#Preview {
    ContentView()
}
