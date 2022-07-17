//
//  HomeScreenStore.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation

final class HomeScreenStore : Store {
    static let shared = HomeScreenStore(dispatcher: .shared)
    @Published var articles = [Article]()
    
    override func onDispatch(_ action: Action) {
        switch action {
        case .getArticles(let articles):
            self.articles = articles
        default:
            return
        }
    }
}
