//
//  PetPreferences.swift
//  PetFriendX
//
//  Created by Jonah Mirasol on 2024/2/24.
//

import SwiftUI

struct PetPreferencesView: View {
    @State private var selectedPetType = ""
    @State private var selectedTempermament = ""
    
    var body: some View  {
        NavigationView {
            Form {
                Section(header: Text("Pet Preferences")) {
                    Picker("Select Pet Type", selection: $selectedPetType) {
                        Text("Dog").tag("Dog")
                        Text("Cat").tag("Cat")
                        
                        // more options can be added if needed
                    }
                    Picker("Select Temperament", selection: $selectedTempermament) {
                        Text("Calm").tag("Calm")
                        Text("Energetic").tag("Energetic")
                        
                        // more options can be added if needed
                        
                    }
                }
                NavigationLink(destination: RecommendedPetsView()) {
                    Text("Find Recommended Pets")
                    
                }
            }
            .navigationTitle("Pet Preferences")
                }
            }
        }
struct PetPreferencesView_Previews: PreviewProvider {
    static var previews: some View{
        PetPreferencesView()
    }
}
