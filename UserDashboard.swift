//
//  UserDashboard.swift
//  app_CC.OO
//
//  Created by John M. on 23/2/25.
//

import SwiftUI

struct UserDashboard: View {
    var username: String
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                Text("Bienvenido, \(username)")
                    .font(.title)
                
                NavigationLink(destination: PageView(title: "Programa Nómina")) {
                    Text("Programa Nómina")
                        .buttonStyle(.borderedProminent)
                }
                
                NavigationLink(destination: PageView(title: "Calendario Laboral")) {
                    Text("Calendario Laboral")
                        .buttonStyle(.borderedProminent)
                }
                
                NavigationLink(destination: PageView(title: "Documentos Importantes")) {
                    Text("Documentos Importantes")
                        .buttonStyle(.borderedProminent)
                }
                
                NavigationLink(destination: PageView(title: "Excesos 2.025")) {
                    Text("Excesos 2.025")
                        .buttonStyle(.borderedProminent)
                }
                
                NavigationLink(destination: PageView(title: "Venta de Cerveza y Refrescos")) {
                    Text("Venta de Cerveza y Refrescos")
                        .buttonStyle(.borderedProminent)
                }
                
                NavigationLink(destination: PageView(title: "Apúntate al Comedor")) {
                    Text("Apúntate al Comedor")
                        .buttonStyle(.borderedProminent)
                }
                
                NavigationLink(destination: PageView(title: "Noticias de Actualidad")) {
                    Text("Noticias de Actualidad")
                        .buttonStyle(.borderedProminent)
                }
            }
            .padding()
            .background(Color.red.opacity(0.2).edgesIgnoringSafeArea(.all))
            .navigationTitle("Menú Principal")
        }
    }
}

struct UserDashboard_Previews: PreviewProvider {
    static var previews: some View {
        UserDashboard(username: "Usuario Ejemplo")
    }
}

