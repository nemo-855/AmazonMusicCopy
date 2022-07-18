//
//  FetchArticlesResponce.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation

struct FetchArticleResponce: Codable {
    let id: String
    let url: String
    let title: String
    let user: UserResponce
    
    func toArticle() -> Article {
        return Article(
            id: id,
            url: url,
            title: title,
            user: user.toUser()
        )
    }
}

struct UserResponce: Codable {
    let name: String
    let description: String?
    let profileImageUrl: String
    
    func toUser() -> User {
        return User(
            name: name,
            description: description,
            imageUrl: profileImageUrl
        )
    }
}

