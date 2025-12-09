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
            Text(gallery.name)
            Text(gallery.location)
            Text(gallery.website)
            
            NavigationStack(path: $pathStore.route)
            {
                List(galleryDataStore.getAllArtists(gallery: gallery, ), id: \.self ) { artist in
                    NavigationLink(value: Route.artist(artist)) {
                        VStack{
                            Text(artist.name)
                            Text(artist.nationality)
                        }
                    }
                }.navigationTitle("artists")
                
            }
        }
        else{
            Text("Kies een gellery")
        }
    }
}


