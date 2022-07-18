//
//  ResultHandler.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import Alamofire

typealias ResultHandler<T> = (Result<T, APIError>) -> Void
