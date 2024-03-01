//
//  Project_3App.swift
//  Project 3
//
//  Created by RMP on 26/06/1444 AH.
//

import SwiftUI

@main
struct Project_3App: App {
    
    @AppStorage("showingOnBoarding") var showingOnBoarding = true
    
    var body: some Scene {
        WindowGroup {
            
            if showingOnBoarding == true {
                
                OnBoardTabView()
                
            } else {
                
                ScreenTwo_Refactore()
                
            }
            
        }
    }
}
