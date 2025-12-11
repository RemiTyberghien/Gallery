//
//  GalleryDetailView.swift
//  Gallery
//
//  Created by Remi.Tyberghien on 09/12/2025.
//

import SwiftUI

struct GalleryDetailView: View {
    @Environment(GalleryDataStore.self) var galleryDataStore
    @Environment(PathStore.self) var pathStore
    var gallery : Gallery?
    var body: some View {
        @Bindable var pathStore = pathStore
        if let gallery = gallery
        {
            
            
            NavigationStack(path: $pathStore.route)
            {
                Text(gallery.name)
                Text(gallery.location)
                Text(gallery.website)
                
                List(galleryDataStore.getAllArtists(gallery: gallery, ), id: \.self ) { artist in
                    NavigationLink(value: Route.artist(artist)) {
                        VStack{
                            Text(artist.name)
                            Text(artist.nationality)
                        }
                    }
                }
                .navigationTitle("artists")
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case let .artist(artist):
                        ArtistView(artist: artist)
                    case let .artwork(artwork ,artist):
                        ArtworkView(artwork: artwork , artist: artist)
                        
                    }
                }
            }
        }
        else{
            Text("Kies een gallery")
        }
    }
}


