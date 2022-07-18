//
//  Action.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation

enum Action {
    case getArticles([Article])
    case isRepositoriesFetching(Bool)
    case error(Error?)
}
