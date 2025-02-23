//
//  ContentView.swift
//  app_CC.OO
//
//  Created by John M. on 23/2/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isRegistered = false
    @State private var isAdmin = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("S.Sindical CC.OO El Puig DAMM")
                .font(.largeTitle)
                .padding()
            
            TextField("Usuario", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Contraseña", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                if username == "admin" && password == "admin" {
                    isAdmin = true
                } else if isUserAllowed(username: username) {
                    isRegistered = true
                } else {
                    // Mostrar mensaje de error
                }
            }) {
                Text("Iniciar Sesión")
                    .padding()
                    .background(Color.red.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            NavigationLink(destination: AdminPanel(), isActive: $isAdmin) {
                EmptyView()
            }
            
            NavigationLink(destination: UserDashboard(username: username), isActive: $isRegistered) {
                EmptyView()
            }
            
            NavigationLink(destination: RegistrationView()) {
                Text("Registrarse")
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(Color.red.opacity(0.2).edgesIgnoringSafeArea(.all))
    }
    
    func isUserAllowed(username: String) -> Bool {
        // Simulación de verificación de usuarios permitidos
        let allowedUsers = ["user1", "user2", "user3"] // Lista de usuarios autorizados
        return allowedUsers.contains(username)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
