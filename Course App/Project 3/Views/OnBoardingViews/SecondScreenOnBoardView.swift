//
//  SecondScreenOnBoardView.swift
//  Project 3
//
//  Created by RMP on 26/07/1445 AH.
//

import SwiftUI

struct SecondScreenOnBoardView: View {
    
    @AppStorage("showingOnBoarding") var showingOnBoarding: Bool?
    
    @Binding var selection: Int
    
    var body: some View {
        
        VStack() {
            
            Image("C").resizable().frame(width: UIScreen.main.bounds.width / 1.4, height: UIScreen.main.bounds.height / 2.5, alignment: .center)
            
            
            VStack(spacing: 20) {
                
                Text("Discover The Best Online Course ").font(.title).fontWeight(.bold).multilineTextAlignment(.center)
                
                Text("C Programming Language And More ").font(.title2).fontWeight(.regular).foregroundColor(Color(UIColor.systemGray)).multilineTextAlignment(.center)
                
                
            }
            
            
            
            HStack {
                
                
                Button() {
                    
                    showingOnBoarding = false
                    
                } label: {
                    Text("Skip").font(.headline).fontWeight(.semibold).foregroundColor(.primary).padding().padding(.horizontal, 20).background(Color(UIColor.systemBackground)).cornerRadius(10).shadow(color: Color(UIColor.systemGray), radius: 10)
                }
                
                Spacer()
                
                Button() {
                    
                    withAnimation {
                        selection = 2
                    }
                    //selection = 2
                    
                } label: {
                    Text("Next").font(.headline).fontWeight(.semibold).foregroundColor(Color(UIColor.systemBackground)).padding().padding(.horizontal, 20).background(Color.primary).cornerRadius(10).shadow(radius: 10)
                }
                
            }.offset(x: 0, y: UIScreen.main.bounds.midY / 3).padding([.leading, .trailing], 30)
            
            Spacer()
            
        }
        
    }
    
}

struct SecondScreenOnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreenOnBoardView(selection: .constant(1))
    }
}
