//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 12.02.2024.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(
//               Color.red
//               LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120)
//            )
        
        Circle()
            .fill(.pink)
            .frame(width: 100, height: 100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            )
            .background(
                Circle()
                    .fill(.purple)
                    .frame(width: 110, height: 110)
            )
        
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                , alignment: .bottomTrailing
            )
        
        Spacer()
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            )
                            .shadow(color: .black.opacity(0.8), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
        
        Spacer()
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
