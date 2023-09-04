//
//  ServisCatalogView.swift
//  GGApp
//
//  Created by Денис Романов on 29/8/2566 BE.
//

import SwiftUI

struct ServisCatalogView: View {
    let layout = [GridItem(.adaptive(minimum: screen.width / 2))]
    
    var body: some View {
            ScrollView(.vertical,showsIndicators: false) {
                LazyVGrid(columns: layout, spacing: 15) {
                    ForEach(CatalogViewModel.shared.servis, id: \.id) { item in
                        ServisCell(servis: item)
                    }
                }
                .padding()
            }
            .background(
                    LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom))
        }
    
       
        
    }
    






struct ServisCatalogView_Previews: PreviewProvider {
    static var previews: some View {
        ServisCatalogView()
    }
}
