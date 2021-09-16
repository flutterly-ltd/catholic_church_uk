//
//  ParishDirectory.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 16/09/2021.
//

import SwiftUI

struct ParishDirectory: View {
    var body: some View {
        NavigationView {
            List{
                
                Section.init {
                    Text("Archdiocese")
                        .font(.title)
                    ForEach(archDioceseList, id: \.id) {archDiocese in
                        NavigationLink(destination: ArchDioceseDetail(archdiocese: archDiocese)) {
                            Text(archDiocese.archDioceseName)
                        }
                    }
                }
                
                Text("Diocese")
                    .font(.title)
                ForEach(archDioceseList, id: \.id) {archDiocese in
                    NavigationLink(destination: ArchDioceseDetail(archdiocese: archDiocese)) {
                        Text(archDiocese.archDioceseName)
                    }
                }
            }.navigationTitle("Parish Directory")
        }
    }
}

struct ParishDirectory_Previews: PreviewProvider {
    static var previews: some View {
        ParishDirectory()
    }
}
