import SwiftUI

struct ContentView: View {
    @Environment(GalleryDataStore.self) var galleryDataStore
    @State private var gallery: Gallery?

    var body: some View {
        TabView {
            Tab("List Galleries", systemImage: "square.and.arrow.up.circle") {
                GalleriesView(gallery: $gallery)
            }

            Tab(gallery?.name ?? "Gallery Detail", systemImage: "square.and.arrow.up") {
                GalleryDetailView(gallery: gallery)
            }
        }
        .padding()
    }
}

