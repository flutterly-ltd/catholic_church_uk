//
//  ParishModel.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 14/09/2021.
//

import Foundation
import CoreLocation

struct Parish: Identifiable{
    let id = UUID()
    let ParishName: String
    let ParishPlace: String
    let ParishPhoto: String
    let clergy:[ Clergy]
    let address: String
    let phone: [Phone]
    let email: String
    let website: String
    let deanery: String
    let holymass:[MassTime]
    let confession:[ConfessionTime]
    let schools: String
    let facilities: [Facility]
    let coordinates: CLLocationCoordinate2D
    
}
