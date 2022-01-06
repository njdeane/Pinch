//
//  PageModel.swift
//  Pinch
//
//  Created by Nic Deane on 6/1/2022.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbName: String {
        return "thumb-" + imageName
    }
}
