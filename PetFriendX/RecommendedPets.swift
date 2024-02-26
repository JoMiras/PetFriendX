//
//  RecommendedPets.swift
//  PetFriendX
//
//  Created by Jonah Mirasol on 2024/2/24.
//

import SwiftUI

struct RecommendedPetsView: View {
    let recommendedPets: [Pet] = [
        Pet(name: "Chow Chow", imageName: "chow_chow", description: "Loyal and aloof, the Chow Chow is a distinctive-looking breed with a lion-like mane.", temperament: "Loyal", lifestyleRecommendation: "Suitable for families with a calm lifestyle."),
        Pet(name: "Golden Retriever", imageName: "golden_retriever", description: "Friendly, intelligent, and devoted, the Golden Retriever is one of the most popular dog breeds.", temperament: "Friendly", lifestyleRecommendation: "Great for active families and individuals."),
        Pet(name: "Maine Coon", imageName: "maine_coon", description: "The Maine Coon is a large and socialable cat breed known for its tufted ears and bushy tail.", temperament: "Socialable", lifestyleRecommendation: "Well-suited for families and indoor living."),
        Pet(name: "Tabby Cat", imageName: "tabby_cat", description: "Tabby cats are known for their distinctive coat patterns and come in various colors.", temperament: "Adaptable", lifestyleRecommendation: "Versatile and suitable for various living environments.")
        ]
    
        
    
    var body: some View {
        List(recommendedPets) { pet in
            NavigationLink(destination: PetDetailsView(pet: pet)) {
                HStack {
                    Image(pet.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
                    Text(pet.name)
                }
                
            }
        }
        .navigationTitle("Recommended Pets")
        
    }
}


struct PetDetailsView: View {
    let pet: Pet

    var body: some View {
        VStack {
            Image(pet.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(16)

            Text("Details for \(pet.name)")
                .font(.title)
                .padding()

            Text("Description: \(pet.description)")
                .padding()

            Text("Temperament: \(pet.temperament)")
                .padding()

            Text("Lifestyle Recommendation: \(pet.lifestyleRecommendation)")
                .padding()
        }
        .navigationTitle(pet.name)
    }
}



struct Pet: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let temperament: String
    let lifestyleRecommendation: String
}

struct RecommendedPetsView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedPetsView()
    }
}
