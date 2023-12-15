//
//  ConfirmCancelView.swift
//  airBindb-clon-A
//
//  Created by Alumno on 24/11/23.
//

import SwiftUI

struct ConfirmCancelView: View {
    var body: some View {
        ZStack {
            Color.gray
            .ignoresSafeArea()
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
                        Divider()
                    }
                    
                }
                .padding(.horizontal, 20)
                .frame(width: UIScreen.main.bounds.width,height: 150,alignment: .leading)
                .background(.white)
            }
        }
        .safeAreaInset(edge: .bottom){
            Text("HOLA")
                .font(.title)
        }
    }
}

struct ConfirmCancelView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmCancelView()
    }
}
