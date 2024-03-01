//
//  GroupsView.swift
//  Project 3
//
//  Created by RMP on 24/07/1445 AH.
//

import SwiftUI

struct GroupsView: View {
    
    var body: some View {
        
        List {
            
            Label("Courses", systemImage: "books.vertical.fill").frame(height: 50)
            
            Label("Speakers", systemImage: "waveform.and.mic").frame(height: 50)
            
            Label("Locations", systemImage: "mappin.and.ellipse").frame(height: 50)
            
            Label("Coming Soon", systemImage: "eyes").frame(height: 50)
            
            Label("Arabic Courses", systemImage: "character.ar").frame(height: 50)
            
        }.navigationTitle("Groups").navigationBarTitleDisplayMode(.large)
        
    }
    
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
