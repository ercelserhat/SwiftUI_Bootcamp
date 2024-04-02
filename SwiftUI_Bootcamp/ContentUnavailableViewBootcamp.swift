//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 2.04.2024.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *){
            ContentUnavailableView.search
            
            ContentUnavailableView(
                "No Internet Connection",
                systemImage: "wifi.slash",
                description: Text("Please connect to the internet and try again."))
        } else {
            // Fallback on earlier versions
            // FakeContentUnavailableView()
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
