//
//  NavigationViewBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 22.03.2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Hello, world", destination: OtherScreen())
                
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden)
            .navigationBarItems(
                leading: 
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing: 
                    NavigationLink(
                        destination: OtherScreen(),
                        label: {
                            Image(systemName: "gear")
                })
                .tint(.red)
            )
        }
    }
}

struct OtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
//                .toolbar(.hidden)
            VStack {
                Button("BACK BUTTON"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd Screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
