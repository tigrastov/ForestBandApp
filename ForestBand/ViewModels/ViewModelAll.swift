
import Foundation

class ViewModelAll: ObservableObject {
    
    public func play(name: String) {
        Player.shared.playSoundAll(name: name)
    }
    public func stop(){
        Player.shared.stopSound()
     }
}
    
