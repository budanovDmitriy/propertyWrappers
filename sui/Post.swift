//
//  Post.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import Foundation

struct Post: Hashable {
    static func == (lhs: Post, rhs: Post) -> Bool {
        return lhs.title == rhs.title && lhs.body == rhs.body && lhs.info == rhs.info && lhs.extra == rhs.extra
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(body)
        hasher.combine(info)
        hasher.combine(extra)
    }
    
    @Trimmed var title: String
    @Spaced var body: String
    @Uppercased var info: String
    @Logged var extra: String
}
