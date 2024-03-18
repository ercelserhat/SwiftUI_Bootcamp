//
//  ButtonsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 18.03.2024.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack (spacing: 20) {
            Text(title)
            Button("Press Me!"){
                self.title = "Button #1 was pressed"
            }
            .tint(.red)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("SAVE".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    )
            })
            
            Button(action: {
                self.title = "Button #4 was pressed"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
