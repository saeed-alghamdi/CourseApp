//
//  ScreenTwo_Refactore.swift
//  Project 3
//
//  Created by RMP on 17/07/1445 AH.
//

import SwiftUI


struct ScreenTwo_Refactore: View {
    
    
    init() {
        
        UINavigationBar.appearance().tintColor = UIColor(Color.primary)
        
    }
    
    let courses = [
    
        
        CourseModel(image: "objc", courseName: "Objective-C", backgroundColor: Color(uiColor: UIColor(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)), tag: 0, speacker: "Julian Chirs", price: 120, reviews: 894, courseDuration: "10H 59min"),
        
        CourseModel(image: "RUBY", courseName: "Ruby", backgroundColor: .red, tag: 1, speacker: "Emily Mulburn", price: 150, reviews: 490, courseDuration: "3H 10min"),
        
        CourseModel(image: "php", courseName: "PHP", backgroundColor: .cyan, tag: 2, speacker: "Nathan Weily", price: 90, reviews: 120, courseDuration: "3H 30min"),
        
        CourseModel(image: "html", courseName: "HTML", backgroundColor: .orange, tag: 3, speacker: "Kally Anderson", price: 80, reviews: 50, courseDuration: "1H 30min"),
        
        CourseModel(image: "C#", courseName: "C#", backgroundColor: .primary, tag: 4, speacker: "Noah Tison", price: 150, reviews: 387, courseDuration: "5H 34min"),
        
        CourseModel(image: "Perl", courseName: "Perl", backgroundColor: .purple, tag: 5, speacker: "Jackson O", price: 70, reviews: 135, courseDuration: "4H 59min"),
        
        CourseModel(image: "C", courseName: "C", backgroundColor: .blue, tag: 6, speacker: "Marwan Higeen", price: 200, reviews: 1092, courseDuration: "1 Year at least")
        
        
    ]
    
    
    let allCourses = [
        
        
        AllCoursesModel(image: "apache", courseName: "Apache Server", courseDetails: "Apache Server For Web Development", backgroundColor: .clear, tag: 0),
        
        
        AllCoursesModel(image: "archlinux", courseName: "archlinux system administrator", courseDetails: "How to manage system machines", backgroundColor: .black, tag: 1),
        
        
        AllCoursesModel(image: "nginx", courseName: "Nginx Web Application", courseDetails: "How to create and manage web application", backgroundColor: .primary, tag: 2),
        
        
        AllCoursesModel(image: "redhat", courseName: "redhat linux servers", courseDetails: "Redhat System Administrator", backgroundColor: .red, tag: 3),
        
        
        
    ]
    
    
    @State var searchText: String = ""
    @State var selection: Int = 0
    @State var seeAllActionSheetShowing: Bool = false
    @State var isViewDisappear = false
    @State var showingBigImageOfCourses: Bool = false
    
   
    
    var body: some View {
        
        NavigationView {
           
           VStack {
                  
               VStack {
                   
                   //Text("Find Your Favorite\n Course").font(.largeTitle).fontWeight(.semibold).multilineTextAlignment(.leading)
                   
                   //TextField("Search Here", text: $searchText).padding().border(.gray).padding()
                   
                   
                   TextField("Search Course", text: $searchText).padding().overlay {
                       
                       RoundedRectangle(cornerRadius: 10).strokeBorder(Color(UIColor.systemGray)).autocorrectionDisabled(true)
                       
                   }
                   
                   HStack {
                       
                       Text("Top Categories").fontWeight(.semibold)
                       
                       Spacer()
                       
                       
                       Button(action: {
                           seeAllActionSheetShowing = true
                       }) {
                           
                           Text("See All").fontWeight(.semibold)
                           
                       }
                       
                   }.padding()
                   
                   
                   ScrollView(.horizontal, showsIndicators: false) {
                       
                       HStack {
                           
                           ForEach(courses, id: \.id) { course in
                               
                               
                               NavigationLink {
                                   
                                   ScreenThree_Refactor(courseName: course.courseName, price: course.price, speaker: course.speacker, courseImage: course.image, reviews: course.reviews, courseDuration: course.courseDuration)
                                   
                               } label: {
                                   
                                   VStack(spacing: 3) {
                                       
                                       Text(course.courseName).foregroundColor(Color.primary)
                                       
                                       Image(course.image).resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width / 4.0, height: 150).overlay {
                                           
                                           RoundedRectangle(cornerRadius: 10).stroke(course.backgroundColor, lineWidth: 0.75)
                                           
                                       }
                                       
                                   }
                                   
                               }

                           }
                           
                       }
                       
                   }
                   
                   TabView(selection: $selection) {
                       
                       
                       ForEach(allCourses, id: \.id) { course in
                           
                           RoundedRectangle(cornerRadius: 20).overlay {
                               
                               Image(course.image).resizable().aspectRatio(contentMode: .fit)
                               
                           }.foregroundColor(course.backgroundColor).tag(course.tag)
                       }
                       
                       
                       
                   }.tabViewStyle(.page(indexDisplayMode: .never))
                   
                   Spacer()
                   
               }
               
           }.onAppear(perform: {
               
               selection = 0
               isViewDisappear = false
               
               
               print("the selection is: \(selection)")
               
               Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
                   
                   selection += 1
                   
                   if selection == 5 {
                       
                       selection = 0
                       
                   }
                   
                   if isViewDisappear == true {
                       
                       print("the timer is stopped")
                       timer.invalidate()
                       
                   }
                   
               }
               
               
           }).onDisappear(perform: {
               
               isViewDisappear = true
               
           }).navigationBarTitleDisplayMode(.large).navigationTitle("Favorite Course").toolbar(content: {
               
               ToolbarItem(placement: .navigationBarTrailing) {
                   
                   
                   NavigationLink {
                       ProfileView()
                   } label: {
                       
                       Image(systemName: "person.circle.fill").font(.title2).foregroundColor(Color(UIColor.secondaryLabel)).imageScale(.large)
                       
                   }
                   
                   
               }
               
               ToolbarItem(placement: .navigationBarLeading) {
                   
                   
                   NavigationLink {
                       GroupsView()
                   } label: {
                       
                       Image(systemName: "person.3.fill").font(.title2).foregroundColor(Color(UIColor.secondaryLabel)).imageScale(.medium)
                       
                   }
                   
                   
               }
               
           }).sheet(isPresented: $seeAllActionSheetShowing, content: {
               
               SeeAllView(dismissView: $seeAllActionSheetShowing)
               
           }).padding()
           
           
        }
        
    }
}


struct ScreenTwo_Refactore_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo_Refactore()
    }
}
