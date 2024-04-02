//
//  ObservableBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 2.04.2024.
//

import SwiftUI

class ObservableViewModel: ObservableObject{
    @Published var title: String = "Some title"
}

struct ObservableBootcamp: View {
    @StateObject private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40){
            Button(viewModel.title){
                viewModel.title = "New Title"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environmentObject(viewModel)
    }
}

struct SomeChildView: View {
    @ObservedObject var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title){
            viewModel.title = "Random title!"
        }
    }
}

struct SomeThirdView: View {
    @EnvironmentObject var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title){
            viewModel.title = "Third view title!"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
