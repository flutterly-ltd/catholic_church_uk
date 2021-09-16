//
//  DioceseModel.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 15/09/2021.
//

import Foundation

struct Diocese: Identifiable{
    let id = UUID()
    let dioceseName: String
    let parishes:[Parish]
    
}
