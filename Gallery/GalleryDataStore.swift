//
//  GalleryDataStore.swift
//  Gallery
//
//  Created by Remi.Tyberghien on 09/12/2025.
//

import Foundation

@Observable
class GalleryDataStore {
    
    private var galleries : [Gallery]
    
    init() {
        galleries = []
    }
    
    
    func getAllGalleries() -> [Gallery]
    {
        return galleries
    }
    
    func getAllArtists(gallery : Gallery) -> [Artist]
    {
        let galleries = galleries.filter{gallerij in gallerij.name == gallery.name}
        let allArtists = galleries.flatMap {$0.artists}
        return allArtists
    }
    
    func loadData() async {
        //simulate async call
        do {
            print("⏳ Simulating 2-second load delay...")
            try await Task.sleep(for: .seconds(2))
            
            let data: Galleries = load("galleries.json")
            galleries = data.galleries
            
            
            print("✅ Data loaded successfully.")
            
        } catch {
            print("❌ Failed to load movies:", error)
        }
    }
}
