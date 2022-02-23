//
//  StartButtonView.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 22.02.2022.
//

import SwiftUI

struct ButtonView: View {
    @StateObject var timer = TimeCounter()
    
    let color: Color
    let action: () -> Void
    let text: String
    
    var body: some View {
        Button(action: action) {
            Text("\(text)")
                .textStyled(color: .black)
        }
        .styled(color: color)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(color: Color.black, action: {}, text: "")
    }
}
