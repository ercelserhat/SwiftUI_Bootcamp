//
//  PageTabViewBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct PageTabViewBootcamp: View {
    
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    var body: some View {
        VStack{
            TabView{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundStyle(.red)
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundStyle(.green)
                RoundedRectangle(cornerRadius: 25.0)
            }
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
            
            
            TabView{
                ForEach(icons, id: \.self){icon in
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .padding(30)
                }
            }
            .background(
                RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300)
            )
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

#Preview {
    PageTabViewBootcamp()
}
