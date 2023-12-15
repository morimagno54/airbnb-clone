//
//  TripsView.swift
//  airBindb-clon-A
//
//  Created by MAC37 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.04552, longitude: -76.95265), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack{
                Spacer()
                HStack{
                    ZStack {
                        Image("item1")
                            .resizable()
                            .frame(width: 120, height: 120)
                        VStack {
                            Image("close")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .frame(width: 120, alignment: .leading)
                                .padding(.trailing,-10)
                            Spacer()
                        }.frame(width: 120, height: 120)
                        
                    }
                    VStack(alignment: .leading,spacing: 3){
                        HStack {
                            Text("La Calera, Colombia")
                                .fontWeight(.semibold)
                            .font(.caption)
                            Spacer()
                            Image("heart")
                                .padding(.trailing,6)
                        }
                        Spacer()
                        Text("Nov 19 - 24")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                            .font(.caption2)
                        HStack(spacing:2) {
                            Text("S/ 268 night")
                                .font(.caption)
                            Spacer()
                            Image("star")
                                .resizable()
                                .frame(width:14,height:13)
                            Text("4.91")
                                .font(.caption)
                                .padding(.trailing,5)
                        }
                    }.padding(.vertical, 8)
                        .frame(maxHeight:120)
                        Spacer()
                }
                .background(.white)
            }.padding()
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
