//
//  ImageOfRoundedCorners.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import SwiftUI

struct ImageOfRoundedCorners : View {
    private let imageUrl: String
    private let cornerRadius: CGFloat
    
    init (
        imageUrl: String,
        cornerRadius: CGFloat
    ) {
        self.imageUrl = imageUrl
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .aspectRatio(1/1, contentMode: .fill)
            } else {
                Image(Images.niziu.name)
                    .resizable()
                    .aspectRatio(1/1, contentMode: .fill)
            }
        }
        .cornerRadius(cornerRadius)
    }
}
