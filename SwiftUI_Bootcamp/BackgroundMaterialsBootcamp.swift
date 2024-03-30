//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 31.03.2024.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
//            .background(.thinMaterial)
//            .background(.thickMaterial)
//            .background(.regularMaterial)
//            .background(.ultraThickMaterial)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 30))
        }
        .background(
            Image("aigenerated")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
