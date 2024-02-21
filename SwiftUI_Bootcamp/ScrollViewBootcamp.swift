//
//  ScrollViewBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 22.02.2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false){
//            VStack{
//                ForEach(0..<50){ index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//            }
//        }
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100){index in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
