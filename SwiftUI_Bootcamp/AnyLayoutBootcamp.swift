//
//  AnyLayoutBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 2.04.2024.
//

import SwiftUI

//https://useyourloaf.com/blog/size-classes

struct AnyLayoutBootcamp: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12){
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout =  horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gama")
            }
            
//            if horizontalSizeClass == .compact{
//                VStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gama")
//                }
//            } else {
//                HStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gama")
//                }
//            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
