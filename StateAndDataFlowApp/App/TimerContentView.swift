//
//  ContentView.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 21.02.2022.
//

import SwiftUI

struct TimerContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("Hi, \(user.name)")
                .textStyled(color: .black)
            Text("\(timer.counter)")
                .textStyled(color: .blue)
            Spacer()
            ButtonView(
                color: .blue,
                action: timer.startTimer,
                text: timer.buttonTitle
            )
            Spacer()
            ButtonView(
                color: .red,
                action: logOut,
                text: "LogOut"
            )
        }
    }
    
    private func logOut() {
        user.isRegistred = false
        user.name = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerContentView()
            .previewDevice("Iphone 13 Pro Max")
    }
}
