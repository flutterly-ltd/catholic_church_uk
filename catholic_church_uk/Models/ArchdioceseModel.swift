//
//  ArchdioceseModel.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 14/09/2021.
//

import Foundation

struct ArchDiocese: Identifiable{
    let id = UUID()
    let archDioceseName: String
    let parishes:[Parish]
    
}
