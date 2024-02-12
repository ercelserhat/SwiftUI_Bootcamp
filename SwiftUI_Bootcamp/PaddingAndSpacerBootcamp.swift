//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 12.02.2024.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ")
                
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
                
        )
        .padding(.horizontal, 10)
            
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
