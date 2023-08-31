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
        VStack {

            Image("haircut")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350,height: 200)
                .clipped()
                .cornerRadius(20)
            
            HStack(spacing: 90) {
                Text(servis.name)
                    .font(.custom("AvenirNext-bold", size: 20))
                
                Text("\(servis.price)")
                    .font(.custom("AvenirNext-bold", size: 15))
                
            }
            VStack {
            Text (servis.discription)
                    .font(.custom("AvenirNext-regular",size: 10))
                    .foregroundColor(.black)
            }
        }
        .frame(width: 350,height: 256)
        .background(Color(.gray))
        .cornerRadius(20)
        .shadow(radius: 3)
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
