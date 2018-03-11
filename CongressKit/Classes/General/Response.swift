//
//  Response.swift
//  CongressKit
//
//  Created by Justin Sharkey on 3/10/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public enum Response<T> {
    case success(T)
    case failure(Error)
    
    internal func successful() -> Bool {
        switch self {
        case .success:
            return true
        case .failure:
            return false
        }
    }
}
