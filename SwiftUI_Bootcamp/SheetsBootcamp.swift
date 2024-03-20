//
//  SheetsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 21.03.2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 10)))
            })
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
            })
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
