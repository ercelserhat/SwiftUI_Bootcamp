//
//  TextBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 11.02.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.".uppercased())
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: Color.green)
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .multilineTextAlignment(.center)
            .baselineOffset(10)
            .kerning(5)
            .foregroundStyle(.red)
            .frame(width: 200, height: 300)
            .minimumScaleFactor(0.5)
    }
}

#Preview {
    TextBootcamp()
}
