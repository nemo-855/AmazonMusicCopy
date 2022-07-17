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
        VStack(alignment: HorizontalAlignment.leading) {
            ImageOfRoundedCorners(
                imagePath: Images.niziu.name,
                cornerRadius: Dimentions.mediumCornerRadius
            )
            MediumText(
                text: "2022年上半期 Best"
            ).lineLimit(1)
            SmallText(
                text: "Aimer, 優里, Ado 他にもいっぱい！",
                color: Color(Colors.gray.name)
            ).lineLimit(1)
        }
    }
}
