//
//  ResizableSheetsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 1.04.2024.
//

import SwiftUI

struct ResizableSheetsBootcamp: View {
    @State private var showSheet: Bool = false
    @State private var detens: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView(detens: $detens)
//                .presentationDetents([.large])
//                .presentationDetents([.medium])
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.2), .medium, .large])
//                .presentationDetents([.height(500)])
//                .presentationDetents([.fraction(0.5), .medium, .large], selection: $detens)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        })
//        .onAppear{
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    @Binding var detens: PresentationDetent
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20){
                Button("%20"){
                    detens = .fraction(0.2)
                }
                
                Button("MEDIUM"){
                    detens = .medium
                }
                
                Button("600px"){
                    detens = .height(600)
                }
                
                Button("LARGE"){
                    detens = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .height(600), .medium, .large], selection: $detens)
        
    }
}

#Preview {
    ResizableSheetsBootcamp()
}
