//
//  ArticleActionCreator.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation

final class ActionCreator {
    private let dispatcher: Dispatcher
    private let articleRequest: ArticleRequest
    
    init(
        dispatcher: Dispatcher = .shared,
        articleRequest: ArticleRequest = ArticleRequest.shared
    ) {
        self.dispatcher = dispatcher
        self.articleRequest = articleRequest
    }
}

extension ActionCreator {
    func getArticles() {
        dispatcher.dispatch(.isRepositoriesFetching(true))
        articleRequest.fetchArticles { [dispatcher] result in
            switch result {
            case let .success(articles):
                dispatcher.dispatch(.getArticles(articles))
            case let .failure(error):
                dispatcher.dispatch(.error(error))
            }
            dispatcher.dispatch(.isRepositoriesFetching(false))
        }
    }
}
