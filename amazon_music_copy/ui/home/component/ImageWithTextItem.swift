//
//  ImageWithTextItem.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import SwiftUI

struct ImageWithTextItem : View {
    private let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            ImageOfRoundedCorners(
                imageUrl: article.user.imageUrl,
                cornerRadius: Dimentions.mediumCornerRadius
            )
            MediumText(
                text: article.title
            ).lineLimit(1)
            SmallText(
                text: article.user.name,
                color: Color(Colors.gray.name)
            ).lineLimit(1)
        }
    }
}
