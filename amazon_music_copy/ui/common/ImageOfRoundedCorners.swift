//
//  ImageOfRoundedCorners.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import SwiftUI

struct ImageOfRoundedCorners : View {
    private let imagePath: String
    private let cornerRadius: CGFloat
    
    init (
        imagePath: String,
        cornerRadius: CGFloat
    ) {
        self.imagePath = imagePath
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        Image(imagePath)
            .cornerRadius(cornerRadius)
    }
}
