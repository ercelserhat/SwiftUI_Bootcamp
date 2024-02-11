//
//  ColorsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 11.02.2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("customColor")
            
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("customColor").opacity(0.7), radius: 10, x: 10, y: 10)
    }
}

#Preview {
    ColorsBootcamp()
}
