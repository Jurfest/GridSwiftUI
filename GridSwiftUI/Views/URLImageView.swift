//
//  URLImageView.swift
//  GridSwiftUI
//
//  Created by Diego Jurfest Ceccon on 13/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import SwiftUI

struct URLImageView: View {
    let url: String
    @ObservedObject private var imageLoader: ImageLoader = ImageLoader()
    
    init(url: String) {
        self.url = url
        self.imageLoader.downloadImage(url: url)
    }
    
    var body: some View {
        if let imageData = self.imageLoader.downloadedData {
            let img = UIImage(data: imageData)
            return VStack {
                Image(uiImage: img!)
                    .resizable()
                    
            }
        } else {
            return VStack {
                Image("placeholder").resizable()
            }
        }
    }
}

struct URLImageView_Previews: PreviewProvider {
    static var previews: some View {
        URLImageView(url: "https://m.media-amazon.com/images/M/MV5BZmUwNGU2ZmItMmRiNC00MjhlLTg5YWUtODMyNzkxODYzMmZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg")
    }
}
