//
//  AboutUsView.swift
//  GGApp
//
//  Created by Денис Романов on 28/8/2566 BE.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Giggles Barbershop - знаменитый барбершоп в Ростове-на-Дону, где мы делаем стиль! Наши мастера стригут со вкусом и чувством стиля. Записывайтесь по телефону +7 (961) 305-14-09 или приходите к нам по адресу: Тургеневская улица, 43. Мы гарантируем безупречный сервис и качественную стрижку.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .lineLimit(16)
                    .padding()
                    .font(.title3.bold())
            }
            .padding()
            .background(Color("half-white"))
            .cornerRadius(15)
            .padding()
            Spacer()
            Image("team")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding()
                
              
        }
        .frame (maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("back").blur(radius: 10))
        
        
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
