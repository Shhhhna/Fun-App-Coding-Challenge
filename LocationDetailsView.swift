//
//  LocationDetailsView.swift
//  KWKFunAppCodingChallenge
//
//  Created by Sena Hordoffa on 12/27/24.
//

import SwiftUI
import MapKit

struct LocationDetailsView: View {
    @Binding var mapSelection: MKMapItem?
    
    @Binding var show: Bool
    
    @State private var lookAroundScene: MKLookAroundScene?
    
    @Binding var getDirections: Bool
    
    
    var body: some View {
        
        VStack { // this is where the huge entire Vstack starts
            HStack {
                VStack (alignment: .leading){
                    Text(mapSelection?.placemark.name ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(mapSelection?.placemark.title ?? "")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .lineLimit(2)
                        .padding(.trailing)
                    
                } // the smaller inside Vstack ends here
                
                Spacer()
                
                Button {
                    show.toggle()
                    mapSelection = nil
                    
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.gray, Color(.systemGray6))
                    
                }
            } // the first small Hstack ends here
            
            .padding(.horizontal)
            .padding(.top)
            
            
            if let scene = lookAroundScene {
                LookAroundPreview(initialScene: scene)
                    .frame(height: 200)
                    .cornerRadius(12)
                    .padding()
                
            } else {
                ContentUnavailableView("No preview available", systemImage: "eye.slash")
                
            }
            
            HStack(spacing: 24) {
                Button {
                    if let mapSelection {
                        mapSelection.openInMaps()
                        
                    }
                } label: {
                    Text("Open in Maps")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 170, height: 48)
                        .background(.green)
                        .cornerRadius(12)
                    
                }
                
                
                Button {
                    getDirections = true
                    show = false
                    
                } label: {
                    Text("Get Directions")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 170, height: 48)
                        .background(.blue)
                        .cornerRadius(12)
                    
                }
                
            } // the second small Hstack ends here
            .padding(.horizontal)
            // pick up hereee today!!
            
        } // the huge entire Vstack ends here
        
        .onAppear {
            fetchLookAroundPreview()
            
        }
        
        .onChange(of: mapSelection) { oldValue, newValue in
            fetchLookAroundPreview()
            
        }
        .padding()
        
    }
}
// i finsihed this. pick up at 17:45 min. go back to page three to finish the rest now


extension LocationDetailsView {
    func fetchLookAroundPreview() {
        if let mapSelection {
            lookAroundScene = nil
            Task {
                let request = MKLookAroundSceneRequest(mapItem: mapSelection)
                lookAroundScene = try? await request.scene
                
            }
        }
    }
}


#Preview {
    LocationDetailsView(mapSelection: .constant(nil), show: .constant(false), getDirections: .constant(false))
}
