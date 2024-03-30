//
//  EnvironmentObjectBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 30.03.2024.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self){ item in
                    NavigationLink(destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .clipShape(.rect(cornerRadius: 30))
            }
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack{
            //background
            LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //foreground
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id:\.self){item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
//    DetailView(selectedItem: "iPhone")
//    FinalView()
}
