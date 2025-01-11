

import SwiftUI
let screen = UIScreen.main.bounds

@main
struct ForestBandApp: App {
    
    @State private var isLoading = true
  
    var body: some Scene {
        WindowGroup {
            
            if isLoading {
                LaunchView(isLoading: $isLoading)
            }else {
                SelectInstrView()
            }
            
            
            
            
        }
    }
}
