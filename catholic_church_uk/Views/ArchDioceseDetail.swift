//
//  ArchDioceseDetail.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 13/09/2021.
//

import SwiftUI



struct ArchDioceseDetail: View {
    var archdiocese: ArchDiocese
    
    var body: some View {
        
        ScrollView{
               
                
            ForEach(archdiocese.parishes, id: \.id) { parish in
                NavigationLink(destination: ParishDetailView(parish: parish)) {
                        HStack {
                            ZStack {
                                Rectangle()
                                    .fill(Color.secondary)
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(5)
                                Image(uiImage:parish.ParishPhoto.load())
                                    .resizable()
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(5)
                                    .shadow(color: .secondary.opacity(0.2), radius: 2, x: 2, y: 2)
                                    
                            }
                            VStack(alignment: .leading) {
                                Text(parish.ParishPlace)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text(parish.ParishName)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }
                            Spacer()
                        }.padding()
                        .contextMenu(
                            ContextMenu(menuItems: {
                                Text("Address")
                                Button(action: {}){
                                    Text(parish.address)
                                    Image(systemName: "checkmark.circle.fill")
                                }
                                
                                ForEach(parish.phone) {phone in
                                    Button(action: {}){
                                        Text(phone.phone)
                                        Image(systemName: "checkmark.circle.fill")
                                    }
                                }
                                Button(action: {}){
                                    Text(parish.address)
                                    Image(systemName: "checkmark.circle.fill")
                                }
                                Button(action: {}){
                                    Text(parish.address)
                                    Image(systemName: "checkmark.circle.fill")
                                }
                                
                            })
                        )
                        
                        
                    }
                
                    
                    Divider()
                }
            
        }.navigationTitle(archdiocese.archDioceseName)
    }
}

struct ArchDioceseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArchDioceseDetail(archdiocese: archDioceseList[0])
    }
}
