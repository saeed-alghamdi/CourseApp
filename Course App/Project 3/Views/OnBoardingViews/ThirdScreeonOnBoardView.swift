//
//  ThirdScreeonOnBoardView.swift
//  Project 3
//
//  Created by RMP on 26/07/1445 AH.
//

import SwiftUI

struct ThirdScreeonOnBoardView: View {
    
    @AppStorage("showingOnBoarding") var showingOnBoarding: Bool?
    
    @Binding var selection: Int
    
    var body: some View {
      
        VStack() {
            
            Image("RUBY").resizable().frame(width: UIScreen.main.bounds.width / 2,height: UIScreen.main.bounds.height / 3.1)
            
            
            VStack(spacing: 20) {
                
                Text("Discover The Best Online Course ").font(.title).fontWeight(.bold).multilineTextAlignment(.center)
                
                Text("Ruby Server Side\n Programming Lanugage").font(.title2).fontWeight(.regular).foregroundColor(Color(UIColor.systemGray)).multilineTextAlignment(.center)
                
                
            }
            
            
            
            HStack {
                
                
                Button() {
                    
                    withAnimation {
                        selection = 0
                    }
                    
                } label: {
                    Text("Back").font(.headline).fontWeight(.semibold).foregroundColor(.primary).padding().padding(.horizontal, 20).background(Color(UIColor.systemBackground)).cornerRadius(10).shadow(color: Color(UIColor.systemGray), radius: 10)
                }
                
                Spacer()
                
                Button() {
                    
                    //selection = 0
                    
                    showingOnBoarding = false
                    
                } label: {
                    Text("Finish").font(.headline).fontWeight(.semibold).foregroundColor(Color(UIColor.systemBackground)).padding().padding(.horizontal, 20).background(Color.primary).cornerRadius(10).shadow(radius: 10)
                }
                
            }.offset(x: 0, y: UIScreen.main.bounds.midY / 3).padding([.leading, .trailing], 30)
            
            Spacer()
            
        }
        
        
        
    }
    
}

struct ThirdScreeonOnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreeonOnBoardView(selection: .constant(2))
    }
}
