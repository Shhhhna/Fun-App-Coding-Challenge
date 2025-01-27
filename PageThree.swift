//
//  PageThree.swift
//  KWKFunAppCodingChallenge
//
//  Created by Sena Hordoffa on 12/21/24.
//

import SwiftUI
import MapKit

struct PageThree: View {
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    
    @State private var searchLocations = ""
    
    @State private var results = [MKMapItem]()
    
    @State private var mapSelection: MKMapItem?
    
    @State private var showDetails = false
    
    @State private var getDirections = false
    
    @State private var routeDisplaying = false
    
    @State private var route: MKRoute?
    
    @State private var routeDestination: MKMapItem?
    
    
    
    
    var body: some View {
        
        
        ZStack {
            Image("kwkdarkbrownbackgroundcolor-app")
                .resizable()
                .ignoresSafeArea()
            
            
            ScrollView {
                Text("Places you can go to join a community or donate").font(Font.custom("Lexend-Bold", size: 40)).foregroundColor(Color.myColor).multilineTextAlignment(.leading)
                    .frame(width: 400, height: 300)
                    .position(x: 200, y: 100)
                
                Text("Interested in joining a Community Garden?:").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor2).multilineTextAlignment(.leading)
                    .frame(width: 400, height: 150)
                    .position(x: 160, y: 10)
                
                
                Text("1. Scroll down to the Map below \n2. Search for a community garden near you").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor).multilineTextAlignment(.leading)
                    .frame(width: 400, height: 300)
                    .position(x: 180, y: -64)
                
                
                Text("Interested in donating compost or food scraps?:").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor2).multilineTextAlignment(.leading)
                    .frame(width: 380, height: 300)
                    .position(x: 170, y: -200)
                
                Text("1. Go to the internet or an online search engine \n2. Search ''food scrap compost drop off, U.S. State'' \nFor example: food scrap compost drop off, Maryland").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor).multilineTextAlignment(.leading)
                    .frame(width: 350, height: 200)
                    .position(x: 185, y: -390)
                
                
                
                Map(position: $cameraPosition, selection: $mapSelection) {
                    Marker("My Location", systemImage: "paperplane", coordinate: .userLocation)
                        .tint(.blue)
                    
                    Annotation("My Location", coordinate: .userLocation) {
                        ZStack {
                            Circle()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.blue.opacity(0.25))
                            
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            
                            Circle()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.blue)
                            
                        } // the annotation Zstack ends here
                        
                    } // the actual annotation ends here though
                    
                    ForEach(results, id: \.self) { item in
                        if routeDisplaying {
                            if item == routeDestination {
                                let placemark = item.placemark
                                Marker(placemark.name ?? "", coordinate: placemark.coordinate)
                            }
                        } else {
                            let placemark = item.placemark
                            Marker(placemark.name ?? "", coordinate: placemark.coordinate)
                        }
                        
                    }
                    
                    
                    if let route {
                        MapPolyline(route.polyline)
                            .stroke(.blue, lineWidth: 6)
                        
                    }
                    
                } // the entire map (position: ) ends here
                
                .frame(width: 350, height: 400) // this is to make the map smaller
                
                .mapControls {
                    MapCompass()
                    MapUserLocationButton()
                    
                } // map contols ends here
                
                
                .overlay(alignment: .top) {
                    TextField("Search for a location here", text: $searchLocations)
                        .font(.subheadline)
                        .padding(12)
                        .background(.white)
                        .padding()
                        .shadow(radius: 10)
                    
                } // the overlay ends here
                
                .onSubmit(of: .text) {
                    Task { await searchPlaces() }
                    
                } // the onSubmit ends here
                
                .onChange(of: getDirections, { oldValue, newValue in
                    if newValue {
                        fetchRoute()
                        
                    }
                })
                
                
                .onChange(of: mapSelection, { oldValue, newValue in
                    showDetails = newValue != nil
                    
                })
                
                
                .sheet(isPresented: $showDetails, content: {
                    LocationDetailsView(mapSelection: $mapSelection,
                                        show: $showDetails,
                                        getDirections: $getDirections)
                    .presentationDetents([.height(340)])
                    .presentationBackgroundInteraction(.enabled(upThrough: .height(340)))
                    .presentationCornerRadius(12)
                    
                }) // last place i stopped. pick up here tomorrow. 20 min
                
                
                .position(x: 200, y: -200) // i added this here to move the map position around the screen
                
                
            } // the scroll view ends here
            
        } // the Zstack that puts the map inside or on top of the background color ends here
        
    } // the var vody ends here
    
} // the whole thing aka the struct view ends here

extension PageThree {
    func searchPlaces() async {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchLocations
        request.region = .userRegion
        
        let results = try? await MKLocalSearch(request: request).start()
        self.results = results?.mapItems ?? []
        
    }
    
    func fetchRoute() {
        if let mapSelection {
            let request = MKDirections.Request()
            request.source = MKMapItem(placemark: .init(coordinate: .userLocation))
            request.destination = mapSelection
            
            Task {
                let result = try? await MKDirections(request: request).calculate()
                route = result?.routes.first
                routeDestination = mapSelection
                
                withAnimation(.snappy) {
                    routeDisplaying = true
                    showDetails = false
                    
                    if let rect = route?.polyline.boundingMapRect, routeDisplaying {
                        cameraPosition = .rect(rect)
                        
                    }
                }
            }
        }
    }
}



extension CLLocationCoordinate2D {
    static var userLocation: CLLocationCoordinate2D {
        return .init(latitude: 38.7946, longitude: -106.5348)
    }
} // this focuses or shows only the united states location


extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .userLocation,
                     latitudinalMeters: 10000000,
                     longitudinalMeters: 10000000)
    }
}

#Preview {
    PageThree()
}
