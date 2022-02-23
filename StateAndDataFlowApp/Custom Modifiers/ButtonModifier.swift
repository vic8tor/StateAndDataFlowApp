//
//  ButtonModifier.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 22.02.2022.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    var color: Color

    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            )
    }

}

extension Button {
    func styled(color: Color) -> some View {
        ModifiedContent(content: self, modifier: ButtonModifier(color: color))
    }
}
