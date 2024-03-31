//
//  ToolbarBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 31.03.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths){
            ZStack{
                Color.indigo.ignoresSafeArea()
                
                ScrollView{
                    TextField("Placeholder...", text: $text)
                    
                    ForEach(0..<50){_ in
                        Rectangle()
                            .fill(.white)
                            .frame(width: 200, height: 200)
                            
                    }
                }
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear"))
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
//                ToolbarItem(placement: .principal) {
//                    Image(systemName: "house.fill")
//                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen1"){
                    paths.append("Screen1")
                }
                Button("Screen2"){
                    paths.append("Screen2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
