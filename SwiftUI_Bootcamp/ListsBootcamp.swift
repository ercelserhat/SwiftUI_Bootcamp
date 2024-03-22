//
//  ListsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 22.03.2024.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List{
                Section {
                    ForEach(fruits, id: \.self){fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundStyle(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(.pink)
                    }
    //                .onDelete(perform: { indexSet in
    //                    delete(indexSet: indexSet)
    //                })
                    .onDelete(perform: delete)
//                    .onMove(perform: { indices, newOffset in
//                        move(indices: indices, newOffset: newOffset)
//                    })
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                } header: {
                    HStack{
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundStyle(.orange)
                } footer: {
                    Text("Fruits footer")
                }
                
                Section {
                    ForEach(veggies, id: \.self){ veggie in
                        Text(veggie.capitalized)
                    }
                } header: {
                    Text("Vegetables")
                } footer: {
                    Text("Vegetables footer")
                }
                .listRowSeparatorTint(.green)

            }
//            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .tint(.red)
    }
    
    var addButton: some View{
        Button("Add"){
            add()
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    ListsBootcamp()
}
