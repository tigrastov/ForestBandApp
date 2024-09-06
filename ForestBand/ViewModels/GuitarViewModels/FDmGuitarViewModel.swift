
import Foundation
import AVFoundation

class FDmGuitarViewModel: ObservableObject{
  
   public func play1(){
        Player.shared.playSound(name: "Dm")
        Player.shared.player?.play()
    }
   public func play2(){
        Player.shared.playSound(name: "A")
        Player.shared.player?.play()
    }
   public func play3(){
        Player.shared.playSound(name: "F")
        Player.shared.player?.play()
    }
   public func play4(){
        Player.shared.playSound(name: "Gm")
        Player.shared.player?.play()
    }
   public func play5(){
        Player.shared.playSound(name: "Am")
        Player.shared.player?.play()
    }
   public func play6(){
        Player.shared.playSound(name: "Hb")
        Player.shared.player?.play()
    }
   public func play7(){
        Player.shared.playSound(name: "C")
        Player.shared.player?.play()
    }
   public func play8(){
        Player.shared.playSound(name: "G")
        Player.shared.player?.play()
    }
   public func stop(){
        Player.shared.player?.stop()
    }
}
