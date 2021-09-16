//
//  CircleImageView.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 14/09/2021.
//

import SwiftUI

struct CircleImageView: View {
    var url: String
    var size: CGFloat
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: .secondary.opacity(0.2), radius: 8, x: 4, y: 4)
            Circle()
                .fill(Color.secondary)
                .frame(width: size-(size*10)/100, height: size-(size*10)/100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            Image(uiImage: url.load())
                .resizable()
                
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: size-(size*10)/100, height: size-(size*10)/100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
            
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(url: "wuevfbj", size: 350.0)
    }
}
