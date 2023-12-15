//
//  TabItem.swift
//  airBindb-clon-A
//
//  Created by MAC37 on 10/11/23.
//

import SwiftUI

struct TabItem: View {
    var text: String
    var image: String
    
    var body: some View {
        VStack {
            Text(text)
            Image(image)
                .renderingMode(.template)
        }
    }
}

struct TabItem_Previews: PreviewProvider {
    static var previews: some View {
        TabItem(text: "Explore", image: "magnifing")
    }
}
