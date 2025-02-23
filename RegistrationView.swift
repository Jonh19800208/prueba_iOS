//
//  RegistrationView.swift
//  app_CC.OO
//
//  Created by John M. on 23/2/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var newUsername = ""
    @State private var newPassword = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Registro de Nuevo Usuario")
                .font(.title)
                .padding()
            
            TextField("Nuevo Usuario", text: $newUsername)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Nueva Contraseña", text: $newPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                // Enviar solicitud de registro al administrador
                print("Nuevo usuario registrado: \(newUsername)")
            }) {
                Text("Registrar")
                    .padding()
                    .background(Color.red.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.red.opacity(0.2).edgesIgnoringSafeArea(.all))
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

