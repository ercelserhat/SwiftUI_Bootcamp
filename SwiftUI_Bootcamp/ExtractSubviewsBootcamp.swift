//
//  ExtractSubviewsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 18.03.2024.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View{
        HStack {
            MyItem(title: "Apples", count: 2, color: .red)
            MyItem(title: "Oranges", count: 5, color: .orange)
            MyItem(title: "Bananas", count: 8, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
