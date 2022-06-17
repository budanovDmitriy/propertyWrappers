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
    
    func setPost(_ newPost: Post) {
        postTitle = newPost.title
        postBody = newPost.body
    }
}
