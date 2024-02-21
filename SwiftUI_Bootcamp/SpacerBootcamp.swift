//
//  SpacerBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 22.02.2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            HStack(spacing: 0){
                
                Spacer(minLength: 30)
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                
                Spacer(minLength: 60)
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
            }
            .background(.yellow)
            .padding(.horizontal, 100)
            .background(.blue)
            
            Spacer()
            
        }
        
    }
}

#Preview {
    SpacerBootcamp()
}
