//
//  TextModifier.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 22.02.2022.
//

import SwiftUI

struct TextModifier: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Chalkduster", size: 30))
            .foregroundColor(color)
    }
}

extension Text {
    func textStyled(color: Color) -> some View {
        ModifiedContent(content: self, modifier: TextModifier(color: color))
    }
}
