//
//  HomeScreen.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import SwiftUI

struct HomeScreen : View {
    var body: some View {
        GeometryReader { metrics in
            VStack {
                ImageWithTextItem()
                    .frame(
                        width: metrics.size.width * 0.4,
                        height: metrics.size.width * 0.5
                    )
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .leading
            )
        }
    }
}
