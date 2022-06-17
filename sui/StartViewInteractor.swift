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
        Post(title: "       Swift UI  \r    dsafdfs fsdf    sdf ", body: "           SUI introduction           ", info: "fdfwe. fewf. wefwe.." ,extra: "dsa"),
        Post(title: "       Swift UI  \r    dsafdfs fsdf    sdf ", body: "           SUI introduction           ", info:"fdfwe. fewf. wefwe.." ,extra: "das"),
        Post(title: "       Swift UI  \r    dsafdfs..... fsdf    sdf ", body: "           SUI introduction           ", info:"fdfwe. fewf. wefwe.." ,extra: "asd"),
        Post(title: "       Swift UI  \r    dsafdfs fsdf    sdf ", body: "           SUI introduction           ", info: "fdfwe. fewf. wefwe.." ,extra: "asd")   ]
    
    func actonOnTapMeButton() {
        
        presenter.setPost(posts.randomElement()!)
    }
}
