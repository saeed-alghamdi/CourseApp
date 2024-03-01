//
//  CourseModel.swift
//  Project 3
//
//  Created by RMP on 26/06/1444 AH.
//

import Foundation
import SwiftUI


struct CourseModel: Identifiable {
    
    let id = UUID()
    let image: String
    let courseName: String
    let backgroundColor: Color
    let tag: Int
    let speacker: String
    let price: Int
    let reviews: Int
    let courseDuration: String
    
}


struct AllCoursesModel: Identifiable {
    
    let id = UUID()
    let image: String
    let courseName: String
    let courseDetails: String
    let backgroundColor: Color
    let tag: Int
    
}
