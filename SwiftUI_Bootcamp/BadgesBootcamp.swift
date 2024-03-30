//
//  BadgesBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 31.03.2024.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        
        List{
            Text("Hello World")
                .badge("New Items")
            Text("Hello World")
                .badge(5)
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
        
        TabView{
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Text")
                }
                .badge("New")
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Text")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Text")
                }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
