//
//  TabViewBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            BrowseView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            ProfilView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(.white)
    }
}
struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            VStack{
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button(action: {
                   selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .foregroundStyle(.red)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
        }
    }
}

struct BrowseView: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("BROWSE TAB")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}

struct ProfilView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            Text("PROFILE TAB")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    TabViewBootcamp()
}
