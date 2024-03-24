//
//  StepperBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                //increment
                incrementWidth(amount: 10)
            } onDecrement: {
                //decrement
                incrementWidth(amount: -10)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
