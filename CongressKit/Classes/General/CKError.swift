//
//  CKError.swift
//  CongressKit
//
//  Created by Justin Sharkey on 3/10/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public enum CKError: Error {
    case data
    case json
    
    var localizedDescription: String {
        switch self {
        case .data:
            return "Unable to unwrap data"
        case .json:
            return "Unable to decode json"
        }
    }
}
