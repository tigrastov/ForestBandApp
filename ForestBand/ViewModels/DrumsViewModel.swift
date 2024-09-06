
import AVFoundation
import Foundation

class DrumsViewModel: ObservableObject{
    
   public func play1(){
        Player.shared.playSound(name: "Kick(drums)")
        Player.shared.player?.play()
    }
   public func play2(){
        Player.shared.playSound(name: "Snare(drums)")
        Player.shared.player?.play()
    }
    public func play3(){
        Player.shared.playSound(name: "H-H(drums)")
        Player.shared.player?.play()
    }
  public func play4(){
        Player.shared.playSound(name: "H-HOpen(drums)")
        Player.shared.player?.play()
    }
   public func play5(){
        Player.shared.playSound(name: "Crash(drums)")
        Player.shared.player?.play()
    }
   public func stop(){
        Player.shared.player?.stop()
    }
    
    
}
