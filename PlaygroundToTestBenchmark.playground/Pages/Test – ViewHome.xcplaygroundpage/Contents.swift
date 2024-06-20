//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a home screen with a tab view that includes tabs for Home, Search, and Profile.

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        TabView {
            Text("Home View")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

