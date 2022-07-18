//
//  APIError.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import Alamofire

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case unknown(Error)
}

extension APIError {
    var title: String {
        switch self {
            case .invalidResponse: return "無効なレスポンスです。"
            case .invalidURL: return "無効なURLです。"
            case .unknown(let error): return "予期せぬエラーが発生しました。\(error)"
        }
    }
}
