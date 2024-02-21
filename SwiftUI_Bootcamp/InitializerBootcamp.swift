//
//  InitializerBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 22.02.2024.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, title: String) {
        self.count = count
        self.title = title
        
        if title == "Apples"{
            self.backgroundColor = .red
        }else{
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
}

#Preview {
    InitializerBootcamp(count: 24, title: "Apples")
}
