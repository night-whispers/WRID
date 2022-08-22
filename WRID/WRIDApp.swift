//
//  WRIDApp.swift
//  WRID
//
//  Created by Minjun Kim on 8/22/22.
//

import SwiftUI

let signInConfig = GIDConfiguration(clientID: "293486480223-bmiskmamortuaeoo83mkfg8fuh7crelf.apps.googleusercontent.com")

@main
struct WRID: App {
    
  var body: some Scene {
      
    WindowGroup {
      ContentView()
        // ...
        .onAppear {
          GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
            // Check if `user` exists; otherwise, do something with `error`
          }
        }
    }
  }
}

