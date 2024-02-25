//
//  ContentView.swift
//  PetFriendX
//
//  Created by Jonah Mirasol on 2024/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            if isLoggedIn {
                PetPreferencesView()
            } else {
                LoginView()
                    .navigationBarHidden(true)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
