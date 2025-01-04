//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = .yellow
    
    
    
    
    
    enum MyAlerts {
        case success, error
    }
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Button("Button 1") {
                    alertType = .success
                    showAlert.toggle()
                    

                }
                Button("Button 2") {
                    alertType = .error
                    showAlert.toggle()
                    
                }
                
            }
            .alert(isPresented: $showAlert) {
                getAlert()
                
            }

        }
    }
    
    func getAlert() -> Alert {
        
        //MARK: - Example 1
        //            Alert(title: Text("There was an error !"))
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here will describe the error"),
//            primaryButton: .destructive(
//                Text("Delete"),
//                action: {
//                    backgroundColor = .red
//                }
//            ),
//            secondaryButton: .cancel(Text("Cancel"))
//        )
        
        //MARK: - Example 2
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
        
        switch alertType {
        case .success:
            return Alert(title: Text("This was a success"))
        case .error:
            return Alert(
                title: Text("There was an error"),
                message: nil,
                dismissButton: .default(
                    Text("OK"),
                    action: {
                        backgroundColor = .red
                    }
                )
            )
        default:
            return Alert(title: Text("ERROR"))
        }
    }
    
    //MARK: - Not: alert de 2 tane button ekleyebilirsin sınırlı bu
}

#Preview {
    AlertBootcamp()
}
