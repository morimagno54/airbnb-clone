//
//  AppState.swift
//  airBindb-clon-A
//
//  Created by Alumno on 24/11/23.
//

import Foundation

class Appstate: ObservableObject{
    
    static let shared = Appstate()
    
    enum Views {
        case login
        case main
    }
    
    @Published var currentScreen : Views = .main
}
