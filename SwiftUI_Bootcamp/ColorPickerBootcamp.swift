//
//  ColorPickerBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
