//
//  ContextMenuBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 24.03.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift Bootcamp")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .padding(30)
        .background(backgroundColor.clipShape(RoundedRectangle(cornerRadius: 25.0)))
        .foregroundStyle(.white)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
               Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack{
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
