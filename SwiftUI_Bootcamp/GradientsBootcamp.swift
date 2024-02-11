//
//  GradientsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 11.02.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(colors: [Color.red, Color.blue], startPoint: .topLeading, endPoint: .bottom)
//                RadialGradient(colors: [Color.red, Color.blue], center: .topLeading, startRadius: 5, endRadius: 400)
                AngularGradient(colors: [Color.red, Color.blue], center: .center, angle: .degrees(45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
