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
    var body: some Scene {
        WindowGroup {
            ContentView().environment(galleryDataStore).task {
                await galleryDataStore.loadData()
            }
        }
    }
}
