//
//  GroupBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 1.04.2024.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello, World!")
            
            Group{
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.caption)
            .foregroundStyle(.green)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
