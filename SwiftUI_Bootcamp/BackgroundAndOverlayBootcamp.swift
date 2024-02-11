//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 12.02.2024.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(
//                Color.red
//                LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100)
            )
            .background(
                Circle()
                    .fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120)
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
