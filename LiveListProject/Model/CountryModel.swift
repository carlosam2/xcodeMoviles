//
//  CountryModel.swift
//  LiveListProject
//
//  Created by Carlos Ayala Medina on 11/05/21.
//

import Foundation

struct CountryModel: Identifiable, Hashable {
    var id: UUID
    var name: String
    var population: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
