//
//  NetworkImageLoader.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 14/09/2021.
//

import Foundation
import SwiftUI

extension String {
    func load()-> UIImage{
        
        //try catch block
        do{
            //convert string to url
            guard let url = URL(string: self) else{
               //returns empty image if the url is invalid
                return UIImage()
            }
            
            //convert url to data
            
            let data:Data = try
            Data(contentsOf: url)
            
            //create uiimage object from data
            return UIImage(data: data) ??  UIImage()
        }catch{
            
        }
        return UIImage()
    }
}
