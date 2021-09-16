//
//  ParishDetailView.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 14/09/2021.
//

import SwiftUI
import MapKit

struct ParishDetailView: View {
    var parish: Parish
    
    @State var region = MKCoordinateRegion()
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: parish.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    
    
    
    
    
    
    var body: some View {
        
        ScrollView {
            VStack{
                MapView(parish: parish)
                    .frame(minHeight: 300)
                
                CircleImageView(url: parish.ParishPhoto, size: 250.0).padding(.top, -125)
                
            }
            
            
            Group {
                
                ClergyView(parish: parish)
                
                
                Group {
                    AddressView(parish: parish)
                    
                    
                    PhoneView(parish: parish)
                    
                    
                    EmailView(parish: parish)
                    
                    
                    WebsiteView(parish: parish)
                    Divider()
                }
                
                DeaneryView(parish: parish)
                Divider()
                
                Group {
                    HolyMassView(parish: parish)
                    Divider()
                    
                    ConfessionView(parish: parish)
                    Divider()
                }
                
                FacilitiesView(parish: parish)
                Divider()
                
                
                
            }
            
        }.edgesIgnoringSafeArea(.all)
            .navigationTitle(parish.ParishName)
    }
}

struct ParishDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ParishDetailView(parish: archDioceseList[0].parishes[0])
    }
}

struct ClergyView: View {
    var parish: Parish
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            Text("Clergy")
                .font(.headline)
                .frame(alignment: .leading)
            ForEach(parish.clergy, id: \.id){
                clergy in
                Text(clergy.clergyName)
                    .font(.body)
                Divider()
            }
        }.frame( alignment: .leading)
            .padding()
        
        
    }
}

struct AddressView: View {
    var parish: Parish
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("Address")
                .font(.headline)
                .frame(alignment: .leading)
            Text(parish.address)
                .font(.body)
            Divider()
        }.frame( alignment: .leading)
            .padding()
        
        
    }
}

struct PhoneView: View {
    var parish: Parish
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("Phone")
                .font(.headline)
                .frame(alignment: .leading)
            ForEach(parish.phone, id: \.id) {phone in
                Text(phone.phone)
                    .font(.body)
                Divider()
            }
        }.frame( alignment: .leading)
            .padding()
        
        
    }
}

struct EmailView: View {
    var parish:Parish
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("Email Address")
                .font(.headline)
                .frame(alignment: .leading)
            Text(parish.email)
                .font(.body)
            Divider()
        }.frame( alignment: .leading)
            .padding()
        
        
    }
}

struct WebsiteView: View {
    var parish: Parish
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text("Website")
                    .font(.headline)
                    .frame(alignment: .leading)
                Text(parish.website)
                    .font(.body)
            }.frame( alignment: .leading)
                .padding()
            Spacer()
        }
    }
}

struct DeaneryView: View {
    var parish: Parish
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text("Deanery")
                    .font(.headline)
                    .frame(alignment: .leading)
                Text(parish.deanery)
                    .font(.body)
            }.frame( alignment: .leading)
                .padding()
            Spacer()
        }
    }
}

struct HolyMassView: View {
    var parish: Parish
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text("Holy Mass Timings")
                    .font(.headline)
                    .frame(alignment: .leading)
                ForEach(parish.holymass, id: \.id) {holymass in
                    VStack {
                        
                        HStack {
                            Text(holymass.day)
                                .font(.body)
                                .fontWeight(.light)
                            Spacer()
                            Text(holymass.time)
                                .font(.body)
                            
                        }
                        
                    }
                }
            }.frame( alignment: .leading)
                .padding()
            Spacer()
        }
    }
}

struct ConfessionView: View {
    var parish: Parish
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text("Confession Timings")
                    .font(.headline)
                    .frame(alignment: .leading)
                ForEach(parish.confession, id: \.id) {confession in
                    VStack {
                        
                        HStack {
                            Text(confession.day)
                                .font(.body)
                                .fontWeight(.light)
                            Spacer()
                            Text(confession.time)
                                .font(.body)
                            
                        }
                        
                    }
                }
            }.frame( alignment: .leading)
                .padding()
            Spacer()
        }
    }
}

struct FacilitiesView: View {
    var parish: Parish
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text("Facilities")
                    .font(.headline)
                    .frame(alignment: .leading)
                ForEach(parish.facilities, id: \.id) {facility in
                    Text(facility.facility)
                        .font(.body)
                }
            }.frame( alignment: .leading)
                .padding()
            Spacer()
        }
    }
}

