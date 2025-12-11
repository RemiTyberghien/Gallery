//
//  ArtworkView.swift
//  Gallery
//
//  Created by Remi.Tyberghien on 11/12/2025.
//

import SwiftUI

struct ArtworkView: View {
    let artwork : Artwork
    let artist: Artist
    @Environment(GalleryDataStore.self) var galleryDataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        VStack()
        {
            Text(artwork.title).foregroundStyle(.yellow)
            Divider().foregroundStyle(.yellow)
            Text(artwork.medium)
            Text(artwork.dimensions)
            Text(artwork.description)
            Divider().foregroundStyle(.yellow)
            
            Spacer()
            
            List(galleryDataStore.getAllArtworksByArtist(artist: artist), id: \.self ) { artwork in
                NavigationLink(value: Route.artwork(artwork, artist)) {
                    VStack{
                        Text(artwork.title)
                        Text(artwork.description)
                    }
                }
            }
        }
            
            
            
        
        
        
    }
    
    
    
}
