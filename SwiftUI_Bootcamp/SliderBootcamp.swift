//
//  SliderBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack{
            Text("Rating:")
//            Text("\(sliderValue)")
            Text(String(format: "%.1f", sliderValue))
                .foregroundStyle(color)
            Slider(value: $sliderValue, in: 0...5, step: 0.5)
                .tint(.red)
            
            Slider(value: $sliderValue, in: 1...5, step: 1.0) {
                Text("Title")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { Bool in
                color = .green
            }
        }
    }
}

#Preview {
    SliderBootcamp()
}
