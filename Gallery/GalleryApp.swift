//
//  GalleryApp.swift
//  Gallery
//
//  Created by Remi.Tyberghien on 09/12/2025.
//

import SwiftUI

@main
struct GalleryApp: App {
    @State private var galleryDataStore = GalleryDataStore()
    @State private var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(galleryDataStore).environment(pathStore).task {
                await galleryDataStore.loadData()
            }
        }
    }
}
