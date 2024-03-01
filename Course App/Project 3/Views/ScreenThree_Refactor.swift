//
//  ScreenThree_Refactor.swift
//  Project 3
//
//  Created by RMP on 24/07/1445 AH.
//

import SwiftUI

struct ScreenThree_Refactor: View {
    
    
    var courseName: String
    var price: Int
    var speaker: String
    var courseImage: String
    var reviews: Int
    var courseDuration: String
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Image("66").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
                
                ScrollView {
                    
                    Spacer(minLength: 150)
                    
                    RoundedRectangle(cornerRadius: 20, style: .circular).frame(width:UIScreen.main.bounds.width - 20 ,height: UIScreen.main.bounds.height / 2).foregroundColor(Color.white.opacity(0.75)).blur(radius: 0, opaque: false).overlay {
                        
                        VStack {
                            
                            HStack {
                                
                                Text(courseName).font(.largeTitle).fontWeight(.semibold)
                                
                                Spacer()
                                
                                Button {
                                    // ...
                                } label: {
                                    
                                    Image(systemName: "trash.fill").font(.title).foregroundColor(.primary)
                                    
                                }
                                
                                Button {
                                    // ...
                                } label: {
                                    
                                    Image(systemName: "doc.fill").font(.title).foregroundColor(.primary)
                                    
                                }

                                
                            }.padding()
                            
                            
                            HStack {
                                
                                Image(systemName: "star.fill").foregroundColor(.primary)
                                
                                Text("\(reviews) Review").fontWeight(.semibold).foregroundColor(Color(UIColor.systemGray))
                                
                                
                                Spacer()
                                
                                Label(courseDuration, systemImage: "clock.fill")
                                
                                
                                
                            }.padding()
                            
                            
                            
                            VStack(alignment: .center, spacing: -20) {
                                
                                HStack {
                                    
                                    
                                    Text("Price: $\(price).00").font(.headline)
                                    
                                    Spacer()
                                    
                                    Circle().frame(width: 10, height: 10, alignment: .center).opacity(0.0)
                                    
                                }.padding()
                                
                                HStack {
                                    
                                    Image(courseImage).resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center)
                                    
                                    VStack {
                                        
                                        Text(speaker).font(.headline)
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    Circle().frame(width: 10, height: 10, alignment: .center).opacity(1.0)
                                    
                                }.padding()
                                
                                
                            }
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                
                                RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.black, lineWidth: 2).frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - UIScreen.main.bounds.maxY + 50, alignment: .center
                                ).overlay(alignment: .center) {
                                    
                                    Text("Join To The Course").font(.title2).fontWeight(.semibold).foregroundColor(.black)
                                    
                                }.padding()
                                
                            }
                            
                        }
                        
                    }
                    
                    
                }
                
            }
            
            /*
            
             .navigationTitle("Course Detials").navigationBarTitleDisplayMode(.inline).toolbar {
             
                             ToolbarItem(placement: .navigationBarLeading) {
             
                                 Button {
             
                                 } label: {
             
                                     Image(systemName: "chevron.left.square.fill").foregroundColor(.white)
             
                                 }
             
             
                             }
             
                         }
             
             
             
             */
            
            
        }
        
    }
    
}

//struct ScreenThree_Refactor_Previews: PreviewProvider {
//    static var previews: some View {
//        ScreenThree_Refactor()
//    }
//}
