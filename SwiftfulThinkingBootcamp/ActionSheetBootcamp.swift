//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 4.01.2025.
//

import SwiftUI
//MARK: - Not
// action sheet alert gibi yazılıyor ama birden fazla buton alabilir içeriğine ve ek olarak aşağıdan bottomdan ekrana gelir ama alert ortadan gelir

struct ActionSheetBootcamp: View {
    @State var showActionSheet = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost, isOtherPost
    }
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("Username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                
                
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet2)
        
    }
    
    
    var example1View: some View {
        Button("Click Me") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet )
    }
    
    func getActionSheet() -> ActionSheet {
        
        //MARK: - Example 1
        //      return  ActionSheet(title: Text("This is the title !"))
        
        //MARK: - Example 2
        var button1: ActionSheet.Button = .default(Text("Default"))
        
        var button2: ActionSheet.Button = .destructive(Text("Descritivce"))
        
        var button3: ActionSheet.Button = .cancel()
        return ActionSheet(
            title: Text("This is the title"),
            message: Text("This is the message"),
            buttons: [button1, button2,button1, button2, button3]
        )
        
    }
    
    func getActionSheet2() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete this post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton,cancelButton]
            )
        }
        
    }
    
    
}



#Preview {
    ActionSheetBootcamp()
}
