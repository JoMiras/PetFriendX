//
//  File.swift
//  PetFriendX
//
//  Created by Jonah Mirasol on 2024/2/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("PetFriend Login")
                    .font(.largeTitle)
                    .padding()
                
                Form {
                    Section(header: Text("Credentials")) {
                        TextField("Email", text: $email)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                        
                        SecureField("Password", text: $password)
                    
                    }
                    Section {
                        Button(action: {
                            print("Email: \(email), Password: \(password)")
                            
                        }) {
                            Text("Log In")
                        }
                    }
                }
                .padding()
                
                NavigationLink(destination: PetPreferencesView()) {
                    Text("Continue Without Login")
                        .font(.subheadline)
                }
                .padding()
                
            }
            .navigationTitle("Login")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
