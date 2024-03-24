//
//  ToggleBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 25.03.2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(
                isOn: $toggleIsOn) {
                    Text("Change status")
                }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
