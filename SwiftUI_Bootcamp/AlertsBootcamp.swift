//
//  AlertsBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 23.03.2024.
//

import SwiftUI

struct AlertsBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessasge: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts{
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            VStack{
                Button("Button 1"){
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessasge = "The video could not be uploaded"
                    alertType = .error
                    showAlert.toggle()
                }
                Button("Button 2"){
//                    alertTitle = "SUCCESSFULLY UPLOADED VIDEO 🎉"
//                    alertMessasge = "Your video is now public!"
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
    //            Alert(title: Text("There was an error!"))
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert{
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = .green
//            }),
//            secondaryButton: .cancel())
        
//        return Alert(title: Text(alertTitle), message: Text(alertMessasge), dismissButton: .default(Text("OK")))
        
        switch alertType {
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("There was an error!"))
        case nil:
            return Alert(title: Text("ERROR"))
        }
    }
}

#Preview {
    AlertsBootcamp()
}
