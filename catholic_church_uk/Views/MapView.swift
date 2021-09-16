//
//  MapView.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 15/09/2021.
//

import SwiftUI
import MapKit



struct MapView: View {
    
    var parish: Parish
   
    @State var region = MKCoordinateRegion()
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: parish.coordinates,
                span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
            )
        }
    
    @State var tracking:MapUserTrackingMode = .follow
    var body: some View {
        Map(coordinateRegion: $region,
            interactionModes: MapInteractionModes.all,
            showsUserLocation: true,
           
            
            userTrackingMode: $tracking,
            
            annotationItems: [ParishMapIcon(name: parish.ParishName, coordinate: parish.coordinates)]){
            MapMarker(coordinate: $0.coordinate)
        }
                    .onAppear {
                        setRegion(parish.coordinates)
                    }
                    .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(parish: archDioceseList[0].parishes[0])
    }
}
