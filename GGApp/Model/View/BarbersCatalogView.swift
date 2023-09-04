//
//  BarbersCatalogView.swift
//  GGApp
//
//  Created by Денис Романов on 31/8/2566 BE.
//

import SwiftUI


struct BarbersCatalogView: View {
    let layout = [GridItem(.adaptive(minimum: screen.width / 2))]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
      
                LazyVGrid(columns: layout, spacing: 12) {
                    ForEach(BarberViewModel.shared.barber, id: \.id) { item in
                        BarberCell(barber: item)
                        
                    }
                }
                .padding()
            }
        .navigationTitle(Text("Сотрудник"))
        .frame (maxWidth: .infinity, maxHeight: .infinity)
        .background(
                LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom))
            
    }
}

struct BarbersCatalogView_Previews: PreviewProvider {
    static var previews: some View {
        BarbersCatalogView()
    }
}
