//
//  PickerBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
//        VStack {
//            Picker(
//                selection: $selection) {
//                    ForEach(filterOptions, id: \.self){option in
//                        HStack {
//                            Text(option)
//                            Image(systemName: "hear.fill")
//                        }
//                        .tag(option)
//                    }
//                } label: {
//                    HStack{
//                        Text("Filter:")
//                        Text(selection)
//                    }
//                    .font(.headline)
//                    .foregroundStyle(.white)
//                    .padding()
//                    .padding(.horizontal)
//                    .background(.blue)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .shadow(radius: 10)
//            }
////                .background(.gray.opacity(0.3))
////                .pickerStyle(WheelPickerStyle())
////                .pickerStyle(InlinePickerStyle())
////                .pickerStyle(PalettePickerStyle())
//                .pickerStyle(MenuPickerStyle())
//        }

        Picker(
            selection: $selection) {
                ForEach(filterOptions.indices){index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(SegmentedPickerStyle())

    }
}

#Preview {
    PickerBootcamp()
}
