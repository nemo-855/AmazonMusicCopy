//
//  HomeScreen.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import SwiftUI

struct HomeScreen : View {
    @ObservedObject var store: HomeScreenStore
    private let actionCreator: ActionCreator
    
    init() {
        store = HomeScreenStore.shared
        actionCreator = ActionCreator()
    }
    
    var body: some View {
        GeometryReader { metrics in
            VStack(
                alignment: .leading,
                spacing: Dimentions.marginLarge
            ) {
                TitleItem()
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(store.articles) { article in
                            ImageWithTextItem(article: article)
                                .frame(
                                    width: metrics.size.width * 0.4,
                                    height: metrics.size.width * 0.5
                                )
                        }
                    }
                }
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .leading
            )
            .padding(.leading, Dimentions.marginMedium)
            .padding(.trailing, Dimentions.marginMedium)
            .onAppear {
                actionCreator.getArticles()
            }
        }
    }
}
