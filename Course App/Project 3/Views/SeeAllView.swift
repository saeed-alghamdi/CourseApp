//
//  SeeAllView.swift
//  Project 3
//
//  Created by RMP on 22/07/1445 AH.
//

import SwiftUI

struct SeeAllView: View {
    
    
    let courses = [
    
        CourseModel(image: "objc", courseName: "Objective-C", backgroundColor: Color(uiColor: UIColor(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)), tag: 0, speacker: "Julian Chirs", price: 120, reviews: 894, courseDuration: "10H 59min"),
        
        CourseModel(image: "RUBY", courseName: "Ruby", backgroundColor: .red, tag: 1, speacker: "Emily Mulburn", price: 150, reviews: 490, courseDuration: "3H 10min"),
        
        CourseModel(image: "php", courseName: "PHP", backgroundColor: .cyan, tag: 2, speacker: "Nathan Weily", price: 90, reviews: 120, courseDuration: "3H 30min"),
        
        CourseModel(image: "html", courseName: "HTML", backgroundColor: .orange, tag: 3, speacker: "Kally Anderson", price: 80, reviews: 50, courseDuration: "1H 30min"),
        
        CourseModel(image: "C#", courseName: "C#", backgroundColor: .primary, tag: 4, speacker: "Noah Tison", price: 150, reviews: 387, courseDuration: "5H 34min"),
        
        CourseModel(image: "Perl", courseName: "Perl", backgroundColor: .purple, tag: 5, speacker: "Jackson O", price: 70, reviews: 135, courseDuration: "4H 59min"),
        
        CourseModel(image: "C", courseName: "C", backgroundColor: .blue, tag: 6, speacker: "Marwan Higeen", price: 200, reviews: 1092, courseDuration: "1 Year at least")
        
        
    ]
    
    
    @Binding var dismissView: Bool
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List(courses) { number in
                    
                    NavigationLink {
                        
                        Image(number.image)
                        
                    } label: {
                        HStack {
                            Image(number.image).resizable().aspectRatio(contentMode: .fit).frame(width: 35, height: 40)
                            Text(number.courseName)
                        }
                    }.frame(height: 40)

                    
                }.listStyle(.plain)
                
            }.toolbar(content: {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button {
                        // ...
                        dismissView = false
                    } label: {
                        Image(systemName: "chevron.down")
                    }

                    
                }
                
            }).navigationBarBackButtonHidden(false).navigationTitle("All Courses").navigationBarTitleDisplayMode(.large)
            
        }
    }
}

struct SeeAllView_Preview: PreviewProvider {
    
    static var previews: some View {
        
        SeeAllView(dismissView: .constant(false))
        
    }
    
}
