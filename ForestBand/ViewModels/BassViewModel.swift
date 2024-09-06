

import AVFoundation

import Foundation

class BassViewModel:ObservableObject{
    
   public func play1(){
         Player.shared.playSound(name: "A(bass)")
         Player.shared.player?.play()
    }
   public func play2(){
        Player.shared.playSound(name: "Ab(bass)")
        Player.shared.player?.play()
    }
   public func play3(){
        Player.shared.playSound(name: "G(bass)")
        Player.shared.player?.play()
    }
   public func play4(){
        Player.shared.playSound(name: "F#(bass)")
        Player.shared.player?.play()
    }
   public func play5(){
        Player.shared.playSound(name: "F(bass)")
        Player.shared.player?.play()
    }
   public func play6(){
        Player.shared.playSound(name: "E(bass)")
        Player.shared.player?.play()
    }
   public func play7(){
        Player.shared.playSound(name: "Hb(bass)")
        Player.shared.player?.play()
    }
   public func play8(){
        Player.shared.playSound(name: "H(bass)")
        Player.shared.player?.play()
    }
   public func play9(){
        Player.shared.playSound(name: "C(bass)")
        Player.shared.player?.play()
    }
    func play10(){
        Player.shared.playSound(name: "C#(bass)")
        Player.shared.player?.play()
    }
   public func play11(){
        Player.shared.playSound(name: "D(bass)")
        Player.shared.player?.play()
    }
   public func play12(){
        Player.shared.playSound(name: "Eb(bass)")
        Player.shared.player?.play()
    }
   public func stop(){
        Player.shared.player?.stop()
    }
}

