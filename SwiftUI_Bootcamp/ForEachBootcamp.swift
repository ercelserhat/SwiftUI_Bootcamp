//
//  ForEachBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 22.02.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack{
            ForEach(0..<5){ index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Index is: \(index)")
                }
            }
            
            ForEach(data.indices, id: \.self){ index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
