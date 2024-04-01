//
//  ViewThatFitsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 2.04.2024.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            ViewThatFits{
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display")
                Text("This is some text that")
            }
        }
        .frame(height: 300)
        .padding(20)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
