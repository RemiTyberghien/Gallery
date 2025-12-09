//
//  GalleryDetailView.swift
//  Gallery
//
//  Created by Remi.Tyberghien on 09/12/2025.
//

import SwiftUI

struct GalleryDetailView: View {
    @Environment(GalleryDataStore.self) var galleryDataStore
    var gallery : Gallery?
    var body: some View {
        if let gallery = gallery
        {
            Text(gallery.name)
            Text(gallery.location)
            Text(gallery.website)
        }
        else{
            Text("Kies een gellery")
        }
    }
}


