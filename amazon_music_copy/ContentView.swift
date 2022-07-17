//
//  ContentView.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ImageWithTextItem()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { metrics in
            VStack {
                ImageOfRoundedCorners(
                    imagePath: Images.niziu.name,
                    cornerRadius: 20
                ).frame(
                    width: metrics.size.width * 0.4,
                    height: metrics.size.width * 0.4
                )
            }
        }
    }
}
