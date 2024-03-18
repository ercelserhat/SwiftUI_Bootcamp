//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 18.03.2024.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
