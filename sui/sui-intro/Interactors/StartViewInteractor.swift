//
//  StartViewInteractor.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import Foundation

class StartViewInteractor {
    weak var presenter: StartViewPresenter!
    
    private var posts = [
        Post(title: "       Swift UI ", body: "           SUI introduction           "),
        Post(title: "Title 1         ", body: "                           BOdy 1     "),
        Post(title: "Title 2         ", body: "                           BOdy 2     "),
        Post(title: "Title 3         ", body: "                           BOdy 3     ")
    ]
    
    func actonOnTapMeButton() {
        
        presenter.setPost(posts.randomElement()!)
    }
}
