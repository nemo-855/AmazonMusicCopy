//
//  Store.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation

typealias Subscription = NSObjectProtocol

class Store: ObservableObject {
    private lazy var dispatchToken: DispatchToken = {
        return dispatcher.register(callback: { [weak self] action in
            self?.onDispatch(action)
        })
    }()

    private let dispatcher: Dispatcher

    deinit {
        dispatcher.unregister(dispatchToken)
    }

    init(dispatcher: Dispatcher) {
        self.dispatcher = dispatcher
        _ = dispatchToken
    }

    func onDispatch(_ action: Action) {
        fatalError("must override")
    }
}
