//
//  BarberCell.swift
//  GGApp
//
//  Created by Денис Романов on 30/8/2566 BE.
//

import SwiftUI



struct BarberCell: View {
    
    var barber: Barber
    
    //var calendar = ["11:30","12:30","13:30"]
    
    var body: some View {
        
            VStack{
                VStack {
                    HStack {
                        Image(barber.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .padding()
                        
                        VStack(alignment: .leading) {
                            Text(barber.name)
                                .font(Font.custom("Regular", size: 25))
                                .bold()
                            Text(barber.rang)
                                .bold()
                        }
                        
                        Spacer()
                        CustomNavLink(destination: DetailBarberView(barber:barber)
                            .customNavigationTitle("Информация")) {
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .foregroundColor(Color.black)
                                    .frame(width: 30,height: 30)
                                    .offset(y: -30)
                                    .padding()
                            }
                    }
                    
                    HStack {
                        Text("Ближайшее время записи :")
                            .frame(width: 250,height: 1)
                            .offset(y:-10)
                            .padding()
                        
                        Spacer()
                    }
                    HStack(spacing: 10) {
                        
                        Text("11:30")
                            .frame(width: 70, height: 25)
                            .background(Color("half-white"))
                            .cornerRadius(40)
                        Text("11:30")
                            .frame(width: 70, height: 25)
                            .background(Color("half-white"))
                            .cornerRadius(40)
                        Text("11:30")
                            .frame(width: 70, height: 25)
                            .background(Color("half-white"))
                            .cornerRadius(40)
                        Text("11:30")
                            .frame(width: 70, height: 25)
                            .background(Color("half-white"))
                            .cornerRadius(40)
                        
                    }
                    .offset(y: -20)
                    
                }
                .frame(width: screen.width * 0.95, height: screen.height * 0.22)
                .background(Color("half-white"))
                .cornerRadius(15)
            
        }
    }
}

struct BarberCell_Previews: PreviewProvider {
    static var previews: some View {
        BarberCell(barber: Barber(id: "1",
                                   name: "Алик",
                                   rang: "Top barber",
                                   description: "Топовый барбер, который поможет подбрать стиль и расскрыть вашу индивидуальность",
                                   image: "Alik"))
    }
}



//Text("11:30")
//    .frame(width: 70, height: 25)
//    .background(Color("half-white"))
//    .cornerRadius(40)
