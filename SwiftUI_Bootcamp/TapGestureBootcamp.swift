//
//  TapGestureBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 29.03.2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40){
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 25))
            })
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 25))
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
