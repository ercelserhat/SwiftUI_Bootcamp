//
//  AnimationTimingBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 19.03.2024.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.default, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.linear(duration: 2), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
