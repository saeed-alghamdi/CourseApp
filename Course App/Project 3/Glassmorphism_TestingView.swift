//
//  Glassmorphism_TestingView.swift
//  Project 3
//
//  Created by RMP on 26/07/1445 AH.
//

import SwiftUI

struct Glassmorphism_TestingView: View {
    
    var body: some View {
       
        ZStack {
            
            Color.blue.ignoresSafeArea()
            
            Circle().frame(width: UIScreen.main.bounds.width - 20).foregroundColor(.white.opacity(0.50))
            
            RoundedRectangle(cornerRadius: 15).frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height / 2, alignment: .center).foregroundColor(Color.red.opacity(0.75)).blur(radius: -1, opaque: true)
            
        }
        
    }
    
}

struct Glassmorphism_TestingView_Previews: PreviewProvider {
    static var previews: some View {
        Glassmorphism_TestingView()
    }
}
