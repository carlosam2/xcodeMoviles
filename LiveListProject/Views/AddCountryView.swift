//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by Carlos Ayala Medina on 24/05/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
//    @EnvironmentObject var countryController: CountryController
    @ObservedObject var countryController: CountryController

    
    @State var countryName: String = ""
    @State var population: String = ""
    
    
    var body: some View {
        VStack{
            Text("Please Add a new coutry with the population")
                .font(.title2)
                .multilineTextAlignment(.center)
            .padding(.bottom, 30)
            
            HStack{
                Image(systemName: "pencil.circle")
                    .foregroundColor(.gray)
                TextField("Country", text: $countryName)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0))
            
            HStack{
                Image(systemName: "person.3")
                    .foregroundColor(.gray)
                TextField("Population", text: $population)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0))
            
            HStack {
                Button("Cancel") {
                                   presentationMode.wrappedValue.dismiss()
                               }
                               .padding(.all)
                               .padding(.horizontal)
                               .foregroundColor(.white)
                               .background(Color.blue)
                               .cornerRadius(7.0)
                
                Button(action: {
                    countryController.addCountry(newCountry: CountryModel(id: UUID(), name: countryName, population: population))
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Add Country")
                }
                .padding(.all)

                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(7.0)
            }
            .padding(.top, 30)

        }// VStack
        .padding(.horizontal, 10)
        .navigationBarTitle("Add a New Country")
        
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCountryView(countryController: CountryController())
    }
}
