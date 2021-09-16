//
//  ParishMapIconModel.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 15/09/2021.
//

import Foundation
import CoreLocation

struct ParishMapIcon: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
