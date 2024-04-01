//
//  SafeAreaInsetBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 1.04.2024.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10){_ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//                , alignment: .bottom
//            )
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .padding()
                    .background(.yellow)
                    .clipShape(Circle())
                    .padding()
                    .shadow(radius: 10)
            }
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: .bottom))
                    .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
