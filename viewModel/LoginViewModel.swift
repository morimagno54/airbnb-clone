//
//  LoginViewModel.swift
//  airBindb-clon-A
//
//  Created by Alumno on 24/11/23.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject{
    var appState: Appstate = .shared
    
    func signUp(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password){
            response, error in
            if error != nil {
                print(error)
                return
            }
            self.appState.currentScreen = .main
        }
    }
    
}
