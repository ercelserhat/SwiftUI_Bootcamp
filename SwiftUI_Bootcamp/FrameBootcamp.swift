//
//  FrameBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 12.02.2024.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(.green)
//            .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(.red)
        
        Text("Hello, World!")
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
        
    }
}

#Preview {
    FrameBootcamp()
}
