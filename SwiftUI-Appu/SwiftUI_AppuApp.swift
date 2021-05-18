//
//  SwiftUI_AppuApp.swift
//  SwiftUI-Appu
//
//  Created by Mohammed Audhil S on 18/04/21.
//

import SwiftUI

@main
struct SwiftUI_AppuApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red] //  changes whole navigation view title color, all through the app
    }
    
    var body: some Scene {
        WindowGroup {
            //            ContentView()
            //            LoginView()
            ScreenNavView()
        }
    }
}
