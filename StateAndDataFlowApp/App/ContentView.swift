//
//  ContentView.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 21.02.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Hi, \(user.name)")
                .textStyled(color: .black)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .textStyled(color: .blue)
                .offset(x: 0, y: 150)
            Spacer()
            ButtonView(
                color: .blue,
                action: timer.startTimer,
                text: timer.buttonTitle
            )
            Spacer()
            ButtonView(
                color: .red,
                action: { user.isRegistred = false },
                text: "LogOut"
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("Iphone 13 Pro Max")
    }
}
