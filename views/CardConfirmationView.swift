//
//  CardConfirmationView.swift
//  airBindb-clon-A
//
//  Created by Alumno on 24/11/23.
//

import SwiftUI

struct CardConfirmation: View {
    var image: String
    var title: String
    var date: String
    var detail: String
    var body: some View {
        VStack {
            HStack {
                HStack {
                    ZStack (alignment: .leading) {
                        Image(image)
                            .resizable()
                            .frame(width: 130, height: 100)
                            .cornerRadius(15)
                        
                    }
                }
                VStack (alignment: .leading){
                    HStack {
                        Text(title)
                            .fontWeight(.medium)
                            .font(.system(size: 18))
                            
                    }.padding(.bottom, 5)
                    
                    Text(date)
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                        .font(.system(size: 13))
                    Text(detail)
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                        .font(.system(size: 13))
                    
                }
                .padding(8)
          
                Spacer()
            }
            .background(.white)
        }
        .padding(4)
    }
}

struct CardConfirmation_Previews: PreviewProvider {
    static var previews: some View {
        CardConfirmation(image: "item1", title: "Stunning Family Home close to the city centre", date: "February 13 -February 14, 2023", detail: "1 adult")
    }
}
