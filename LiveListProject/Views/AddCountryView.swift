//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by Carlos Ayala Medina on 24/05/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @State var cityName: String
    
    var body: some View {
        VStack{
            TextField("Add City Name", text: $cityName)
            Text(cityName)
        }
        .navigationBarTitle("Add new country")
       
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AddCountryView(cityName: "Country")
        }
    }
}
