//
//  TernaryBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 18.03.2024.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 300 : 150, height: 150)
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
