//
//  AsyncImageBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 31.03.2024.
//

import SwiftUI

/*
 case empty -> No image is loaded
 case success(image) -> An image succesfully loaded
 case failure(error) -> An image failed to load with an error
 */

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .clipShape(RoundedRectangle(cornerRadius: 25.0))
//        }, placeholder: {
//            ProgressView()
//        })
        
        AsyncImage(url: url) { phase in
            switch phase{
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(radius: 20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
