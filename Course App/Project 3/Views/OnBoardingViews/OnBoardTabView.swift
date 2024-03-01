//
//  OnBoardTabView.swift
//  Project 3
//
//  Created by RMP on 29/07/1445 AH.
//

import SwiftUI



struct OnBoardTabView: View {
    
    @State var selection = 0
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            FirstScreenOnBoardView(selection: $selection).tag(0)
            SecondScreenOnBoardView(selection: $selection).tag(1)
            ThirdScreeonOnBoardView(selection: $selection).tag(2)
            
            
        }.onAppear(perform: {
            
            Timer.scheduledTimer(withTimeInterval: 1.4, repeats: true) { insideTimer in
                
                selection += 1
                if selection == 3 {
                    
                    selection = 0
                    
                }
                
                
            }
            
        }).tag(selection).animation(.default, value: 2).tabViewStyle(.page(indexDisplayMode: .never))
        
    }
    
    
}

struct OnBoardTabView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardTabView()
    }
}
