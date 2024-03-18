//
//  ConditionalBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 18.03.2024.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Button("Circle Button: \(showCircle.description)"){
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)"){
                showRectangle.toggle()
            }
            
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100)
            } else if showRectangle{
                Rectangle()
                    .frame(width: 100, height: 100)
            } else{
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
