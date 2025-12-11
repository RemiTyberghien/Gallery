//
//  ArtistView.swift
//  Gallery
//
//  Created by Remi.Tyberghien on 11/12/2025.
//

import SwiftUI

struct ArtistView: View {
    var artist : Artist
    @Environment(GalleryDataStore.self) var galleryDataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        
        
        VStack{
            Text(artist.name)
            Divider()
            Text(artist.nationality)
            Text(artist.style)
            Text(artist.description)
            
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
