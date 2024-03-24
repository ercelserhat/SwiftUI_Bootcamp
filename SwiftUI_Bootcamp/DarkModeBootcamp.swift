//
//  DarkModeBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This text is primary")
                        .foregroundStyle(.primary)
                    Text("This text is secondary")
                        .foregroundStyle(.secondary)
                    Text("This text is black")
                        .foregroundStyle(.black)
                    Text("This text is white")
                        .foregroundStyle(.white)
                    Text("This text is red")
                        .foregroundStyle(.red)
                    Text("This color is globally adaptive!")
                        .foregroundStyle(Color("adaptiveColor"))
                    
                    Text("This color is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .pink)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
