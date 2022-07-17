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
}

struct UserResponce: Codable {
    let name: String
    let description: String
}

