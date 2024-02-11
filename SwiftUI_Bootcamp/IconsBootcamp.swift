//
//  IconsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 11.02.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "square.grid.3x1.folder.badge.plus")
            .font(.largeTitle)
            .symbolRenderingMode(.multicolor)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
//            .font(.title)
//            .font(.system(size: 200))
//            .foregroundStyle(Color.red)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
