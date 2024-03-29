//
//  ModelBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 29.03.2024.
//

import SwiftUI

struct UserModel: Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
        UserModel(displayName: "Serhat", userName: "ercelserhat", followerCount: 100, isVerified: true),
        UserModel(displayName: "Serap", userName: "ercelserap", followerCount: 200, isVerified: false),
        UserModel(displayName: "Seda", userName: "ercelseda", followerCount: 300, isVerified: true)
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users){ user in
                    HStack(spacing: 15.0){
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
