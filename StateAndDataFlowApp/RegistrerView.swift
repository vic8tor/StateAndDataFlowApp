//
//  RegistrerView.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 22.02.2022.
//

import SwiftUI

struct RegistrerView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                Text("3")
                    .foregroundColor(validateData().0)
            }
            Button(action: registerUser) {
                Label("Ok", systemImage: "checkmark.circle")
            }
            .disabled(validateData().1)
            
        }
    }
}

extension RegistrerView {
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
    private func validateData() -> (Color, Bool) {
        let color = name.count < 3
        ? Color.red
        : Color.green
        
        let buttonState = color == .red ? true : false
        return (color, buttonState)
    }
}

struct RegistrerView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrerView()
    }
}
