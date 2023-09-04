//
//  ServisCell.swift
//  GGApp
//
//  Created by Денис Романов on 28/8/2566 BE.
//

import SwiftUI

struct ServisCell: View {
    
    var servis: Servis
    
    var body: some View {
        VStack(spacing: -5) {
            Image("haircut2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screen.width * 0.95, height: screen.height * 0.2)
                .shadow(radius: 5)
                .cornerRadius(15)
                .offset(y: -18)
                .padding(.horizontal)
            HStack(spacing: 100) {
                Text(servis.name)
                    .font(.custom("AvenirNext-bold", size: 17))
                Text("\(servis.price)")
                    .font(.custom("AvenirNext-bold", size: 15))
                    .foregroundColor(Color.white)
            }
            
        }
        .frame(width:screen.width * 0.95, height: screen.height * 0.22)
        .background(Color("half-white"))
        .cornerRadius(15)
       
    }
}
 
struct ServisCell_Previews: PreviewProvider {
    static var previews: some View {
        ServisCell(servis: Servis(id: "1",
                                  name: "Стрижка машинкой",
                                  image: "Not found", price: "1400 Р",
                                  discription: "Работа занимает около часа, попробуйте кофе и поиграйте в футбол"))
    }
}
