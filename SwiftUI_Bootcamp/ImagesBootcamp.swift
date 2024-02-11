//
//  ImagesBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 11.02.2024.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
//        Image("wallpaper")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
//            .scaledToFill()
//            .frame(width: 300, height: 150)
//            .clipped()
//            .clipShape(
//                RoundedRectangle(cornerRadius: 25.0)
//                Circle()
//            )
        
        Image("swift")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundStyle(.blue)
    }
}

#Preview {
    ImagesBootcamp()
}
