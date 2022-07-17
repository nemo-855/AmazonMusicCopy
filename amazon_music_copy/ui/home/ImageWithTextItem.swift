//
//  ImageWithTextItem.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import SwiftUI

struct ImageWithTextItem : View {
    var body: some View {
        ImageOfRoundedCorners(
            imagePath: Images.niziu.name,
            cornerRadius: 20
        )
    }
}
