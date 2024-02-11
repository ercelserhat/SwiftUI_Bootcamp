//
//  ShapesBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 11.02.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.blue)
//            .foregroundStyle(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 10)
            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.3, to: 1)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
