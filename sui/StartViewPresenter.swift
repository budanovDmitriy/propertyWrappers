//
//  StartViewPresenter.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import SwiftUI

class StartViewPresenter: ObservableObject {
    weak var interactor: StartViewInteractor!
    
    @Published var postTitle = "Title"
    @Published var postBody = "body"
    @Published var postInfo = "info"
    @Published var postExtra = "extra"
    
    func setPost(_ newPost: Post) {
        postTitle = newPost.title
        postBody = newPost.body
        postExtra = newPost.extra
        postInfo = newPost.info
    }
}
