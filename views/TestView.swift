//
//  InboxView.swift
//  AirBnb_Clone_A
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ScrollView(.vertical) {
            ZStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Confirm cancellation")
                        .font(.system(size: 34))
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                    
                    CardConfirmation(image: "item1", title: "Stunning Family Home close to the city centre", date: "February 13 -February 14, 2023", detail: "1 adult")
                    HStack {
                        
                    }
                    
                    Divider()
                        
                        
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            Text("Cancellation policy")
                                .fontWeight(.bold)
                            Spacer()
                            HStack {
                                NavigationLink {
                                    TripsView()
                                } label: {
                                    Text("Read more").underline()
                                        .foregroundColor(.primary)
                                }
                            }
                            
                            
                        }
                        Text("Full refund: Get back 100% of what you paid.")
                    }
                    .padding(20)
                 
                    Divider()
                        .frame(height: 10).background(Color(white: 0.9, opacity: 0.9))
                    
                    VStack {
                        VStack(alignment: .leading) {
                            VStack (alignment: .leading){
                                Text("You've Paid")
                                    .font(.title2)
                                Text("$49.19")
                                    .font(Font.title2.weight(.bold))
                            }
                            .padding(.top,35)
                            
                            Spacer()
                            
                            VStack (alignment: .leading){
                                Text("Your Refund")
                                    .font(.title2)
                                Text("$49.19")
                                    .font(Font.title2.weight(.bold))
                            }
                            .padding(.bottom,35)
                            
                        }
                        .padding(.leading,20)
                        .frame(width: UIScreen.main.bounds.width,height: 200,alignment: .leading)
                        .background(.white)
                        
                        Divider()
                            .frame(height: 10).background(Color(white: 0.9, opacity: 0.9))
                        
                        
                        VStack(alignment: .leading,spacing: 30){
                            Text("Refund Details")
                                .font(Font.title2.weight(.bold))
                            VStack {
                                HStack {
                                    Text("Accomodation")
                                    Spacer()
                                    Text("$32.00")
                                }
                                
                                HStack{
                                    Text("Full refund")
                                    Spacer()
                                    Text("Of $32.00 paid")
                                }
                            }
                            
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .frame(width: UIScreen.main.bounds.width,height: 150,alignment: .leading)
                        .background(.white)
                    }
                    

                }
                    .padding(20)
                  
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }.safeAreaInset(edge: .bottom){
                VStack {
                Spacer()
                Divider()
                Button("Cancel reservation") {
                    print("Button tapped!")
                }
                .padding()
                .padding(.horizontal,80)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(16)
            }
            .frame(width: UIScreen.main.bounds.width,height: 40)
            .background(Color.white)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

