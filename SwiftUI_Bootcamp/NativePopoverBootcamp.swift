//
//  NativePopoverBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 2.04.2024.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = ["Very good!", "Average", "Very bad"]
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            
            Button("Click Me!"){
                showPopover.toggle()
            }
            .padding(20)
            .background(.yellow)
//            .popover(isPresented: $showPopover, content: {
//                Text("Hello, World!")
////                    .presentationCompactAdaptation(.sheet)
////                    .presentationCompactAdaptation(.fullScreenCover)
//                    .presentationCompactAdaptation(.popover)
//            })
            
//            .popover(isPresented: $showPopover, attachmentAnchor: .point(.topTrailing), content: {
//                Text("Hello, World!")
//                    .presentationCompactAdaptation(.popover)
//            })
            
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                ScrollView {
                    VStack(spacing: 15, content: {
                        ForEach(feedbackOptions, id: \.self){option in
                            Button(option){
                                
                            }
                            if option != feedbackOptions.last{
                                Divider()
                            }
                        }
                    })
                    .padding(20)
                    .presentationCompactAdaptation(.popover)
                }
            })
        }

    }
}

#Preview {
    NativePopoverBootcamp()
}
