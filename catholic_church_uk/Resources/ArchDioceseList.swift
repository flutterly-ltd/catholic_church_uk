//
//  ArchDioceseList.swift
//  catholic_church_uk
//
//  Created by Anoop Jose on 13/09/2021.
//

import Foundation
import CoreLocation





struct Clergy: Identifiable{
    let id = UUID()
    let clergyName: String
}

struct Phone: Identifiable{
    let id = UUID()
    let phone: String
}

struct MassTime: Identifiable{
    let id = UUID()
    let day: String
    let time: String
}





var archDioceseList = [
    ArchDiocese(archDioceseName: "Archdiocese of Birmingham",
                parishes: [
                    Parish(
                        ParishName: "St Benedict",
                        ParishPlace: "Atherstone",
                        ParishPhoto: "https://www.birminghamdiocese.org.uk/handlers/getimage.ashx?idmf=0d4e44e5-a6ae-4132-aaf2-768691a11014&w=1600&h=785&f=1",
                        clergy: [
                            Clergy(clergyName: "Rev Fr Paul Lomas")
                                ],
                        address: "Owen Street, Atherstone, Warwickshire, CV9 1DG",
                        phone: [
                            Phone(phone: "01827 736286")
                                ],
                        email: "stbenedict.atherstone@rcaob.org.uk",
                        website: "www.saintbenedictsrcatherstone.com",
                        deanery: "Rugby",
                        holymass: [
                            MassTime(day: "Sunday Masses", time: "9.30 am"),
                            MassTime(day: "Saturday Vigil Mass", time: "4pm"),
                            MassTime(day: "Holyday Masses", time: "(Vigil 7pm), 10am")
                                ],
                        confession: [
                            ConfessionTime(day: "Saturday", time: "11.30am - 12noon")
                                ],
                        schools: "St Benedict's, Church Walk, Atherstone, CV9 1PS",
                        facilities: [
                            Facility(facility: "Disabled access"),
                            Facility(facility: "Loop system installed")
                        ], coordinates: CLLocationCoordinate2D(latitude: 52.57513, longitude: -1.54669)
                    ),
                    Parish(ParishName: "St Patrick's", ParishPlace: "Packmoor", ParishPhoto: "https://www.birminghamdiocese.org.uk/handlers/getimage.ashx?idmf=0f0bc8c1-fd9a-4a36-8137-1453ddd58b25&w=1600&h=785&f=1", clergy: [Clergy(clergyName: "Rev Fr Julian Green")], address: "Mellor Street, Packmoor, Stoke on Trent, ST7 4SN", phone: [Phone(phone: "01782 782121")], email: "OLG.parishes@rcaob.org.uk", website: "www.partnershipparishes.org", deanery: "North Staffordshire", holymass: [MassTime(day: "Sunday", time: "6pm"), MassTime(day: "Holiday Mass", time: "6:30 pm (Vigil)")], confession: [ConfessionTime(day: "Sunday", time: "")], schools: "", facilities: [Facility(facility: "")], coordinates: CLLocationCoordinate2D(latitude: 53.08812, longitude: -2.19776)),
                    Parish(ParishName: "St John the Baptist", ParishPlace: "Spetchley", ParishPhoto: " ", clergy: [Clergy(clergyName: " ")], address: "Spetchley Park, Spetchley, Worcester, WR5 1RS", phone: [], email: " ", website: "catholicworcester-spetchley.btck.co.uk ", deanery: "Worcester", holymass: [], confession: [], schools: " ", facilities: [], coordinates: CLLocationCoordinate2D(latitude: 52.18394, longitude: -2.15328))
        
    ]),
//    ArchDiocese(archDioceseName: "Archdiocese of Cardiff"),
//    ArchDiocese(archDioceseName: "Archdiocese of Liverpool"),
//    ArchDiocese(archDioceseName: "Archdiocese of Southwark"),
//    ArchDiocese(archDioceseName: "Archdiocese of Westminster")
]
