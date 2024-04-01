//
//  NavigationSplitViewBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 2.04.2024.
//

import SwiftUI

//NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewBootcamp: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil
    
    var body: some View {
//        NavigationSplitView {
//            Color.red
//        } detail: {
//            Color.blue
//        }
        
//        NavigationSplitView {
//            Color.red
//        } content: {
//            Color.blue
//        } detail: {
//            Color.green
//        }
        
        NavigationSplitView(columnVisibility: $visibility) {
//            List{
//                ForEach(FoodCategory.allCases, id:\.rawValue){category in
//                    Button(category.rawValue.capitalized){
//                        selectedCategory = category
//                    }
//                }
//            }
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory){category in
//                Button(category.rawValue.capitalized){
//                    selectedCategory = category
//                }
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory{
                Group{
                    switch selectedCategory{
                    case .fruits:
//                        List{
//                            ForEach(Fruit.allCases, id:\.rawValue){fruit in
//                                Button(fruit.rawValue.capitalized){
//                                    selectedFruit = fruit
//                                }
//                            }
//                        }
                        List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit){fruit in
//                            Button(fruit.rawValue.capitalized){
//                                selectedFruit = fruit
//                            }
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegetables:
                        EmptyView()
                    case.meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else{
                Text("Select a category to begin!")
            }
        } detail: {
            if let selectedFruit{
                Text("You selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select something!")
            }
        }
        .navigationSplitViewStyle(.prominentDetail)

    }
}

enum FoodCategory: String, CaseIterable{
    case fruits, vegetables, meats
}

enum Fruit: String, CaseIterable{
    case apple, babana, orange
}

#Preview {
    NavigationSplitViewBootcamp()
}
