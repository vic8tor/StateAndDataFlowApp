//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 22.02.2022.
//

import Foundation
import Combine


class UserManager: ObservableObject {
   
    @Published var isRegistred: Bool {
        didSet {
            UserDefaults.standard.set(isRegistred, forKey: "isRegistred")
        }
    }
    
    @Published var name: String {
        didSet {
            UserDefaults.standard.set(name, forKey: "name")
        }
    }
    
    init() {
        self.isRegistred = UserDefaults
            .standard
            .object(forKey: "isRegistred") as? Bool ?? false
        self.name = UserDefaults
            .standard
            .object(forKey: "name") as? String ?? ""
    }
}
