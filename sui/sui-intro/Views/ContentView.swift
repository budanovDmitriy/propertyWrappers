//
//  ContentView.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    var startViewInteractor = StartViewInteractor()
    @ObservedObject var startViewPresenter = StartViewPresenter()
    
    var body: some View {
        
        startViewInteractor.presenter = startViewPresenter
        startViewPresenter.interactor = startViewInteractor
        
        return VStack {
            Text(startViewPresenter.postTitle)
            Text(startViewPresenter.postBody)
                .padding()
            Button("Tap me", action: {
                startViewInteractor.actonOnTapMeButton()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
