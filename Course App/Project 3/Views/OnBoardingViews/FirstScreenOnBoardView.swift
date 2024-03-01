//
//  ScreenOne_Refactore.swift
//  Project 3
//
//  Created by RMP on 17/07/1445 AH.
//

import SwiftUI

struct FirstScreenOnBoardView: View {
    
    @Binding var selection: Int
    
    
    @AppStorage("showingOnBoarding") var showingOnBoarding: Bool?
    
    
    var body: some View {
        
        VStack() {
            
            Image("UIUX").resizable().frame(width: UIScreen.main.bounds.width + 50, height: UIScreen.main.bounds.height / 2.8 - UIScreen.main.bounds.minX , alignment: .center).clipShape(Circle())
            
            
            
            VStack(spacing: 20) {
                
                Text("Discover The Best Online Course ").font(.title).fontWeight(.bold).multilineTextAlignment(.center)
                
                Text("the UI/UX with figma Course \nis greate to use ").font(.title2).fontWeight(.regular).foregroundColor(Color(UIColor.systemGray)).multilineTextAlignment(.center)
                
                
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
                        selection = 1
                    }
                    
                } label: {
                    Text("Next").font(.headline).fontWeight(.semibold).foregroundColor(Color(UIColor.systemBackground)).padding().padding(.horizontal, 20).background(Color.primary).cornerRadius(10).shadow(radius: 10)
                }
                
            }.offset(x: 0, y: UIScreen.main.bounds.midY / 3).padding([.leading, .trailing], 30)
            
            
            Spacer()
            
        }
        
    }
    
}

struct ScreenOne_Refactore_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreenOnBoardView(selection: .constant(0))
    }
}
