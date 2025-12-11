import SwiftUI

struct GalleriesView: View {
    @Environment(GalleryDataStore.self) var galleryDataStore
    @Binding var gallery: Gallery?

    var body: some View {
        List(galleryDataStore.getAllGalleries(), id: \.self, selection: $gallery) { item in
            
            VStack{
                Text(item.name)
                Text(item.location)
                Text(item.description)
                Divider()
            }
               
            
            
        }
    }
}

