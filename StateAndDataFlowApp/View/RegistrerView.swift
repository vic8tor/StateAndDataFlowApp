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
                Text("\(name.count)")
                    .foregroundColor(validateData().color)
            }
            Button(action: registerUser) {
                Label("Ok", systemImage: "checkmark.circle")
            }
            .disabled(validateData().state)
            
        }
    }
}

extension RegistrerView {
    private func registerUser() {
        if name.count >= 3 {
            user.name = name
            user.isRegistred.toggle()
        }
    }
    
    private func validate() -> Bool {
        let result = name.count < 3 ? true : false
        return result
    }
    
    private func validateData() -> (color: Color, state: Bool) {
        let result: (Color, Bool) = validate() ? (.red, true) : (.green, false)
        return result
    }
}

struct RegistrerView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrerView()
    }
}
