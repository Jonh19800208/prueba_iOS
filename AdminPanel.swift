//
//  AdminPanel.swift
//  app_CC.OO
//
//  Created by John M. on 23/2/25.
//

import SwiftUI

struct AdminPanel: View {
    @State private var newUsername = ""
    @State private var usersToApprove = ["newUser1", "newUser2"]
    @State private var approvedUsers = ["user1", "user2", "user3"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Panel de Administrador")
                .font(.title)
                .padding()
            
            Text("Usuarios Pendientes:")
                .font(.headline)
            
            List(usersToApprove, id: \.self) { user in
                HStack {
                    Text(user)
                    Spacer()
                    Button("Aceptar") {
                        approvedUsers.append(user)
                        usersToApprove.removeAll { $0 == user }
                    }
                    Button("Denegar") {
                        usersToApprove.removeAll { $0 == user }
                    }
                }
            }
            
            Text("Usuarios Aprobados:")
                .font(.headline)
            
            List(approvedUsers, id: \.self) { user in
                Text(user)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.red.opacity(0.2).edgesIgnoringSafeArea(.all))
    }
}

struct AdminPanel_Previews: PreviewProvider {
    static var previews: some View {
        AdminPanel()
    }
}

