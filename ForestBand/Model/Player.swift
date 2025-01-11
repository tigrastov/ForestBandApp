

import Foundation
import AVFoundation

class Player{
    static let shared = Player()
     private init() {}
     var player: AVAudioPlayer?
     func playSoundAll(name: String){
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3") else {return}
                do{
                    try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                    player?.play()
                } catch{
                    print(error.localizedDescription)
                }
    }
    func stopSound(){
        
             Player.shared.player?.stop()
         
    }
}


