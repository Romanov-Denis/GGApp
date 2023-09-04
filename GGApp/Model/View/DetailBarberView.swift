//
//  AboutBarberView.swift
//  GGApp
//
//  Created by Денис Романов on 31/8/2566 BE.
//

import SwiftUI

struct DetailBarberView: View {
    var barber: Barber
    var body: some View {
       
            VStack {
                VStack {
                    Image(barber.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    Text(barber.description)
                        .bold()
                }
                .padding()
                
                .frame(maxWidth: screen.width * 0.95)
                .background(Color("half-white"))
                .cornerRadius(15)
                Spacer()
            }
            .frame (maxWidth: .infinity, maxHeight: .infinity)
            .background(
                    LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom))
        
    }
}

struct DetailBarberView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBarberView(barber: Barber(id: "1",
                                       name: "Алик",
                                       rang: "Top barber",
                                       description: "Топовый барбер, который поможет подбрать стиль и расскрыть вашу индивидуальность",
                                       image: "Alik"))
    }
}
