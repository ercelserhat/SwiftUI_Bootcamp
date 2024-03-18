//
//  AnimationBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 19.03.2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
//                withAnimation(Animation.default.repeatForever(autoreverses: true)){
//                    isAnimated.toggle()
//                }
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.default, value: isAnimated)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
