//
//  Testing_SwiftUIView.swift
//  Project 3
//
//  Created by RMP on 25/07/1445 AH.
//

import SwiftUI

struct TestingCustomNavigationBar: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(red: 0.2, green: 0.5, blue: 0.8, alpha: 1)
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .navigationTitle("Custom Navigation").navigationBarTitleDisplayMode(.inline)
        }
    }
    
}



struct Testing_SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestingCustomNavigationBar()
    }
}
