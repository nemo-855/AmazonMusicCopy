//
//  ArticleRequest.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import Alamofire

final class ArticleRequest {
    static let shared = ArticleRequest()
    func fetchArticles(handler: @escaping ResultHandler<[Article]>) {
        let urlString = BaseUrl.v2 + "/items"
        if URL(string: urlString) == nil {
            handler(.failure(.invalidURL))
            return
        }
        
        AF.request(urlString, method: .get).responseData { response in
            guard let data = response.data else {
                handler(.failure(.invalidResponse))
                return
            }
            do {
                let articles = try JSONDecoder().decode([FetchArticleResponce].self, from: data)
                handler(.success(articles.map { article in
                    article.toArticle()
                }))
            } catch {
                handler(.failure(.unknown(error)))
            }
        }
    }
}
