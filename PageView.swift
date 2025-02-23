//
//  PageView.swift
//  app_CC.OO
//
//  Created by John M. on 23/2/25.
//

import SwiftUI

struct PageView: View {
    var title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            
            Text("Contenido de la página \(title)")
                .padding()
        }
        .background(Color.red.opacity(0.2).edgesIgnoringSafeArea(.all))
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(title: "Ejemplo de Página")
    }
}
