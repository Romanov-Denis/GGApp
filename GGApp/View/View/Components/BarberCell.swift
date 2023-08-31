//
//  BarberCell.swift
//  GGApp
//
//  Created by Денис Романов on 30/8/2566 BE.
//

import SwiftUI



struct BarberCell: View {
    
    var barber: Barber
    
    var body: some View {
        VStack{
            VStack {
                HStack {
                    Image("Alik")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(barber.name)
                            .font(Font.custom("Regular", size: 25))
                            .bold()
                        Text(barber.rang)
                        
                    }
                    .offset(y: -25)
                    Spacer()
                    Image(systemName: "info.circle")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .offset(y: -30)
                    
                }
                .padding()
                HStack {
                    Text("Ближайшее время записи :")
                        .padding()
                    Spacer()
                }
                    
            }
            .frame(maxWidth: screen.width * 0.95)
            .background(Color("half-white"))
            .cornerRadius(15)
        }
        .background(Image("back").blur(radius: 10))
    }
}

struct BarberCell_Previews: PreviewProvider {
    static var previews: some View {
        BarberCell(barber: Barber(id: "1",
                                   name: "Алик",
                                   rang: "top barber",
                                   description: "топовый барбер, который поможет подбрать стиль и расскрыть вашу индивидуальность",
                                   image: "Alik"))
    }
}
