//
//  ContentView.swift
//  LiveListProject
//
//  Created by Carlos Ayala Medina on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    var countryController = CountryController()
    var body: some View {
        List(countryController.countries) { country in
                       NavigationLink(destination: DetailView(country: country)) {
                           Text(country.name)
                       }
                           
                   }
                   .navigationBarTitle("Countries", displayMode: .inline)
               }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
