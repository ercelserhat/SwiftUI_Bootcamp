//
//  IfLetGuardBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 29.03.2024.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserID: String? = nil
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding!")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData2()
            }
        }
    }
    
    func loadData(){
        if let userID = currentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else{
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2(){
        guard let userID = currentUserID else{
            displayText = "Error. There is no User ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
